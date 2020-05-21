package kr.com.shop.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.com.shop.dao.ProductDAO;
import kr.com.shop.util.FileService;
import kr.com.shop.util.PageNavigator;
import kr.com.shop.vo.Member;
import kr.com.shop.vo.Product;


@Controller
@RequestMapping("product")
public class ProductController {
	
	@Autowired
	ProductDAO pdao;
	
	//주의할점 윈도우의 경우 절대경로를 지정시에 C,D드라이브가 있어서 그냥 복붙하면 되지만 
	//맥의 경우는 전체경로 중 /Users부터 시작으로 한다 주의!!!
	final String fileDir = "/Users/jounghui/Desktop/springTestTest/homeShopTest/src/main/webapp/resources/ckeditor/images/"; //ckeditor의 이미지 저장위
	final String memberFileDir = "/Users/jounghui/Desktop/springTestTest/homeShopTest/src/main/webapp/resources/member/";

	//페이지 기준 갯수
	static final int countPerPage = 6; 
	static final int pagePerGroup = 3;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@RequestMapping(value ="allListProduct", method = RequestMethod.GET)
	public String allListProduct(Model model
			, @RequestParam(value="page", defaultValue="1") int page
			,@RequestParam(value="sel", defaultValue="")String sel) {
		
		ArrayList<Product> productList =  null;
		
		int total = pdao.getTotal(sel); //전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total);
		// 페이지 구하는법 행은 0부터라고 생각하면 한페이지에 10개 보여주면은 총 9행까지 나타난다 그럼 다음 페이지에서는 10행 부터니깐 한페이지당 0,10,20 이런식으로 시작하겠죠
		//int start = (page - 1) * countPerPage;
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		productList = pdao.getProductList(sel,navi.getStartRecord(), navi.getCountPerPage());
		model.addAttribute("productList", productList);
		model.addAttribute("navi", navi);
		model.addAttribute("sel", sel);
		//bool= true;

		return "product/allListProduct";
	}
	
	@RequestMapping(value ="inpoProduct", method = RequestMethod.GET)
	public String inpoProduct() {  
		return "product/inpoProduct";
	}
	
	@RequestMapping(value ="insertSaleMain", method = RequestMethod.GET)
	public String insertSaleMain() { 
		return "product/insertProduct";
	}
	
	@RequestMapping(value ="insertSaleWrite", method = RequestMethod.POST)
	public String insertSaleWrite(Product product, MultipartFile productFirstPhoto, MultipartFile productSubPhoto1
												, MultipartFile productSubPhoto2 , MultipartFile productSubPhoto3
												, MultipartFile productSubPhoto4, HttpSession session) { 
		logger.debug(product.toString());
		logger.debug("첫번째 파일 : {}, 두번쨰 파일 : {}, 세번쨰 파일 : {}, 네번쨰 파일 : {}, 다섯번째 파일 : {}"
				,productFirstPhoto.getOriginalFilename(), productSubPhoto1.getOriginalFilename()
				,productSubPhoto2.getOriginalFilename(), productSubPhoto3.getOriginalFilename()
				,productSubPhoto4.getOriginalFilename());
		
		Member member = (Member)session.getAttribute("login");
		String savedfile = null;
		String savedTxtFile = null;
		String memberPhotoFileDir = memberFileDir + member.getEmail() +"/photo";
		String memberExamplePhotoFileDir = memberFileDir + member.getEmail() +"/examplePhoto";
		String memberDescriptionFileDir = memberFileDir + member.getEmail() +"/description";
		
		product.setEmail(member.getEmail());
		
		savedTxtFile = FileService.saveTxtFile(product.getProductDescription(), memberDescriptionFileDir);
		
		if(savedTxtFile != null) {
			product.setProductDescription(savedTxtFile);
		}
		
		if(!productFirstPhoto.isEmpty()) {
			savedfile =FileService.saveFile(productFirstPhoto,memberPhotoFileDir);
			product.setProductFirstPhotoName(savedfile);
		}
		
		if(!productSubPhoto1.isEmpty()) {
			savedfile =FileService.saveFile(productSubPhoto1,memberPhotoFileDir);
			product.setProductSubPhoto1Name(savedfile);
		}
		
		if(!productSubPhoto2.isEmpty()) {
			savedfile =FileService.saveFile(productSubPhoto2,memberPhotoFileDir);
			product.setProductSubPhoto2Name(savedfile);
		}
		
		if(!productSubPhoto3.isEmpty()) {
			savedfile =FileService.saveFile(productSubPhoto3,memberPhotoFileDir);
			product.setProductSubPhoto3Name(savedfile);
		}
		
		if(!productSubPhoto4.isEmpty()) {
			savedfile =FileService.saveFile(productSubPhoto4,memberPhotoFileDir);
			product.setProductSubPhoto4Name(savedfile);
		}

		int result = pdao.insertSaleWrite(product);
		
		if(result ==1) {
			// 등록성공하면 미리보기사진을 전부 삭제
			FileService.deleteFileList(memberExamplePhotoFileDir);
			return "redirect:/";
			
		}else {
			return "redirect:/product/insertSaleMain";

		}
	}
	
	/**
     * @param multiFile
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="imageUpload.do", method = RequestMethod.POST)
    public void imageUpload(HttpServletRequest request, HttpSession session,
            HttpServletResponse response, MultipartHttpServletRequest multiFile
            , @RequestParam MultipartFile upload) throws Exception{
        logger.debug("업로드");
        
        Member member = (Member)session.getAttribute("login");
        PrintWriter printWriter = null;
        String fileDirPullPath = memberFileDir + member.getEmail()+ "/ckImages/";
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
			savedfile =FileService.saveFile(upload,fileDirPullPath);
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
            String fileUrl = "ckImgSubmit.do?fileName=" + savedfile+"&email=" + member.getEmail();  // 작성화면
            
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
    public void ckSubmit(  @RequestParam(value="fileName") String fileName,@RequestParam(value="email") String email
    						,HttpServletRequest request, HttpServletResponse response)
                    		throws ServletException, IOException{
        logger.debug("업로드 이미지");

        //서버에 저장된 이미지 경로
        String path = memberFileDir;
    
        String sDirPath = path + email+ "/ckImages/" +fileName;
    
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
	@RequestMapping(value = "uploadExamplePhoto", method = RequestMethod.POST,
			produces = "application/json;charset=UTF-8") 
	public String uploadExamplePhoto(MultipartFile imgSrc, HttpSession session) {
		

		logger.debug(imgSrc.getOriginalFilename());	//파일이름
		logger.debug(imgSrc.getContentType());		//업로드한 파일의 종류
		logger.debug(""+imgSrc.getSize());			//파일 사이즈
		logger.debug(""+imgSrc.isEmpty());			//Empty와 비어있다라는 뜻이다 즉 저것이 true뜨면 파일이 비었다는 뜻이다  반대로 false면 파일이 잘들어갔다는 소리겠죠
        
		Member member = (Member)session.getAttribute("login");
		String result = null;
		String savedfile = null;
		if(!imgSrc.isEmpty()) {
			savedfile =FileService.saveFile(imgSrc,memberFileDir + member.getEmail() +"/examplePhoto/");
			result = member.getEmail() +"/examplePhoto/" + savedfile;
//			board.setOriginalfile(upload.getOriginalFilename());
//			board.setSavedfile(savedfile);
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "uploadExamplePhotoCheck", method = RequestMethod.POST,
			produces = "application/json;charset=UTF-8") 
	public String uploadExamplePhotoCheck(String imgSrcCheck) {
		String exampleUrl = "http://localhost:8888/shop/resources/member/"; //ckeditor의 이미지 저장위
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
	@RequestMapping(value = "examplePhotoDelete", method = RequestMethod.POST,
	produces = "application/json;charset=UTF-8") 
	public String examplePhotoDelete(String imgSrc, HttpSession session) {
		 Member member = (Member)session.getAttribute("login");
		 int lastIndex = imgSrc.lastIndexOf("/");
		 String imgName = imgSrc.substring(lastIndex + 1);
		 String fullpath = memberFileDir+ member.getEmail() + "/examplePhoto/" + imgName;
		 
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
