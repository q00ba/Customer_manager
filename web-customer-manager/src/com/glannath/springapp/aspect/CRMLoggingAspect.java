package com.glannath.springapp.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

import java.util.logging.Logger;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class CRMLoggingAspect {

	//setup logger
	
	private Logger myLogger = Logger.getLogger(getClass().getName());
	
	// setup pointcut declarations
	
	@Pointcut("execution(* com.glannath.springapp.controller.*.*(..))")
	private void forControllerPackage() {}
	
	@Pointcut("execution(* com.glannath.springapp.service.*.*(..))")
	private void forServicePackage() {}
	
	@Pointcut("execution(* com.glannath.springapp.dao.*.*(..))")
	private void forDAOPackage() {}
	
	@Pointcut("forControllerPackage() || forServicePackage() || forDAOPackage()")
	private void forAppFlow() {}
	
	// add @Before advice
	
	@Before("forAppFlow()")
	public void before(JoinPoint theJoinPoint) {
		
		String theMethod = theJoinPoint.getSignature().toShortString();
		myLogger.info("====>> in @Before: calling method: "+ theMethod);
		
		Object[] args = theJoinPoint.getArgs();
		
		for (Object tempArg : args) {
			myLogger.info("======>> argument: "+ tempArg);
		}
		
	}
	
	// add @AfterReturinig advice
	
	@AfterReturning(pointcut="forAppFlow()", returning="theResult")
	public void afterReturning(JoinPoint theJoinPoint, Object theResult) {
		
		String theMethod = theJoinPoint.getSignature().toShortString();
		myLogger.info("====>> in @AfterReturning: calling method: "+ theMethod);
		
		myLogger.info("=====>> result: "+ theResult);
		
	}
	
}
