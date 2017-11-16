package com.calaisweb.framework.tool.Logger;

import org.apache.log4j.PropertyConfigurator;

public class Log4jConfig {

		 private static boolean isReload = true;   
		 public static void load() {    
			 String path = Log4jConfig.class.getClass().getResource("/")    
		                .getPath()    
		                + "config/log4j.properties";    
		        //String path="config/log4j.properties";     
		        System.out.println("log4j configfile path=" + path);    
		        PropertyConfigurator.configureAndWatch(path,1000);   
		    }    
		     
		    private static void reload() {    
		        if (isReload) {    
		            load();    
		        }    
		        isReload = false;    
		    }    
		     
		    public void setReload(boolean flag) {    
		        isReload = flag;    
		    }

}
