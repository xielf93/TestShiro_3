package com.test.shiro;

import java.util.HashMap;
import java.util.Map;

public class Test2 {
	public static String reverse(String orginStr){
		if(orginStr == null || orginStr.length()<1){
			return orginStr;
		}
		return reverse(orginStr.substring(1))+orginStr.charAt(0);
	}
	public static void main(String[] args) {
		String a = "123456";
		System.out.println(reverse("123456"));
		Map<String, Object> map = new HashMap<String, Object>();
		
	}
}
