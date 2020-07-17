package Beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;



@XmlRootElement
public class Book implements  Serializable{
	

	/**
	 * @param book_category
	 * @param autor_name
	 * @param book_name
	 * @param book_image
	 * @param book_Summary
	 * @param book_price
	 * @param book_Quantity
	 * @param books_availibility
	 */
	public Book(Category book_category, String autor_name, String book_name, String book_image, String book_Summary,
			Double book_price, int book_Quantity, String books_availibility) {
		super();
		Book_category = book_category;
		Autor_name = autor_name;
		Book_name = book_name;
		Book_image = book_image;
		Book_Summary = book_Summary;
		Book_price = book_price;
		Book_Quantity = book_Quantity;
		Books_availibility = books_availibility;
	}

	/**
	 * 
	 */
	public Book() {
		super();
	}

	/**
	 * @param book_id
	 * @param book_category
	 * @param autor_name
	 * @param book_name
	 * @param book_image
	 * @param book_Summary
	 * @param book_price
	 * @param book_Quantity
	 * @param books_availibility
	 */
	public Book(int book_id, Category book_category, String autor_name, String book_name, String book_image,
			String book_Summary, Double book_price, int book_Quantity, String books_availibility) {
		super();
		Book_id = book_id;
		Book_category = book_category;
		Autor_name = autor_name;
		Book_name = book_name;
		Book_image = book_image;
		Book_Summary = book_Summary;
		Book_price = book_price;
		Book_Quantity = book_Quantity;
		Books_availibility = books_availibility;
	}
	
	private int Book_id;
	private Category Book_category;
	private String Autor_name;
    private String Book_name;
    
    private String Book_image;
    private String Book_Summary;
    
    private Double Book_price;
   
    private int Book_Quantity;
    
    private String Books_availibility;
    
    
	public int getBook_id() {
		return Book_id;
	}

	public void setBook_id(int book_id) {
		Book_id = book_id;
	}

	public Category getBook_category() {
		return Book_category;
	}

	public void setBook_category(Category book_category) {
		Book_category = book_category;
	}

	public String getAutor_name() {
		return Autor_name;
	}

	public void setAutor_name(String autor_name) {
		Autor_name = autor_name;
	}

	public String getBook_name() {
		return Book_name;
	}

	public void setBook_name(String book_name) {
		Book_name = book_name;
	}

	public String getBook_image() {
		return Book_image;
	}

	public void setBook_image(String book_image) {
		Book_image = book_image;
	}

	public String getBook_Summary() {
		return Book_Summary;
	}

	public void setBook_Summary(String book_Summary) {
		Book_Summary = book_Summary;
	}

	public Double getBook_price() {
		return Book_price;
	}

	public void setBook_price(Double book_price) {
		Book_price = book_price;
	}

	public int getBook_Quantity() {
		return Book_Quantity;
	}

	public void setBook_Quantity(int book_Quantity) {
		Book_Quantity = book_Quantity;
	}

	public String getBooks_availibility() {
		return Books_availibility;
	}

	public void setBooks_availibility(String books_availibility) {
		Books_availibility = books_availibility;
	}
	

}
