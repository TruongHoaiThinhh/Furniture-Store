package CuaHangNoiThat.Dto;

public class CartDto {
	public int quanty;
	public double totalPrice;
	public ProductsDto product;
	
	
	public CartDto() {}
	
	public CartDto(int quanty, double totalPrice, ProductsDto product) {
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}
	
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductsDto getProduct() {
		return product;
	}
	public void setProduct(ProductsDto product) {
		this.product = product;
	}

}
