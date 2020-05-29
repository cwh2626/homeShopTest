package kr.com.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.com.shop.vo.Product;
import kr.com.shop.vo.ProductOption;

@Repository
public class ProductDAO {
	@Autowired
	SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductDAO.class);

	public int insertSaleWrite(Product product) {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		
		int result = mapper.insertSaleWrite(product);
		
		return result;
	}
	
	public int getTotal(String sel) {
		
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		
		int result = mapper.getTotal(sel);
		
		return result;
	}
	
	public ArrayList<Product> getProductList(String sel, int start, int count) {
		ArrayList<Product> result = null;
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);

		//전체 검색 결과 중 읽을 시작 위치와 개수 시작은 0부터 시작 RowBounds는 인터페이스까지만 가져가면 제기능을 다한다  
		//마이바티스 기능으로 sql결과를 순서대로  지정한 갯수대로 나온다
		RowBounds row = new RowBounds(start, count);
		result = mapper.getProductList(sel,row);
		return result;
		
	}
	
	public Product selectSaleinpo(Product product) {
		
		Product result =null;
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		
		result = mapper.selectSaleinpo(product);
		
		return result;
	}
	
	public int insertSaleProductOption(ProductOption po, int ProductSeq) {
		HashMap<String, Object> map = new HashMap<>();
		logger.debug("들어왔다");

		if(po.getOptionName().length() == 0 || po.getOptionName() == null) {
			po.setOptionName("unknown");
		}
		
		map.put("additionalAmount", po.getAdditionalAmount());
		map.put("optionName", po.getOptionName());
		map.put("selectNum", po.getSelectNum());
		map.put("productSeq", ProductSeq); 
		logger.debug("들어왔다1 oit {}",po.getOptionName());

		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		
		int result = mapper.insertSaleProductOption(map);
		
		return result;
	}

}
