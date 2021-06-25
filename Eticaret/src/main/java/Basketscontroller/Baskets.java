package Basketscontroller;

public class Baskets {
	private int BasketId;
	private int UserId;
	public Baskets() 
	{
		
	}
	public Baskets(int basketId, int userId, int products_ProductId, int piece, boolean isBasketing) {
		super();
		BasketId = basketId;
		UserId = userId;
		Products_ProductId = products_ProductId;
		Piece = piece;
		IsBasketing = isBasketing;
	}
	public int getBasketId() {
		return BasketId;
	}
	public void setBasketId(int basketId) {
		BasketId = basketId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getProducts_ProductId() {
		return Products_ProductId;
	}
	public void setProducts_ProductId(int products_ProductId) {
		Products_ProductId = products_ProductId;
	}
	public int getPiece() {
		return Piece;
	}
	public void setPiece(int piece) {
		Piece = piece;
	}
	public boolean isIsBasketing() {
		return IsBasketing;
	}
	public void setIsBasketing(boolean isBasketing) {
		IsBasketing = isBasketing;
	}
	private int Products_ProductId;
	private int Piece;
	private boolean IsBasketing;
}
