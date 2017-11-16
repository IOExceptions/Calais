package com.calaisweb.calaisweb.website.service.slideshow;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JlsWebsiteSlideshowMapper;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteSlideshow;
import com.calaisweb.calaisweb.website.service.slideshow.Impl.SlideshowService;
import com.calaisweb.framework.tool.ObjectUtil;
import com.calaisweb.framework.type.RetCode;
import com.github.pagehelper.PageHelper;

import tk.mybatis.mapper.entity.Example;

@Service
public class SlideshowServiceImpl implements SlideshowService {

	@Autowired
	private JlsWebsiteSlideshowMapper slideshowMapper;
	/**
	 * 获取全部的轮播图
	 * **/
	@Override
	public RetCode getAllSlideshow(HttpServletRequest request, HttpServletResponse response) {
		RetCode retCode=null;
		try {
			String pageNum=request.getParameter("pageNum");
		    String pageSize=request.getParameter("pageSize");
		    if(ObjectUtil.isNotEmpty(pageNum)&&ObjectUtil.isNotEmpty(pageSize)) {
		    	PageHelper.startPage(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
		    }
		    Example example=new Example(JlsWebsiteSlideshow.class);
		    example.setOrderByClause("group_");//进行排序
			List<JlsWebsiteSlideshow> retList=slideshowMapper.selectByExample(example);
			retCode=RetCode.getSuccessCode();
			retCode.put("data",retList);
		} catch (Exception e) {
			retCode=RetCode.getErrorCode("系统出错！");
		}
		return retCode;
	}

}
