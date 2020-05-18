package kr.com.shop.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.com.shop.vo.Product;

@Repository
public class ProductDAO {
	@Autowired
	SqlSession sqlSession;
	
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

}
