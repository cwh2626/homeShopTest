package kr.com.shop.vo;

public class Product {
	String category, productName, productPrice, prodcutDescription, deliveryMethod
 		,productFirstPhotoName, productSubPhoto1Name, productSubPhoto2Name, productSubPhoto3Name, productSubPhoto4Name;

	public Product(){
		
	}
	
	 
	public Product(String category, String productName, String productPrice, String prodcutDescription,
			String deliveryMethod, String productFirstPhotoName, String productSubPhoto1Name, String productSubPhoto2Name,
			String productSubPhoto3Name, String productSubPhoto4Name) {
		super();
		this.category = category;
		this.productName = productName;
		this.productPrice = productPrice;
		this.prodcutDescription = prodcutDescription;
		this.deliveryMethod = deliveryMethod;
		this.productFirstPhotoName = productFirstPhotoName;
		this.productSubPhoto1Name = productSubPhoto1Name;
		this.productSubPhoto2Name = productSubPhoto2Name;
		this.productSubPhoto3Name = productSubPhoto3Name;
		this.productSubPhoto4Name = productSubPhoto4Name;
	}
	
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getProductPrice() {
		return productPrice;
	}
	
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	
	public String getProdcutDescription() {
		return prodcutDescription;
	}
	
	public void setProdcutDescription(String prodcutDescription) {
		this.prodcutDescription = prodcutDescription;
	}
	
	public String getDeliveryMethod() {
		return deliveryMethod;
	}
	
	public void setDeliveryMethod(String deliveryMethod) {
		this.deliveryMethod = deliveryMethod;
	}
	
	public String getProductFirstPhotoName() {
		return productFirstPhotoName;
	}
	
	public void setProductFirstPhotoName(String productFirstPhotoName) {
		this.productFirstPhotoName = productFirstPhotoName;
	}
	
	public String getProductSubPhoto1Name() {
		return productSubPhoto1Name;
	}
	
	public void setProductSubPhoto1Name(String productSubPhoto1Name) {
		this.productSubPhoto1Name = productSubPhoto1Name;
	}
	
	public String getProductSubPhoto2Name() {
		return productSubPhoto2Name;
	}
	
	public void setProductSubPhoto2Name(String productSubPhoto2Name) {
		this.productSubPhoto2Name = productSubPhoto2Name;
	}
	
	public String getProductSubPhoto3Name() {
		return productSubPhoto3Name;
	}
	
	public void setProductSubPhoto3Name(String productSubPhoto3Name) {
		this.productSubPhoto3Name = productSubPhoto3Name;
	}
	
	public String getProductSubPhoto4Name() {
		return productSubPhoto4Name;
	}
	
	public void setProductSubPhoto4Name(String productSubPhoto4Name) {
		this.productSubPhoto4Name = productSubPhoto4Name;
	}


	@Override
	public String toString() {
		return "Product [category=" + category + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", prodcutDescription=" + prodcutDescription + ", deliveryMethod=" + deliveryMethod
				+ ", productFirstPhotoName=" + productFirstPhotoName + ", productSubPhoto1Name=" + productSubPhoto1Name
				+ ", productSubPhoto2Name=" + productSubPhoto2Name + ", productSubPhoto3Name=" + productSubPhoto3Name
				+ ", productSubPhoto4Name=" + productSubPhoto4Name + "]";
	}
	 
 
}
