package kr.com.shop.vo;

import java.util.List;

public class Lineitem {
	int lineitemSeq, orderSeq, quantity, unitprice, itemNum;
	List<Lineitem> list;
	
	public int getLineitemSeq() {
		return lineitemSeq;
	}
	public void setLineitemSeq(int lineitemSeq) {
		this.lineitemSeq = lineitemSeq;
	}
	public int getOrderSeq() {
		return orderSeq;
	}
	public void setOrderSeq(int orderSeq) {
		this.orderSeq = orderSeq;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(int unitprice) {
		this.unitprice = unitprice;
	}
	public int getItemNum() {
		return itemNum;
	}
	public void setItemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	public List<Lineitem> getList() {
		return list;
	}
	public void setList(List<Lineitem> list) {
		this.list = list;
	}
	
	@Override
	public String toString() {
		return "Lineitem [lineitemSeq=" + lineitemSeq + ", orderSeq=" + orderSeq + ", quantity=" + quantity
				+ ", unitprice=" + unitprice + ", itemNum=" + itemNum + ", list=" + list + "]";
	}
	
	

}
