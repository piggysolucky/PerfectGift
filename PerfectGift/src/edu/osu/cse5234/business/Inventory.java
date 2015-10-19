package edu.osu.cse5234.business;

import java.util.ArrayList;
import java.util.List;

public class Inventory {
	private List<Item> items = new ArrayList<>();

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> list) {
		this.items = list;
	}
	
}
