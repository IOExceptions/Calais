package com.calaisweb.calaisweb.website.service.programme.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteProgramme;

public interface ProgrammeService {
	List<JlsWebsiteProgramme> getProgrammeMainShow(HttpServletRequest request,HttpServletResponse response);
	
	List<JlsWebsiteProgramme> getProgrammeList(HttpServletRequest request,HttpServletResponse response);
	
	JlsWebsiteProgramme getProgrammeById(HttpServletRequest request,HttpServletResponse response);
	
	
}
