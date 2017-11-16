package com.calaisweb.calaisweb.website.service.news.Impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteNews;
import com.calaisweb.framework.type.RetCode;

public interface NewsService {
	
	
	/**
	 * 获取全部新闻列表
	 * */
	RetCode getAllNews(JlsWebsiteNews newsBean,HttpServletRequest request, HttpServletResponse response);
	/**
	 * 根据新闻ID获取该条新闻
	 * */
	RetCode getNewsByID(HttpServletRequest request, HttpServletResponse response);
	
	JlsWebsiteNews getLastNewsByIDretBean(String id,String newsType);
	
	 JlsWebsiteNews getNextNewsByIDretBean(String id,String newsType);
	
	 RetCode UpJlsWebsiteNews(JlsWebsiteNews news,HttpServletRequest request);
	
}
