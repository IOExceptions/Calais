package com.calaisweb.calaisweb.website.controller.news;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteNews;
import com.calaisweb.calaisweb.website.service.news.NewsServiceImpl;
import com.calaisweb.framework.tool.ObjectUtil;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

@Controller
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsServiceImpl NewsService;
	
	/**
	 * 进入ShowNewsDetails(新闻详情页面列表)
	 * */
	@RequestMapping("/ShowNewsDetails")
	public String getShowNewsDetails(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		String newsId=request.getParameter("newsId");
		RetCode retCode=NewsService.getNewsByID(request, response);
		if(ObjectUtil.isNotEmpty(request.getParameter("lastId"))) {
			System.out.println(((JlsWebsiteNews)retCode.get("data")).getNewsType());
			System.out.println(newsId);
			JlsWebsiteNews bean=NewsService.getLastNewsByIDretBean(((JlsWebsiteNews)retCode.get("data")).getCreatetime(),((JlsWebsiteNews)retCode.get("data")).getNewsType());
			retCode.put("last",bean);
			
		}
		if(ObjectUtil.isNotEmpty(request.getParameter("nextId"))) {
			System.out.println(((JlsWebsiteNews)retCode.get("data")).getNewsType());
			System.out.println(newsId);
			JlsWebsiteNews bean=NewsService.getNextNewsByIDretBean(((JlsWebsiteNews)retCode.get("data")).getCreatetime(),((JlsWebsiteNews)retCode.get("data")).getNewsType());
			retCode.put("next",bean);
		}
		request.setAttribute("data",retCode);
		return "webpage/calais/website/commonality/News/ShowNewsDetails";
	};
	
	
	/**
	 * 获取全部的新闻
	 * **/
	@RequestMapping("/getAllNews")
	public void getAllNews(JlsWebsiteNews newsBean,HttpServletRequest request, HttpServletResponse response) {
		RetCode rerCod=NewsService.getAllNews(newsBean,request, response);
		ResponseUtil.write(response,rerCod);
	}
	
	/**
	 * 根据ID获取新闻
	 * **/
	@RequestMapping("/getNewsById")
	public void getNewsByID(HttpServletRequest request, HttpServletResponse response) {
		RetCode rerCod=NewsService.getNewsByID(request, response);
	}
}
