package kr.com.shop.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

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
        // 랜덤 문자 생성
        UUID uid = UUID.randomUUID();
        logger.debug("업로드");
        OutputStream out = null;
        PrintWriter printWriter = null;
        
        //인코딩
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        
        try{
            
            //파일 이름 가져오기
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();
            
            //이미지 경로 생성
            String path = fileDir;// fileDir는 전역 변수라 그냥 이미지 경로 설정해주면 된다.
            String ckUploadPath = path + uid + "_" + fileName;
            File folder = new File(path);
            
            //해당 디렉토리 확인
            if(!folder.exists()){
                try{
                    folder.mkdirs(); // 폴더 생성
                }catch(Exception e){
                    e.getStackTrace();
                }
            }
            
            out = new FileOutputStream(new File(ckUploadPath));
            out.write(bytes);
            out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화
            
            String callback = request.getParameter("CKEditorFuncNum");
            printWriter = response.getWriter();
            String fileUrl = "ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;  // 작성화면
            
        // 업로드시 메시지 출력
//          printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
//          printWriter.flush();
          
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
           if(out != null) { out.close(); }
           if(printWriter != null) { printWriter.close(); }
          } catch(IOException e) { e.printStackTrace(); }
         }
        
        return;
    }
    
    /**
     * cKeditor 서버로 전송된 이미지 뿌려주기
     * @param uid
     * @param fileName
     * @param request
     * @return
     * @throws ServletException
     * @throws IOException
     */
    //
    @RequestMapping(value="ckImgSubmit.do")
    public void ckSubmit(@RequestParam(value="uid") String uid
                            , @RequestParam(value="fileName") String fileName
                            , HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException{
        logger.debug("업로드 이미지");

        //서버에 저장된 이미지 경로
        String path = fileDir;
    
        String sDirPath = path + uid + "_" + fileName;
    
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
