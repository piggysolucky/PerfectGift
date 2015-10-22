package edu.osu.cse5234.business;

import edu.osu.cse5234.business.view.OrderProcessingServiceBeanRemote;
import javax.ejb.LocalBean;
import javax.ejb.Remote;
import javax.ejb.Stateless;

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

}
