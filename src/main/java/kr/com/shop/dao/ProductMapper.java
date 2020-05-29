package kr.com.shop.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import kr.com.shop.vo.Product;

public interface ProductMapper {
	
	public int insertSaleWrite(Product product);
	
	public int getTotal(String sel);
	
	//오호라 RowBounds 는 인터페이스 까지만 가지고오면 sql에서 안바꾸어도 가져올때 정한 갯수만큼 차례대로 가져온다고함 호호 신기방기
	public ArrayList<Product> getProductList(String sel, RowBounds row);
	
	public Product selectSaleinpo(Product product);

	public int insertSaleProductOption(HashMap<String, Object> map);



}
