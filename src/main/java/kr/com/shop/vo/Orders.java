package kr.com.shop.vo;

public class Orders {
	int orderSeq, productSeq, totalPrice;
	String recipientName, recipientPhonenum, recipientAddress, recipientMemo,
			buyerName, buyerPhonenum, buyerAddress, orderdate;

	public Orders(){
		
	}
	


	public Orders(int orderSeq, int productSeq, int totalPrice, String recipientName, String recipientPhonenum,
			String recipientAddress, String recipientMemo, String buyerName, String buyerPhonenum, String buyerAddress,
			String orderdate) {
		super();
		this.orderSeq = orderSeq;
		this.productSeq = productSeq;
		this.totalPrice = totalPrice;
		this.recipientName = recipientName;
		this.recipientPhonenum = recipientPhonenum;
		this.recipientAddress = recipientAddress;
		this.recipientMemo = recipientMemo;
		this.buyerName = buyerName;
		this.buyerPhonenum = buyerPhonenum;
		this.buyerAddress = buyerAddress;
		this.orderdate = orderdate;
	}



	public int getOrderSeq() {
		return orderSeq;
	}
	public void setOrderSeq(int orderSeq) {
		this.orderSeq = orderSeq;
	}
	public int getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(int productSeq) {
		this.productSeq = productSeq;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getRecipientName() {
		return recipientName;
	}
	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}
	public String getRecipientPhonenum() {
		return recipientPhonenum;
	}
	public void setRecipientPhonenum(String recipientPhonenum) {
		this.recipientPhonenum = recipientPhonenum;
	}
	public String getRecipientAddress() {
		return recipientAddress;
	}
	public void setRecipientAddress(String recipientAddress) {
		this.recipientAddress = recipientAddress;
	}
	public String getRecipientMemo() {
		return recipientMemo;
	}
	public void setRecipientMemo(String recipientMemo) {
		this.recipientMemo = recipientMemo;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public String getBuyerPhonenum() {
		return buyerPhonenum;
	}
	public void setBuyerPhonenum(String buyerPhonenum) {
		this.buyerPhonenum = buyerPhonenum;
	}
	public String getBuyerAddress() {
		return buyerAddress;
	}
	public void setBuyerAddress(String buyerAddress) {
		this.buyerAddress = buyerAddress;
	}

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}



	@Override
	public String toString() {
		return "Orders [orderSeq=" + orderSeq + ", productSeq=" + productSeq + ", totalPrice=" + totalPrice
				+ ", recipientName=" + recipientName + ", recipientPhonenum=" + recipientPhonenum
				+ ", recipientAddress=" + recipientAddress + ", recipientMemo=" + recipientMemo + ", buyerName="
				+ buyerName + ", buyerPhonenum=" + buyerPhonenum + ", buyerAddress=" + buyerAddress + ", orderdate="
				+ orderdate + "]";
	}
	
	
	
}
