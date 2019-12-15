package com.glannath.springapp.aspect;

import org.aspectj.lang.annotation.Aspect;
import java.util.logging.Logger;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class CRMLoggingAspect {

	//setup logger
	
	private Logger myLoger = Logger.getLogger(getClass().getName());
	
	// setup pointcut declarations
	
	// add @Before advice
	
	// add @AfterReturinig advice
	
}
