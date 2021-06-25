package categorycontroller;

public class Categories {

	private int CategoryId;
	private String CategoryName;
	public Categories()
	{
		
	}
	public Categories(int Id,String Name)
	{
		this.CategoryId=Id;
		this.CategoryName=Name;
	}
	 public String getCategoryName() {
	        return CategoryName;
	    }
	 public int  getCategoryId() {
	        return CategoryId;
	    }
	 
	    public void setCategoryName(String CategoryName) {
	        this.CategoryName = CategoryName;
	    }
	    public void setCategoryId(int CategoryId) {
	        this.CategoryId = CategoryId;
	    }
}
