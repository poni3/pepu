package tobe;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import java.lang.reflect.Proxy;

import org.junit.Test;
import org.springframework.aop.ClassFilter;
import org.springframework.aop.Pointcut;
import org.springframework.aop.framework.ProxyFactory;
import org.springframework.aop.framework.ProxyFactoryBean;
import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.aop.support.NameMatchMethodPointcut;

public class simpleProxy {

	
	@Test
	public void simpleTest() {
		Hello hello = new HelloTarget();
		assertThat(hello.sayHello("Toby"), is("Hello Toby"));
		assertThat(hello.sayHi("Toby"), is("Hi Toby"));
		assertThat(hello.sayThankYou( "Toby"), is("Thank You Toby")); 
		
	}
	
	
	@Test
	public void simpleTest2() {
		
		Hello proxiedHello = new HelloUppercase(new HelloTarget());
		
		assertThat(proxiedHello.sayHello("Toby"), is("HELLO TOBY"));
		assertThat(proxiedHello.sayHi("Toby"), is("HI TOBY"));
		assertThat(proxiedHello.sayThankYou( "Toby"), is("THANK YOU TOBY")); 
	}
	
	@Test 
	public void simpleTest3() {
		Hello proxiTest = (Hello)Proxy.newProxyInstance(
														getClass().getClassLoader(), 
														new Class[] {Hello.class},
														new UppercaseHandler(new HelloTarget()));
		
		assertThat(proxiTest.sayHello("Toby"), is("HELLO TOBY"));
		assertThat(proxiTest.sayHi("Toby"), is("HI TOBY"));
		assertThat(proxiTest.sayThankYou( "Toby"), is("THANK YOU TOBY")); 
		
	}
	
	
	@Test
	public void proxyFacotryBean() {
		ProxyFactoryBean pfBean = new ProxyFactoryBean();
		pfBean.setTarget(new HelloTarget());
		pfBean.addAdvice(new UppercaseAdvice());
		
		Hello proxiedHello = (Hello)pfBean.getObject();
		
		assertThat(proxiedHello.sayHello("Toby"), is("HELLO TOBY"));
		assertThat(proxiedHello.sayHi("Toby"), is("HI TOBY"));
		assertThat(proxiedHello.sayThankYou( "Toby"), is("THANK YOU TOBY")); 
		
	}
	
	
	@Test
	public void pointcutAdvisor() {
		ProxyFactoryBean pfBean = new ProxyFactoryBean();
		pfBean.setTarget(new HelloTarget());
		
		NameMatchMethodPointcut pointcut = new NameMatchMethodPointcut();
		pointcut.setMappedName("sayH*");
		
		pfBean.addAdvisor(new DefaultPointcutAdvisor(pointcut, new UppercaseAdvice()));
		
		Hello proxiedHEllo = (Hello)pfBean.getObject();
		assertThat(proxiedHEllo.sayHello("Toby"), is("HELLO TOBY"));
		assertThat(proxiedHEllo.sayHi("Toby"), is("HI TOBY"));
		assertThat(proxiedHEllo.sayThankYou( "Toby"), is("Thank You Toby")); 
		
	}
	
	@Test
	public void classNamePointcutAdvisor() {
		
		NameMatchMethodPointcut classMethodPointcut = new NameMatchMethodPointcut() {
			public ClassFilter getClassFilter() {
				return new ClassFilter() {
					public boolean matches(Class<?> clazz) {
						return clazz.getSimpleName().startsWith("HelloT");
					}
				};
			}
		};
		
		classMethodPointcut.setMappedName("sayH*");
		
		checkadviced(new HelloTarget(), classMethodPointcut, true);
		
		class HelloWorld extends HelloTarget {};
		
		checkadviced(new HelloWorld(), classMethodPointcut, false);
		
		class HelloToby extends HelloTarget {};
		checkadviced(new HelloToby(), classMethodPointcut, true);
		
		
	}
	
	private void checkadviced(Object target, Pointcut pointcut, boolean adviced) {
		
		ProxyFactoryBean pfBean = new ProxyFactoryBean();
		pfBean.setTarget(target);
		pfBean.addAdvisor(new DefaultPointcutAdvisor(pointcut, new UppercaseAdvice()));
		Hello proxiedTest = (Hello)pfBean.getObject();
		
		if(adviced) {
			assertThat(proxiedTest.sayHello("Toby"), is("HELLO TOBY"));
			assertThat(proxiedTest.sayHi("Toby"), is("HI TOBY"));
			assertThat(proxiedTest.sayThankYou( "Toby"), is("Thank You Toby")); 
		} else {
			assertThat(proxiedTest.sayHello("Toby"), is("Hello Toby"));
			assertThat(proxiedTest.sayHi("Toby"), is("Hi Toby"));
			assertThat(proxiedTest.sayThankYou( "Toby"), is("Thank You Toby")); 
		}
		
		
	}
			
			
	
	
}
