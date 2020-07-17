package Beans;



import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Category implements  Serializable{
	
	/**
	 * 
	 */
	public Category() {
		super();
	}
	/**
	 * @param type
	 */
	public Category(String type) {
		super();
		this.type = type;
	}
	/**
	 * @param id_category
	 * @param type
	 */
	public Category(int id_category, String type) {
		super();
		Id_category = id_category;
		this.type = type;
	}

	private int Id_category;
    private String type;
    
    public int getId_category() {
		return Id_category;
	}
  
	public void setId_category(int id_category) {
		Id_category = id_category;
	}
   
	public String getType() {
		return type;
	}
  
	public void setType(String type) {
		this.type = type;
	}
}
