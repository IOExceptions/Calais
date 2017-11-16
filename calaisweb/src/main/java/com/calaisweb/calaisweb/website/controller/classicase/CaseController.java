package com.calaisweb.calaisweb.website.controller.classicase;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteCase;
import com.calaisweb.calaisweb.website.service.classiccase.CaseServiceImpl;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

@Controller
@RequestMapping("/classicase")
public class CaseController {
	@Autowired
	private CaseServiceImpl caseService;
	
	
	@RequestMapping("/ShowCaseDetails")
	public String getShowCaseDetails(HttpServletRequest request,HttpServletResponse response) {
		JlsWebsiteCase JlsWebsiteCase=caseService.getCaseBeanById(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data",JlsWebsiteCase);
		request.setAttribute("data",retCode);
		return "/webpage/calais/website/commonality/Case/ShowCaseDetails";
	}
	
	@RequestMapping("/getCaseListPage")
	public void getCaseListPage(HttpServletRequest request,HttpServletResponse response) {
		List<JlsWebsiteCase> retList= caseService.getCaseList(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data",retList);
		ResponseUtil.write(response,retCode);
	}
	
}
