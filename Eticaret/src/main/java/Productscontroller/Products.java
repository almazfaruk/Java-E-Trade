package Productscontroller;

public class Products {
	public Products()
	{
	
	}
	public Products(int productId, String productName, int categoryId, int piece, float price, String description,
			String imageFolder, boolean editing) {
		super();
		ProductId = productId;
		ProductName = productName;
		CategoryId = categoryId;
		Piece = piece;
		Price = price;
		Description = description;
		İmageFolder = imageFolder;
		Editing = editing;
	}
	private int ProductId;
	private String ProductName;

	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public int getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
	public int getPiece() {
		return Piece;
	}
	public void setPiece(int piece) {
		Piece = piece;
	}
	public float getPrice() {
		return Price;
	}
	public void setPrice(float price) {
		Price = price;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getİmageFolder() {
		return İmageFolder;
	}
	public void setİmageFolder(String imageFolder) {
		İmageFolder = imageFolder;
	}
	public boolean isEditing() {
		return Editing;
	}
	public void setEditing(boolean editing) {
		Editing = editing;
	}
	private int CategoryId;
	private int Piece;
	private float Price;
	private String Description;
	private String İmageFolder;
	private boolean Editing;
}
