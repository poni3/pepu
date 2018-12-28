package tobe;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class UppercaseHandler implements InvocationHandler{
	
	/*Hello taget;
	
	public UppercaseHandler(Hello taget) {
		this.taget = taget;
	}
	
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		
		String ret = (String)method.invoke(taget, args);  //타깃으로 위임, 인터페이스위 메소드 호출에 모두 적용된다.
		
		return ret.toUpperCase();  //부과기능제공
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
