package kr.com.shop.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.com.shop.util.FileService;


@Controller
@RequestMapping("product")
public class ProductController {
	
	//주의할점 윈도우의 경우 절대경로를 지정시에 C,D드라이브가 있어서 그냥 복붙하면 되지만 
	//맥의 경우는 전체경로 중 /Users부터 시작으로 한다 주의!!!
	final String fileDir = "/Users/jounghui/Desktop/springTestTest/homeShopTest/src/main/webapp/resources/ckeditor/images/"; //ckeditor의 이미지 저장위
	final String exampleFileDir = "/Users/jounghui/Desktop/springTestTest/homeShopTest/src/main/webapp/resources/product/mainImages/"; //ckeditor의 이미지 저장위

	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@RequestMapping(value ="insertSaleMain", method = RequestMethod.GET)
	public String insertSaleMain() { 
		return "product/insertProduct";
	}
	
	/**
     * @param multiFile
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="imageUpload.do", method = RequestMethod.POST)
    public void imageUpload(HttpServletRequest request,
            HttpServletResponse response, MultipartHttpServletRequest multiFile
            , @RequestParam MultipartFile upload) throws Exception{
        logger.debug("업로드");
        PrintWriter printWriter = null;
        
        //인코딩
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
    	logger.debug(upload.getOriginalFilename());	//파일이름
		logger.debug(upload.getContentType());		//업로드한 파일의 종류
		logger.debug(""+upload.getSize());			//파일 사이즈
		logger.debug(""+upload.isEmpty());			//Empty와 비어있다라는 뜻이다 즉 저것이 true뜨면 파일이 비었다는 뜻이다  반대로 false면 파일이 잘들어갔다는 소리겠죠
		logger.debug(request.getContextPath());			//현재위치
        
		String savedfile = null;
		if(!upload.isEmpty()) {
			savedfile =FileService.saveFile(upload,fileDir);
//			board.setOriginalfile(upload.getOriginalFilename());
//			board.setSavedfile(savedfile);
		}
		
		
        try{
            
            String callback = request.getParameter("CKEditorFuncNum");
            printWriter = response.getWriter();
            
            //ckeditor는 이미지업로드 url를 말그대로 url형식으로 보내야 하기 때문에 처음에는 서버안에 저장한 파일을 url를 보냈지만
            //업로드는 성고하였으나 미리보기에서 서버에올라가는 시간차로 인한 엑박이 뜨기 시작한다.
            //그래서 새로운 시도는 url형식으로 컨트롤에 값을 보내어 컨트롤러 내에서 서버가 아닌 로컬컴퓨터의 하드디스크를 직접파일을 접근하여 
            //보여주었더니 성공하였다.
            String fileUrl = "ckImgSubmit.do?fileName=" + savedfile;  // 작성화면
            
	  		printWriter.println(
				"<script>window.parent.CKEDITOR.tools.callFunction("
				+callback+",'"+fileUrl+"','이미지가 업로드되었습니다.')"
				+"</script>"
	        		);
	        printWriter.flush();	
            
        }catch(IOException e){
            e.printStackTrace();
        } finally {
          try {
           if(printWriter != null) { printWriter.close(); }
          } catch(Exception e) { e.printStackTrace(); }
         }
        
        return;
    }
    
    /**
     * cKeditor 서버로 전송된 이미지 뿌려주기
     * @param fileName
     * @param request
     * @return
     * @throws ServletException
     * @throws IOException
     */
    //
    @RequestMapping(value="ckImgSubmit.do")
    public void ckSubmit(  @RequestParam(value="fileName") String fileName
    						,HttpServletRequest request, HttpServletResponse response)
                    		throws ServletException, IOException{
        logger.debug("업로드 이미지");

        //서버에 저장된 이미지 경로
        String path = fileDir;
    
        String sDirPath = path + fileName;
    
        File imgFile = new File(sDirPath);
        
        //사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
        if(imgFile.isFile()){
            byte[] buf = new byte[1024];
            int readByte = 0;
            int length = 0;
            byte[] imgBuf = null;
            
            FileInputStream fileInputStream = null;
            ByteArrayOutputStream outputStream = null;
            ServletOutputStream out = null;
            
            try{
                fileInputStream = new FileInputStream(imgFile);
                outputStream = new ByteArrayOutputStream();
                out = response.getOutputStream();
                
                while((readByte = fileInputStream.read(buf)) != -1){
                    outputStream.write(buf, 0, readByte);
                }
                
                imgBuf = outputStream.toByteArray();
                length = imgBuf.length;
                out.write(imgBuf, 0, length);
                out.flush();
                
            }catch(IOException e){
                e.printStackTrace();
            }finally {
                outputStream.close();
                fileInputStream.close();
                out.close();
            }
        }
    }
    
	@ResponseBody
	@RequestMapping(value = "/uploadExamplePhoto", method = RequestMethod.POST,
			produces = "application/json;charset=UTF-8") 
	public String uploadExamplePhoto(MultipartFile imgSrc) {
		

		logger.debug(imgSrc.getOriginalFilename());	//파일이름
		logger.debug(imgSrc.getContentType());		//업로드한 파일의 종류
		logger.debug(""+imgSrc.getSize());			//파일 사이즈
		logger.debug(""+imgSrc.isEmpty());			//Empty와 비어있다라는 뜻이다 즉 저것이 true뜨면 파일이 비었다는 뜻이다  반대로 false면 파일이 잘들어갔다는 소리겠죠
        
		String savedfile = null;
		if(!imgSrc.isEmpty()) {
			savedfile =FileService.saveFile(imgSrc,exampleFileDir);
//			board.setOriginalfile(upload.getOriginalFilename());
//			board.setSavedfile(savedfile);
		}
		return savedfile;
	}
	
	@ResponseBody
	@RequestMapping(value = "/uploadExamplePhotoCheck", method = RequestMethod.POST,
			produces = "application/json;charset=UTF-8") 
	public String uploadExamplePhotoCheck(String imgSrcCheck) {
		String exampleUrl = "http://localhost:8888/shop/resources/product/mainImages/"; //ckeditor의 이미지 저장위
		String URLName = exampleUrl + imgSrcCheck;

	             try {
	                   
	                    // Sets whether HTTP redirects  (requests with response code 3xx)
	                    // should be automatically followed by this class.  True by default.
	                   // HttpURLConnection.setFollowRedirects(false);
	                   
	                    /** HTTP 요청 메소드 SET
	                     * https://javaplant.tistory.com/18
	                     * https://docs.oracle.com/javase/8/docs/api/java/net/HttpURLConnection.html 참고사이트
	                     * 본 예제는 파일의 존재여부만 확인하려니 간단히 HEAD 요청을 보냄
	                     * HEAD요청에 대해 웹서버는 수정된 시간이 포함된 리소스의 해더 정보를 간단히 리턴
	                  *  GET,POST,HEAD,OPTIONS,PUT,DELETE,TRACE 값등이 올 수 있다.
	                  * 디폴트는 GET
	                  **/                 
	                    HttpURLConnection con = (HttpURLConnection) new URL(URLName).openConnection();
	                    con.setRequestMethod("HEAD");
	                   
	                    //FILE이 있는 경우 HTTP_OK 200
	                    if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
	                           return "1"; //파일있음
	                    } else {
	                           return "2"; //파일없음
	                    }
	             } catch (Exception e) {
	                    e.printStackTrace();
	                    return "3"; //파일없음
	             }
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/examplePhotoDelete", method = RequestMethod.POST,
	produces = "application/json;charset=UTF-8") 
	public String examplePhotoDelete(String imgSrc) {
		 int lastIndex = imgSrc.lastIndexOf("/");
		 String imgName = imgSrc.substring(lastIndex + 1);
		 String fullpath = exampleFileDir + imgName;
		 
		 logger.debug("fullpath : {}", fullpath);
		 
		 boolean result = false;
		 result = FileService.deleteFile(fullpath);
		 
		 if(result) {
			 return "1";
			 
		 }else {
			 
			 return "2";
		 }
		
		
	}	

	

}
