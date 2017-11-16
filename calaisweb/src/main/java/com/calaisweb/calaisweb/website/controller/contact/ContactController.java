package com.calaisweb.calaisweb.website.controller.contact;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JldWebsiteMessage;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteContact;
import com.calaisweb.calaisweb.website.service.contact.ContactServiceImpl;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

@Controller
@RequestMapping("/contact")
public class ContactController {

	@Autowired
	private ContactServiceImpl contactService;
	
	/**
	 * 获取顶置公司信息
	 * **/
	@RequestMapping("/getOneOverhead")
	private void getOneOverhead(HttpServletRequest request,HttpServletResponse response) {
		JlsWebsiteContact retContact=contactService.getOneOverhead(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data", retContact);
		ResponseUtil.write(response,retCode);
	} 
	/**
	 * 获取所有分公司信息
	 * **/
	@RequestMapping("/getAllOverhead")
	private void getAllOverhead(JldWebsiteMessage message,HttpServletRequest request,HttpServletResponse response) {
		List<JlsWebsiteContact> retList=contactService.getAllOverhead(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data",retList);
		ResponseUtil.write(response,retCode);
	}
	/**
	 * 意见反馈提交
	 * **/
	@RequestMapping("/postMessage")
	private void postMessage(JldWebsiteMessage message,HttpServletRequest request,HttpServletResponse response) {
		RetCode retCode=contactService.postMessage(message, request, response);
		ResponseUtil.write(response,retCode);
	}
	
}
