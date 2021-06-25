package Orderscontroller;

public class Orders {
		private int OrdersId;
		private int BasketId;
		private String OrdersNumber;
		private String OrdersDate;
		private Float TotalPrice;
		public Orders()
		{
			
		}
		public Orders(int ordersId, int basketId, String ordersNumber, String ordersDate, Float totalPrice) {
			super();
			OrdersId = ordersId;
			BasketId = basketId;
			OrdersNumber = ordersNumber;
			OrdersDate = ordersDate;
			TotalPrice = totalPrice;
		}
		public int getOrdersId() {
			return OrdersId;
		}
		public void setOrdersId(int ordersId) {
			OrdersId = ordersId;
		}
		public int getBasketId() {
			return BasketId;
		}
		public void setBasketId(int basketId) {
			BasketId = basketId;
		}
		public String getOrdersNumber() {
			return OrdersNumber;
		}
		public void setOrdersNumber(String ordersNumber) {
			OrdersNumber = ordersNumber;
		}
		public String getOrdersDate() {
			return OrdersDate;
		}
		public void setOrdersDate(String ordersDate) {
			OrdersDate = ordersDate;
		}
		public Float getTotalPrice() {
			return TotalPrice;
		}
		public void setTotalPrice(Float totalPrice) {
			TotalPrice = totalPrice;
		}
}
