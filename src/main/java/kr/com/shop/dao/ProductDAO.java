package kr.com.shop.dao;

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

}
