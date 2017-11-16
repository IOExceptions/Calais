package com.calaisweb.calaisweb.website.controller.slideshow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.service.slideshow.SlideshowServiceImpl;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

@Controller
@RequestMapping("/slideshow")
public class SlideshowController {
	@Autowired
	private SlideshowServiceImpl slideshowService;
	
	
	/**
	 * 获取所有的轮播图信息
	 * **/
	@RequestMapping("/getAllSlideshow")
	public void getAllSlideshow(HttpServletRequest request,HttpServletResponse response) {
		RetCode retCode=slideshowService.getAllSlideshow(request, response);
		ResponseUtil.write(response,retCode);
	}
}
