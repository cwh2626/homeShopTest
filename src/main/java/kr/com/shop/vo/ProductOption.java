package kr.com.shop.vo;

import java.util.List;

public class ProductOption {
 
	String optionName;
	Integer additionalAmount;
	int selectNum;
	int volume;
	String moneySum;
	List<ProductOption> list;
	
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
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
	
	
	public String getMoneySum() {
		return moneySum;
	}
	public void setMoneySum(String moneySum) {
		this.moneySum = moneySum;
	}
	@Override
	public String toString() {
		return "ProductOption [optionName=" + optionName + ", additionalAmount=" + additionalAmount + ", selectNum="
				+ selectNum + ", volume=" + volume + ", moneySum=" + moneySum + ", list=" + list + "]";
	}
	
	
	
	
	
	
}
