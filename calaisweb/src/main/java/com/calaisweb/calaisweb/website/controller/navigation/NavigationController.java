package com.calaisweb.calaisweb.website.controller.navigation;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.extend.NavigationExtend;
import com.calaisweb.calaisweb.website.service.navigation.NavigationServiceImpl;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;


@Controller
@RequestMapping("/navigation")
public class NavigationController {
		@Autowired
		private NavigationServiceImpl navigationService;
		
		@RequestMapping("/getNavigationShow")
		public void getNavigationShow(HttpServletRequest request,HttpServletResponse response) {
			List<NavigationExtend> retMap=navigationService.getNavigationShow();
			RetCode retCode=RetCode.getSuccessCode();
			retCode.put("data", retMap);
			ResponseUtil.write(response,retMap);
		}
}
