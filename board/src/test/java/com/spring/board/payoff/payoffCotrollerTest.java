package com.spring.board.payoff;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value= {
		"classpath:root-context.xml"
		})
public class payoffCotrollerTest {
	
	@Test
	public void testCase1() {
		
		System.out.println("1234111");
	}
	
	
	
}
