package com.spring.board.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MeasuringAspect {
	
	public static Logger log = LoggerFactory.getLogger(MeasuringAspect.class);
	
	@Around("execution(* com.spring.board.*.*.*(..))")
	public Object measureMehtodRunningTime(ProceedingJoinPoint joinPoint) throws Throwable {
		
		log.debug("starting.." + joinPoint.getSignature().getName());
		long start = System.currentTimeMillis();
		
		System.out.println(joinPoint.getSignature().getName() + " " + start);
		
		try {
			return joinPoint.proceed();
		} finally {
			log.debug("method job ended..");
			long result = System.currentTimeMillis() - start;
			log.debug("method running time is " + result + "(millisceconds)");
			
			System.out.println("method running time is " + result + "(millisceconds)");
		}
		
	}
	
}
