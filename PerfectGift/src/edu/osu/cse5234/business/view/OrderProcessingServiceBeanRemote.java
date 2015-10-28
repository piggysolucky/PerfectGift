package edu.osu.cse5234.business.view;

import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.util.ServiceLocator;

public interface OrderProcessingServiceBeanRemote {
	
	public boolean validateItemAvailability(Order order);

}
