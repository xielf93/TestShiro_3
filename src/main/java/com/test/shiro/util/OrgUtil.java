package com.test.shiro.util;

import java.util.ArrayList;
import java.util.List;
import com.test.shiro.pojo.Organization;

public class OrgUtil {
	public static List<Organization> orgList = new ArrayList<Organization>();
	
	public static void OrgFilter(Organization orgSelf){
		if(orgSelf.getChildList()!=null && orgSelf.getChildList().size()>0){
			for(Organization o : orgSelf.getChildList()){
				orgList.add(o);
				OrgFilter(o);
			}
		}
		
	}
}
