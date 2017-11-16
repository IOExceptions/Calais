package com.calaisweb.calaisweb.website.service.slideshow.Impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calaisweb.framework.type.RetCode;

public interface SlideshowService {
	RetCode getAllSlideshow(HttpServletRequest request, HttpServletResponse response);
}
