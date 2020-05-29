package kr.com.shop.vo;

import java.util.List;

public class ProductOption {
	String optionName;
	Integer additionalAmount;
	int selectNum;
	List<ProductOption> list;
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public Integer getAdditionalAmount() {
		return additionalAmount;
	}
	public void setAdditionalAmount(Integer additionalAmount) {
		this.additionalAmount = additionalAmount;
	}
	public int getSelectNum() {
		return selectNum;
	}
	public void setSelectNum(int selectNum) {
		this.selectNum = selectNum;
	}
	public List<ProductOption> getList() {
		return list;
	}
	public void setList(List<ProductOption> list) {
		this.list = list;
	}
	
	
	
	
	
	
}
