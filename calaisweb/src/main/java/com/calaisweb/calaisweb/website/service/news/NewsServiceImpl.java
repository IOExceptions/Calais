package com.calaisweb.calaisweb.website.service.news;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JlsWebsiteNewsMapper;
import com.calaisweb.calaisweb.website.dao.extend.NewsMapper;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteNews;
import com.calaisweb.calaisweb.website.service.news.Impl.NewsService;
import com.calaisweb.framework.tool.ObjectUtil;
import com.calaisweb.framework.type.RetCode;
import com.github.pagehelper.PageHelper;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service
public class NewsServiceImpl implements NewsService{

	@Autowired
	private JlsWebsiteNewsMapper newsMapper;
	
	@Autowired
	private NewsMapper  newsExtendMapper;
	
	/**
	 * 获取全部新闻列表
	 * */
	@Override
	public RetCode getAllNews(JlsWebsiteNews newsBean,HttpServletRequest request, HttpServletResponse response) {
		    RetCode retCode=null;
		    try {
		    	List<JlsWebsiteNews> retList=null;
			    String pageNum=request.getParameter("curr");
			    String pageSize=request.getParameter("limit");
			    if(ObjectUtil.isNotEmpty(pageNum)&&ObjectUtil.isNotEmpty(pageSize)) {
			    	PageHelper.startPage(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
			    }
			    Example example=new Example(JlsWebsiteNews.class);
			    Criteria criteria=example.createCriteria();
			    if(ObjectUtil.isNotEmpty(newsBean)) {
			    	criteria.andEqualTo("newsType",newsBean.getNewsType());
			    }
			    example.orderBy("createtime");
				retList=newsMapper.selectByExample(example);
				retCode=RetCode.getSuccessCode();
				retCode.put("data", retList);
				retCode.put("total",newsMapper.selectCount(newsBean));
				retCode.put("pages",pageNum);
			} catch (Exception e) {
				RetCode.getErrorCode("系统出错！");
			}
		    return retCode;
	}

	/**
	 * 根据新闻ID获取该条新闻
	 * */
	@Override
	public RetCode getNewsByID( HttpServletRequest request,HttpServletResponse response) {
		RetCode retCode=null;
		try {
			JlsWebsiteNews newsBean=newsMapper.selectByPrimaryKey(request.getParameter("newsId"));
			newsBean.setNum(newsBean.getNum()+1);
			UpJlsWebsiteNews(newsBean,request);
			retCode=RetCode.getSuccessCode();
			retCode.put("data",newsBean);
		} catch (Exception e) {
			RetCode.getErrorCode("系统出错！");
		}
		return retCode;
	}
	
	/**
	 * 根据create获取上一页
	 * */
	@Override
	public JlsWebsiteNews getLastNewsByIDretBean(String createtime_,String newsType) {
		JlsWebsiteNews jlsWebsiteNews=null;
		try {
			jlsWebsiteNews=newsExtendMapper.getlastNews(createtime_, newsType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jlsWebsiteNews;
	}
	
	/**
	 * 根据create获取下一页
	 * */
	@Override
	public JlsWebsiteNews getNextNewsByIDretBean(String createtime_,String newsType) {
		JlsWebsiteNews jlsWebsiteNews=null;
		try {
			jlsWebsiteNews=newsExtendMapper.getnextNews(createtime_, newsType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jlsWebsiteNews;
	}

	@Override
	public RetCode UpJlsWebsiteNews(JlsWebsiteNews news, HttpServletRequest request) {
		RetCode retCode=null;
		try {
			Integer retNum=newsMapper.updateByPrimaryKey(news);
			if(retNum>0) {
				retCode=retCode.getSuccessCode();
			}else {
				retCode=retCode.getErrorCode();
			}
		} catch (Exception e) {
			e.printStackTrace();
			retCode=retCode.getErrorCode("系统出错！");
		}
		return retCode;
	}

	
	
	
}
