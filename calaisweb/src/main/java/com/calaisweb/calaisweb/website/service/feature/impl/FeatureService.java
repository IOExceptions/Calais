package com.calaisweb.calaisweb.website.service.feature.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteFeature;

public interface FeatureService {
	List<JlsWebsiteFeature> getAllFaeatureList(HttpServletRequest request,HttpServletResponse response);
	
	JlsWebsiteFeature getFeatureById(HttpServletRequest request,HttpServletResponse response);
}
