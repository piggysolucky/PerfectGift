package edu.osu.cse5234.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.osu.cse5234.business.Inventory;
import edu.osu.cse5234.business.InventoryManagementServiceBean;
import edu.osu.cse5234.business.Item;
import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.model.PaymentInfo;
import edu.osu.cse5234.model.ShippingInfo;

@Controller
@RequestMapping(path = "/purchase")
public class Purchase {
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String viewOrderEntryPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		InventoryManagementServiceBean inventoryManagementServiceBean = new InventoryManagementServiceBean();
		Inventory inventory = inventoryManagementServiceBean.getAvailableItems();
		Order order = new Order();
		List<Item> items = order.getItems();
		//initialize the items in the order
		for(int i = 0; i < 3; i++){
			items.add(new Item());
		}
		request.setAttribute("order", order);
		request.setAttribute("inventory", inventory);
		return "OrderEntryForm";
	}

	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public String viewsubmitItems(@ModelAttribute("inventory") Order order, HttpServletRequest request) {
		request.getSession().setAttribute("order", order);
		return "redirect:/purchase/paymentEntry";
	}
	
	@RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
	public String viewPaymentEntryPage(@ModelAttribute("payment")PaymentInfo payment, HttpServletRequest request, HttpServletResponse response) {
		request.getSession().setAttribute("payment", new PaymentInfo());	
		return "PaymentEntryForm";
	}
	
	@RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
	public String viewSubmitPayment(@ModelAttribute("payment")PaymentInfo payment,HttpServletRequest request) {
		request.getSession().setAttribute("payment", payment);
		return "redirect:/purchase/shippingEntry";
	}

	@RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
	public String viewShippingEntry(@ModelAttribute("shipping") ShippingInfo shipping, HttpServletRequest request) {
		request.getSession().setAttribute("shipping", new ShippingInfo());
		return "ShippingEntryForm";
	}
	
	@RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
	public String viewSubmitShipping(@ModelAttribute("shipping")ShippingInfo shipping , HttpServletRequest request) {
		request.getSession().setAttribute("shipping", shipping);
		return "redirect:/purchase/viewOrder";
	}
	
	@RequestMapping(path = "/viewOrder", method = RequestMethod.GET)
	public String viewOrderPage(@ModelAttribute("order") Order order, HttpServletRequest request, HttpServletResponse response) {
		//request.getSession().setAttribute("order",order);	
		return "ViewOrder";
	}
	
	@RequestMapping(path = "/confirmOrder", method = RequestMethod.POST)
	public String ConfirmationPage(HttpServletRequest request, HttpServletResponse response) {
		return "Confirmation";
	}
}
