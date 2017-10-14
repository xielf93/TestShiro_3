package com.test.shiro.util;

import java.util.ArrayList;
import java.util.List;

import com.test.shiro.pojo.Resource;

public class ResourceUtil {
public static List<Resource> reList = new ArrayList<Resource>();
	
	public static void ResourceFilter(Resource orgSelf){
		if(orgSelf.getChildren()!=null && orgSelf.getChildren().size()>0){
			for(Resource o : orgSelf.getChildren()){
				reList.add(o);
				ResourceFilter(o);
			}
		}
		
	}
}
