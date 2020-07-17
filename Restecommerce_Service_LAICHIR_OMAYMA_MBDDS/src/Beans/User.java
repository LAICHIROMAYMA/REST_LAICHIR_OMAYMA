package Beans;
import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class User implements  Serializable{
	
	private int id;
	private int ref;
	private String Nom;
	private String email;
	private String password;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	/**
	 * 
	 */
	public User() {
		super();
	}
	/**
	 * @param ref
	 * @param nom
	 * @param email
	 * @param password
	 */
	public User(int ref, String nom, String email, String password) {
		super();
		ref = ref;
		Nom = nom;
		email = email;
		password = password;
	}

}
