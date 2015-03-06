package com.adam.diancan.utils;

import java.io.IOException;
import java.util.Properties;

public class Config {
	private static Properties prop = new Properties();	
	static{		
		try {
			prop.load(Config.class.getResourceAsStream("info.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static final String CLASS_NAME = prop.getProperty("CLASS_NAME");
	public static final String URL = prop.getProperty("URL");
	public static final String USERNAME = prop.getProperty("USERNAME");
	public static final String PASSWORD = prop.getProperty("PASSWORD");
}
