package com.calaisweb.calaisweb.website.controller.demeanour;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JldWebsiteDemeanour;
import com.calaisweb.calaisweb.website.entity.extend.DemeanourTypeExtend;
import com.calaisweb.calaisweb.website.service.demeanour.DemeanourServiceImpl;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

@Controller
@RequestMapping("/demeanour")
public class DemeanourController {
	@Autowired
	private DemeanourServiceImpl demeanourService;
	
	/**
	 * 获取所有的我们风采展示实体Bean扩展类
	 * */
	@RequestMapping("/getDemeanourTypeExtendList")
	public void getDemeanourTypeExtendList(HttpServletRequest request,
			HttpServletResponse response) {
		List<DemeanourTypeExtend> retList=demeanourService.getDemeanourTypeExtendList(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data",retList);
		ResponseUtil.write(response,retCode);
	}
	/**
	 * 获取所有的我们风采展示实体Bean扩展类
	 * */
	@RequestMapping("/getDemeanourAllList")
	public void getDemeanourAllList(HttpServletRequest request,
			HttpServletResponse response) {
		List<JldWebsiteDemeanour> retList=demeanourService.getDemeanourAllList(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data",retList);
		ResponseUtil.write(response,retCode);
	}
}
