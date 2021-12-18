package dto;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String productid;	//상품 아이디
	private String pname;		//상품명
	private Integer unitPrice; //상품 가격
	private String description; //상품 설명
	private String manufacturer;//제조사
	private String category; 	//분류 
	private String p_condition; //신상품 or 중고품 or 재생품
	private String p_condition_2; //신상품 or 중고품 or 재생품
	private String fileName; 	//이미지 파일명
	private int quantity;		 //장바구니에 담은 개수

	public Product() {
		super();
	}

	public Product(String productId, String pname, Integer unitPrice) {
		this.productid = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getP_condition() {
		return p_condition;
	}

	public void setP_condition(String p_condition) {
		this.p_condition = p_condition;
	}

	public String getP_condition_2() {
		return p_condition_2;
	}

	public void setP_condition_2(String p_condition_2) {
		this.p_condition_2 = p_condition_2;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	}

	