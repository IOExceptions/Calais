package com.calaisweb.calaisweb.website.service.classiccase.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteCase;

public interface CaseService {
	List<JlsWebsiteCase> getCaseListShowMain(HttpServletRequest request,HttpServletResponse response);
	
	 List<JlsWebsiteCase> getCaseList(HttpServletRequest request, HttpServletResponse response);
	 
	 JlsWebsiteCase getCaseBeanById(HttpServletRequest request, HttpServletResponse response);
}
