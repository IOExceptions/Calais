package com.calaisweb.calaisweb.website.service.demeanour.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.calaisweb.website.entity.JldWebsiteDemeanour;
import com.calaisweb.calaisweb.website.entity.extend.DemeanourTypeExtend;

public interface DemeanourService {
	List<DemeanourTypeExtend> getDemeanourTypeExtendList(HttpServletRequest request,HttpServletResponse response);
	
	List<JldWebsiteDemeanour> getDemeanourAllList(HttpServletRequest request,HttpServletResponse response);
}
