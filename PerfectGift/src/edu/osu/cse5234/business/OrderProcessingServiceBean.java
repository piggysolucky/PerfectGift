package edu.osu.cse5234.business;

import javax.ejb.LocalBean;
import javax.ejb.Remote;
import javax.ejb.Stateless;

import edu.osu.cse5234.business.view.OrderProcessingServiceBeanRemote;
import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.util.ServiceLocator;

/**
 * Session Bean implementation class OrderProcessingServiceBean
 */
@Stateless
@Remote(OrderProcessingServiceBeanRemote.class)
@LocalBean
public class OrderProcessingServiceBean implements OrderProcessingServiceBeanRemote {

    /**
     * Default constructor. 
     */
    public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    
    public String processOrder(Order order){
    	return "";
    }

	@Override
	public boolean validateItemAvailability(Order order) {
		// TODO Auto-generated method stub
		boolean isValid = ServiceLocator.getInventoryService().validateQuantity(order.getItems()); 
		return isValid;
	}

}
