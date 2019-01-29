package com.spring.board.tobe;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class UppercaseHandler implements InvocationHandler{
	
	/*Hello taget;
	
	public UppercaseHandler(Hello taget) {
		this.taget = taget;
	}
	
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		
		String ret = (String)method.invoke(taget, args);  //Ÿ������ ����, �������̽��� �޼ҵ� ȣ�⿡ ��� ����ȴ�.
		
		return ret.toUpperCase();  //�ΰ��������
	}*/
	
	Object target;
	public  UppercaseHandler(Object taget) {
		this.target = taget;
	}
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		
		Object ret = method.invoke(target, args);
		/*if(ret instanceof String) {
			return ((String)ret).toUpperCase();
		} else {
			return ret;
		}*/
		
		if(ret instanceof String && method.getName().startsWith("say")) {
			return ((String)ret).toUpperCase();
		} else {
			return ret;
		}
		
	}
	

}
