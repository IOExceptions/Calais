package com.calaisweb.calaisweb.website.entity.extend;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.calaisweb.calaisweb.website.entity.JldWebsiteNavigation;

public class NavigationExtend extends JldWebsiteNavigation implements Serializable{
	 /**
	  * 扩展子菜单集合
	  * **/
	private List<JldWebsiteNavigation> netherList=new ArrayList<>();

	public List<JldWebsiteNavigation> getNetherList() {
		return netherList;
	}

	public void setNetherList(List<JldWebsiteNavigation> netherList) {
		this.netherList = netherList;
	}
}
