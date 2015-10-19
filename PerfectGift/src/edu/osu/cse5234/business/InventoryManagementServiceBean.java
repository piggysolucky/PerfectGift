package edu.osu.cse5234.business;

import java.util.List;

public class InventoryManagementServiceBean {
	
	public Inventory getAvailableItems(){
		
		Inventory inventory = new Inventory();
		List<Item> list = inventory.getItems();
		
		//Add the items in the inventory
		list.add(new Item("Rose"));
		list.add(new Item("Cake"));
		list.add(new Item("Pen"));
		
		return inventory;
	}
}
