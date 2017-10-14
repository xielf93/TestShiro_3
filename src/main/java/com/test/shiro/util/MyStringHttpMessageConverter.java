package com.test.shiro.util;

import java.io.IOException;
import java.nio.charset.Charset;

import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;

public class MyStringHttpMessageConverter extends StringHttpMessageConverter {
	private static final MediaType utf8 = new MediaType("text", "plain", Charset.forName("UTF-8")); 
	
	@Override
	protected MediaType getDefaultContentType(String t) throws IOException {
		// TODO Auto-generated method stub
		return utf8;
	}
}
