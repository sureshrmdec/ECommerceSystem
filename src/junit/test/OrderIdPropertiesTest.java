package junit.test;

import org.junit.Test;

import utils.OrderId;

public class OrderIdPropertiesTest {
	
	@Test
	public void testGerOrderId() throws Exception{
		
		System.out.print(OrderId.getValue());
	}
}
