package com.calaisweb.calaisweb.website.controller.feature;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteFeature;
import com.calaisweb.calaisweb.website.service.feature.FeatureServiceImpl;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

/**
 * 业务特色
 * */
@Controller
@RequestMapping("/feature")
public class FeatureController {

	@Autowired
	private FeatureServiceImpl featureService;
	
	@RequestMapping("/getAllFaeatureList")
	public void getAllFaeatureList(HttpServletRequest request,HttpServletResponse response) {
		List<JlsWebsiteFeature> retList=featureService.getAllFaeatureList(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data",retList);
		ResponseUtil.write(response,retCode);
	}
	
	@RequestMapping("/ShowServiceDetails")
	public String getShowServiceDetails(HttpServletRequest request,HttpServletResponse response) {
		JlsWebsiteFeature retBean=featureService.getFeatureById(request, response);
		request.setAttribute("data",retBean);
		return "/webpage/calais/website/commonality/service/ShowServiceDetails";
	}
}
