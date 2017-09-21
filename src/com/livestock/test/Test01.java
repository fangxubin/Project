package com.livestock.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test01 {
	@Test
	public void Test() {
		ApplicationContext ctx = new 
				ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
		

	}
}
