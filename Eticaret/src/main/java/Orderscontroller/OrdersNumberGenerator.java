package Orderscontroller;

import java.util.ArrayList;
import java.util.List;

public class OrdersNumberGenerator {
	
	public static String  Generator(List<Orders> a)
	{
		String anathorkeys="100";
		int i=0;
		while(i<8)
		{
			anathorkeys=anathorkeys+String.valueOf((int)(Math.random()* 10));
			i=i+1;
		}
		i=0;
		int control=0;
		
		for(Orders num:a)
		{
			if(num.getOrdersNumber()==anathorkeys)
			{
				control=1;
				break;
			}
		}
		if(control==1) {return Generator(a);}
		else{return anathorkeys;}
	}
}
