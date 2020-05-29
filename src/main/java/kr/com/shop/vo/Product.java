package kr.com.shop.vo;

public class Product {
	String  email, productName, productDescription
 		,productFirstPhotoName, productSubPhoto1Name, productSubPhoto2Name, productSubPhoto3Name, productSubPhoto4Name;
	int productSeq,category, productPrice, deliveryMethod, salesMethod;
	
	public Product(){
		
	}
	
	
	public Product(String email, String productName, String productDescription, String productFirstPhotoName,
			String productSubPhoto1Name, String productSubPhoto2Name, String productSubPhoto3Name,
			String productSubPhoto4Name, int productSeq, int category, int productPrice, int deliveryMethod,
			int salesMethod) {
		super();
		this.email = email;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productFirstPhotoName = productFirstPhotoName;
		this.productSubPhoto1Name = productSubPhoto1Name;
		this.productSubPhoto2Name = productSubPhoto2Name;
		this.productSubPhoto3Name = productSubPhoto3Name;
		this.productSubPhoto4Name = productSubPhoto4Name;
		this.productSeq = productSeq;
		this.category = category;
		this.productPrice = productPrice;
		this.deliveryMethod = deliveryMethod;
		this.salesMethod = salesMethod;
	}


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
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
	public int getproductSeq() {
		return productSeq;
	}
	public void setproductSeq(int productSeq) {
		this.productSeq = productSeq;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getDeliveryMethod() {
		return deliveryMethod;
	}
	public void setDeliveryMethod(int deliveryMethod) {
		this.deliveryMethod = deliveryMethod;
	}
	public int getSalesMethod() {
		return salesMethod;
	}
	public void setSalesMethod(int salesMethod) {
		this.salesMethod = salesMethod;
	}
	@Override
	public String toString() {
		return "Product [email=" + email + ", productName=" + productName + ", productDescription=" + productDescription
				+ ", productFirstPhotoName=" + productFirstPhotoName + ", productSubPhoto1Name=" + productSubPhoto1Name
				+ ", productSubPhoto2Name=" + productSubPhoto2Name + ", productSubPhoto3Name=" + productSubPhoto3Name
				+ ", productSubPhoto4Name=" + productSubPhoto4Name + ", productSeq=" + productSeq + ", category="
				+ category + ", productPrice=" + productPrice + ", deliveryMethod=" + deliveryMethod + ", salesMethod="
				+ salesMethod + "]";
	}
	
	 
	




	 
 
}
