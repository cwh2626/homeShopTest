package kr.com.shop.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.com.shop.util.FileService;


@Controller
@RequestMapping("product")
public class ProductController {
	
	//주의할점 윈도우의 경우 절대경로를 지정시에 C,D드라이브가 있어서 그냥 복붙하면 되지만 
	//맥의 경우는 전체경로 중 /Users부터 시작으로 한다 주의!!!
	final String fileDir = "/Users/jounghui/Desktop/springTestTest/homeShopTest/src/main/webapp/resources/ckeditor/images/"; //ckeditor의 이미지 저장위

	
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

	

}
