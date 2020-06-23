package kr.com.shop.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DecimalFormat;
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

import kr.com.shop.dao.MemberDAO;
import kr.com.shop.dao.ProductDAO;
import kr.com.shop.util.FileService;
import kr.com.shop.util.PageNavigator;
import kr.com.shop.vo.Lineitem;
import kr.com.shop.vo.Member;
import kr.com.shop.vo.Orders;
import kr.com.shop.vo.Product;
import kr.com.shop.vo.ProductOption;


@Controller
@RequestMapping("product")
public class ProductController {
	
	@Autowired
	ProductDAO pdao;
	
	@Autowired
	MemberDAO mdao;
	
	//주의할점 윈도우의 경우 절대경로를 지정시에 C,D드라이브가 있어서 그냥 복붙하면 되지만 
	//맥의 경우는 전체경로 중 /Users부터 시작으로 한다 주의!!!
	final String fileDir = "/Users/jounghui/Desktop/springTestTest/homeShopTest/src/main/webapp/resources/ckeditor/images/"; //ckeditor의 이미지 저장위
	final String memberFileDir = "/Users/jounghui/Desktop/springTestTest/homeShopTest/src/main/webapp/resources/member/";
	
	//이것은 메타데이터 서버의 경로를 이용한것인지 속도가 매우 빠르다 하지만 겉으로 들어나지않기에 툴에서 바로바로 파일저장상태를 보기가 힘들며 이미 위의 방식을 토대로 모든것을 코딩했기에 아 벙법은 다음에 사용해보도록하자.
	//final String fileDir = this.getClass().getResource("../../../../../../").getPath() +"resources/ckeditor/images/"; 

	//페이지 기준 갯수
	static final int countPerPage = 6; 
	static final int pagePerGroup = 3;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	
	/**
	 * 상품리스트 페이지
	 * @param model 상품리스트와 pageNavi값을 담아서 view로 전달
	 * @param page 페이지위치
	 * @param sel 리스트나타내는 방법 (구현 x 준비중)
	 * @return
	 */
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
	
	
	/**
	 * 상품상세페이지
	 * - 상품리스트페이지에서 상품선택 시에 발동
	 * @param pd productSeq를 전달받음
	 * @param model 상품정보를 받아서 view로 전달
	 * @return
	 */
	@RequestMapping(value ="infoProduct", method = RequestMethod.GET)
	public String infoProduct(Product pd, Model model) {
		
		logger.debug("inpo : {}",pd.toString());
		ArrayList<ProductOption> pdo = null; //상품선택 옵션값을 담을리스트
		ArrayList<String> photoList = new ArrayList<String>();  // 상품사진을 담을 리스트
		pd =pdao.getProductinpo(pd); // 전달받은 productSeq로 상품전체 정보를 받아옮
		logger.debug("inpo2 : {}",pd.toString());
		
		// 받아온 상품정보에서 사진의 유무체크후 사진리스트에 값을 담는다
		photoList.add(pd.getProductFirstPhotoName());
		if(pd.getProductSubPhoto1Name() != null) {
			photoList.add(pd.getProductSubPhoto1Name());
		}
		if(pd.getProductSubPhoto2Name() != null) {
			photoList.add(pd.getProductSubPhoto2Name());
		}
		if(pd.getProductSubPhoto3Name() != null) {
			photoList.add(pd.getProductSubPhoto3Name());
		}
		if(pd.getProductSubPhoto4Name() != null) {
			photoList.add(pd.getProductSubPhoto4Name());
		}
		
		// 받아온 상품정보에서 상품의 판매방법을 확인하여 view에 보낼 값을 정한다.
		if(pd.getSalesMethod() != 0) {
			
			// selectNum오름차순으로 값을 받아온다
			pdo = pdao.getPrductOptioninpo(pd.getproductSeq()); 
			
			model.addAttribute("productOptionInpo", pdo);
			logger.debug("pdo {}", pdo.toString());
			
		}
		model.addAttribute("productInpo", pd);
		model.addAttribute("photoList", photoList);
		
		return "product/infoProduct";
	}
	
	/**
	 * 상품등록 페이지 접근
	 * @param request 테스트용
	 * @return
	 */
	@RequestMapping(value ="insertSaleMain", method = RequestMethod.GET)
	public String insertSaleMain( HttpServletRequest request) {

		/* 경로 테스트
		String r = this.getClass().getResource("../../../../../../").getPath();  
		String r2 = this.getClass().getResource("").getPath(); // 현 클래스의 절대주소
		String path = new File("").getAbsolutePath(); // 현 클랫의 절대주소라고하는데 원하는답이 안나
		String pa = request.getSession().getServletContext().getRealPath("/"); // HttpServlet을 이용한 경로찾기

		logger.debug("Working Directory ===>{}" ,r);
		logger.debug("22Working Directory ===>{}" ,pa);
		logger.debug("33Working Directory ===>{}" ,r2);
		*/
		return "product/insertProduct";
	}
	
	/**
	 * 상품결제페이지
	 * 
	 * @param po 상품옵션값을 리스트로 받아옴
	 * @param productSeq 상품의 고유번호
	 * @param model 값을담아 view로전달
	 * @param singleSupply 단품의 수량 
	 * @return
	 */
	@RequestMapping(value ="paymentProduct", method = RequestMethod.POST)
	public String paymentProduct(ProductOption po, int productSeq, Model model
			,@RequestParam(value="singleSupply" ,defaultValue="0")int singleSupply) {
		
		// 값을 원하는형태로 replace 해주는 함수
		DecimalFormat fomatter = new DecimalFormat("###,###");
		
		
		ArrayList<ProductOption> result = new ArrayList<ProductOption>(); // 상품옵션을 담아줄 리스트
		logger.debug("prodcutSeq : {}", productSeq);
		Product pd = pdao.getSeqProductInfo(productSeq); // productSeq로 해당상품의 전체정보를 받아옴
		Member mb = mdao.emailAllInformation(pd.getEmail()); // 판매자의 이메일을 이용해 해당 판매자의 정보를 가져옴
		
		logger.debug("singleSupply: {}, pd : ===> {}", singleSupply, pd.toString());
		
		// 확실한 방법은 상품정보에서 selectMethod를 이용해서 단품의유무를 체크하는것이 좋지만
		// 그냥 단품의 수량으로 유무를 체크했다.
		if(singleSupply != 0) { // 단품일 경우
	
			int total = pd.getProductPrice() * singleSupply; // 상품 총가격
			String mony = fomatter.format(total); // 총가격을 내가원하는 형탤로 바꾸어서 담는다
			model.addAttribute("productInfo", pd);
			model.addAttribute("memberNickname", mb.getNickname()); // 판매자 정보를 가져온 이유는 닉네임을 알기위함이였음
			model.addAttribute("singleSupply", singleSupply);
			model.addAttribute("monySum", mony);

		}else { // 단품이 아닐경우
			
			for(ProductOption res : po.getList()) { 
				logger.debug("seleNum : {} , Volume : {}", res.getSelectNum(), res.getVolume());
				
				// ProductOption은 list로 값을 받아서 온다 그렇기에 foreach를 하면 list는 존재유무가아닌 순서를 중요시하기에 리스트값이 list[1] -> list[3]을 받아도 list[2]도 걸처서 확인한다.
				// 그래서 비어있는 리스트는 default 0값이 들어가는것을 확인하고 0일경우 continue해버렸다.
				if(res.getSelectNum() == 0) continue;
				
				ProductOption fr = null;
				
				// 해당 ProdcutOption을 찾기위해서 seq와 selectNum을 이용했다.
				fr = pdao.getSelProductOption(productSeq,res.getSelectNum());
				
				//  (해당옶션수량) * (해당옵션추가가격 + 상품의단가)
				int sum = res.getVolume() * (fr.getAdditionalAmount()+pd.getProductPrice());
				
				
				fr.setVolume(res.getVolume()); // 수량 
				fr.setMoneySum(fomatter.format(sum)); // 총가격
				result.add(fr); // 리스트에 담기  
				logger.debug("resultRes : {} ",fr.toString()); 
			}
			model.addAttribute("productInfo", pd);
			model.addAttribute("productOptionInfo", result);
			model.addAttribute("memberNickname", mb.getNickname());
		}
		return "product/paymentProduct";
	}
	
	/**
	 * 상품결제
	 * 
	 * @param od 주문정보
	 * @param li 상품정보들
	 * @param rpDetailAddress 수령자주소
	 * @param byDetailAddress 구매자주소
	 * @param session 현재 로그인맴버의 정보를 가져오기위함
	 * @return
	 */
	@RequestMapping(value ="paymentOrders", method = RequestMethod.POST)
	public String paymentOrders(Orders od, Lineitem li, @RequestParam(value="recipientDetailAddress", defaultValue="") String rpDetailAddress
								,@RequestParam(value="buyerDetailAddress", defaultValue="") String byDetailAddress, HttpSession session ) {
		
		// 현재로그인맴버 정보
		Member mb = (Member)session.getAttribute("login"); 
		
		// 수령자 상세주소유무
		if(!rpDetailAddress.equals("")) od.setRecipientAddress(od.getRecipientAddress()+" , "+rpDetailAddress);
		
		// 구매자 상세주소유무
		if(!byDetailAddress.equals("")) od.setBuyerAddress(od.getBuyerAddress()+" , "+byDetailAddress);

		od.setBuyerEmail(mb.getEmail()); // 구매자 이메일담기
		int orderResult = pdao.orderWrite(od); // 주문하기
		
		if(orderResult == 1) { // 주문성공일 경우
		 
	     // 가장최근의 주문데이터를 가져옴(구매자이메일과 제품고유번호로 정보를 찾아온다)
		 od = pdao.getRecentOrder(od); 
		 
		 logger.debug("odrecent ::: {}", od.toString());
		 
		 // 상품정보들을 데이터베이스에 저장
		 for(Lineitem res : li.getList()) { 
			 res.setOrderSeq(od.getOrderSeq());
			 logger.debug("listTostring : ===> {}", res.toString());
			 int itemResult = pdao.insertItmeWrite(res);
			 
		 }
		}
		logger.debug("orders  :  ======> {}", od.toString());
		
		
		// 현재 결제완료페이지 준비중
		return "redirect:/";
	}
	

	/**
	 * 상품등록
	 * 
	 * @param product 상품정보
	 * @param po 상품옵션정보
	 * @param productFirstPhoto 상품대표사진
	 * @param productSubPhoto1  서브사진
	 * @param productSubPhoto2  //
	 * @param productSubPhoto3  //
	 * @param productSubPhoto4  //
	 * @param session 로그인맴버정보 가져오기위함
	 * @return
	 */
	@RequestMapping(value ="insertSaleWrite", method = RequestMethod.POST)
	public String insertSaleWrite(Product product,ProductOption po, MultipartFile productFirstPhoto, MultipartFile productSubPhoto1
												, MultipartFile productSubPhoto2 , MultipartFile productSubPhoto3
												, MultipartFile productSubPhoto4, HttpSession session) { 
		logger.debug(product.toString());
		logger.debug("첫번째 파일 : {}, 두번쨰 파일 : {}, 세번쨰 파일 : {}, 네번쨰 파일 : {}, 다섯번째 파일 : {}"
				,productFirstPhoto.getOriginalFilename(), productSubPhoto1.getOriginalFilename()
				,productSubPhoto2.getOriginalFilename(), productSubPhoto3.getOriginalFilename()
				,productSubPhoto4.getOriginalFilename());
		
		Member member = (Member)session.getAttribute("login"); // 로그인맴버
		String savedfile = null;
		String savedTxtFile = null;
		String memberPhotoFileDir = memberFileDir + member.getEmail() +"/photo"; // 해당맴버의 사진저장소
		String memberExamplePhotoFileDir = memberFileDir + member.getEmail() +"/examplePhoto"; // 해당맴버의 예시사진저장소
		String memberDescriptionFileDir = memberFileDir + member.getEmail() +"/description"; // 해당맴버의 스크립트저장소
		
		product.setEmail(member.getEmail());
		
		// 받아온 코드스크립트를 jsp파일로 저장
		savedTxtFile = FileService.saveJspFile(product.getProductDescription(), memberDescriptionFileDir);
		
		if(savedTxtFile != null) {
			
			// 저장한 코드스크립트jsp의 파일이름을 상품클래스에 담기
			product.setProductDescription(savedTxtFile);
		}
		
		if(!productFirstPhoto.isEmpty()) {
			
			// 대표사진을 저장하고 파일이름을 상품클래스에 담기
			savedfile =FileService.saveFile(productFirstPhoto,memberPhotoFileDir);
			product.setProductFirstPhotoName(savedfile);
		}
		
		if(!productSubPhoto1.isEmpty()) {
			
			// 서브사진을 저장하고 파일이름을 상품클래스에 담기
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
		
		
		
		int result = pdao.insertSaleWrite(product); // 상품정보를 db에 저장
		
		
		if(result ==1) { // 저장성공
			
			if(product.getSalesMethod() !=0) { // 상품이 단품이 아닐경우
				
				Product resultPd =pdao.selectSaleinpo(product); // 저장한 상품의 고유번호를 가져오기위함
				
				for(ProductOption pol : po.getList()) {
					
					// 상품옵션을 db에 저장
					pdao.insertSaleProductOption(pol,resultPd.getproductSeq());
					  
					//logger.debug("list {}  {}", pol.getOptionName(),pol.getAdditionalAmount()); 
					
				}
				
			}
			
			// 등록성공하면 미리보기사진을 전부 삭제
			FileService.deleteFileList(memberExamplePhotoFileDir);
			return "redirect:/";
			
		}else {
			return "redirect:/product/insertSaleMain";

		}
	}
	
	/**
	 * ckeditor 사진업로드 기능
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
            
            // getRequestURL() : 현재 전체 주소!! http://localhost:8888/shop/product/insertSaleMain
            // getRequestURI() : http://localhost:8888 이 부분을 제외한 현재주소
            String fileUrl = request.getRequestURL().toString().replace(request.getRequestURI(),"/shop/product/") + "ckImgSubmit.do?fileName=" + savedfile+"&email=" + member.getEmail();  // 작성화면
            

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
                    
                	// (byte[] b, int off, int len)
                    // 지정된 바이트 배열의 오프셋(offset) 위치 off로 부터 시작되는 len 바이트를, 바이트 배열 출력 스트림에 출력합니다.
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
    
    /**
     * 상품등록페이지에서 사진등록 미리보기 사진
     * @param imgSrc 사진파일
     * @param session 로그인맴버 정보를 가져오기위함
     * @return
     */
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
			
			// 해당멤버의 예시사진저장소에 사진을 저장하고 해당파일의 경로의값을 return한다
			savedfile =FileService.saveFile(imgSrc,memberFileDir + member.getEmail() +"/examplePhoto/");
			result = member.getEmail() +"/examplePhoto/" + savedfile;
//			board.setOriginalfile(upload.getOriginalFilename());
//			board.setSavedfile(savedfile);
		}
		return result;
	}
	
	/**
	 * 상품등록페이지에서 사진등록 미리보기 사진이 서버에 올라왔는지 확인
	 * (하면서 알게된 사실은 서버에 직접사진을 올리는방법을 알게되었다.
	 *  하지만 이미 이코드를 토대로 코딩을 했기에 그 방법은 나중에..)
	 * @param imgSrcCheck 미리보기사진파일 경로와이름
	 * @return
	 */
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
	 
	/**
	 * 미리보기사진 삭제
	 * @param imgSrc
	 * @param session
	 * @return
	 */
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
