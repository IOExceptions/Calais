package com.calaisweb.calaisweb.website.service.navigation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JldWebsiteNavigationMapper;
import com.calaisweb.calaisweb.website.dao.extend.NavigationExtendMapper;
import com.calaisweb.calaisweb.website.entity.JldWebsiteNavigation;
import com.calaisweb.calaisweb.website.entity.extend.NavigationExtend;
import com.calaisweb.calaisweb.website.service.navigation.impl.NavigationService;


@Service
public class NavigationServiceImpl implements NavigationService{

	@Autowired
	private JldWebsiteNavigationMapper navigationMapper;
	
	@Autowired
	private NavigationExtendMapper navigationExtendMapper;
	/**
	 * 获取菜单并封装返回
	 * **/
	@Override
	public List<NavigationExtend> getNavigationShow() {
		List<NavigationExtend> retList=new ArrayList<NavigationExtend>();
		Map<String,Object> retMap=new HashMap<String,Object>();
		try {
			List<NavigationExtend> navigationList=navigationExtendMapper.selectAll();
			for (NavigationExtend item : navigationList) {
				if(item.getParentId().equals("0")) {
					retMap.put(item.getId().toString(),item);
				}else {
					NavigationExtend navigation=(NavigationExtend)retMap.get(item.getParentId());
					navigation.getNetherList().add(item);
				}
			}
			//将封装好的Map转换为List形式存储
			for (Object item : retMap.values()) {
				retList.add((NavigationExtend)item);
			}
			System.out.println(retList.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return retList;
	}

}
