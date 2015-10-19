package edu.osu.cse5234.model;

public class Item {

	public String name;
	public String quantity;
	public String price;
	
	public Item(){
		this("default", "0");
	}
	public Item(String name){
		this(name,"0");
	}
	
	public Item(String name, String quantity){
		this(name,"0", "0");
	}
	public Item(String name, String quantity, String price){
		this.name = name;
		this.quantity = quantity;
		this.price = "$" + price;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
}
