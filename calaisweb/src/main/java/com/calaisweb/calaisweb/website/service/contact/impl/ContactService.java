package com.calaisweb.calaisweb.website.service.contact.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.calaisweb.website.entity.JldWebsiteMessage;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteContact;
import com.calaisweb.framework.type.RetCode;

public interface ContactService {
	
	JlsWebsiteContact getOneOverhead(HttpServletRequest request,HttpServletResponse response);
	
	List<JlsWebsiteContact> getAllOverhead(HttpServletRequest request,HttpServletResponse response);
	
	RetCode postMessage(JldWebsiteMessage message,HttpServletRequest request,HttpServletResponse response);
}
