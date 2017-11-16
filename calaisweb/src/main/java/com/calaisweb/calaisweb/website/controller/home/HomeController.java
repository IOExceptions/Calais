package com.calaisweb.calaisweb.website.controller.home;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JldWebsiteDemeanour;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteCase;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteProgramme;
import com.calaisweb.calaisweb.website.entity.extend.NavigationExtend;
import com.calaisweb.calaisweb.website.service.classiccase.CaseServiceImpl;
import com.calaisweb.calaisweb.website.service.demeanour.DemeanourServiceImpl;
import com.calaisweb.calaisweb.website.service.navigation.NavigationServiceImpl;
import com.calaisweb.calaisweb.website.service.programme.ProgrammeServiceImpl;
import com.calaisweb.calaisweb.website.service.slideshow.SlideshowServiceImpl;
import com.calaisweb.framework.type.RetCode;



@Controller
public class HomeController {
	
	@Autowired
	private SlideshowServiceImpl slideshowService;
	
	@Autowired
	private NavigationServiceImpl navigationService;
	
	@Autowired
	private ProgrammeServiceImpl programmeService;
	
	@Autowired
	private CaseServiceImpl caseService;

	@Autowired
	private DemeanourServiceImpl demeanourService;
	/**
	 * 进入官网首页
	 * */
	@RequestMapping("/index")
	public String getIndex(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		//轮播图
		RetCode retCode=slideshowService.getAllSlideshow(request, response);
		request.setAttribute("slideshow", retCode);
		
		//特色服务
		List<JlsWebsiteProgramme> programmeList=programmeService.getProgrammeMainShow(request, response);
		request.setAttribute("programmeList", programmeList);
		
		//经典案例
		List<JlsWebsiteCase> caseList=caseService.getCaseListShowMain(request,response);
		request.setAttribute("caseList", caseList);
		return "webpage/calais/website/commonality/index";
	};
	
	/**
	 * 进入contact
	 * */
	@RequestMapping("/contact")
	public String getContact(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/contact";
	};
	
	/**
	 * 进入services
	 * */
	@RequestMapping("/services")
	public String getServices(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/services";
	};
	
	/**
	 * 进入gallery
	 * */
	@RequestMapping("/gallery")
	public String getGallery(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/gallery";
	};
	
	
	/**
	 * 进入icons
	 * */
	@RequestMapping("/icons")
	public String getIcons(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/icons";
	};
	
	/**
	 * 进入typography
	 * */
	@RequestMapping("/typography")
	public String getTypography(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/typography";
	};

	/**
	 * 进入scheme(整合运输方案)
	 * */
	@RequestMapping("/scheme")
	public String getScheme(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/Programme/Programme";
	};
	
	/**
	 * 进入case(成功案例List列表)
	 * */
	@RequestMapping("/caseListPage")
	public String getCaseListPage(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/Case/Case-List-Page";
	};
	/**
	 * 进入GongsiNews(公司新闻List列表)
	 * */
	@RequestMapping("/GongsiNewsPage")
	public String getGongsiNewsPage(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/News/GongsiNews-List-Page";
	};
	
	/**s
	 * 进入GongsiNews(行内新闻List列表)
	 * */
	@RequestMapping("/HangNeiNewsPage")
	public String getHangNeiNewsPage(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/News/HangNeiNews-List-Page";
	};
	
	/**
	 * 返回gallerymainshow(首页展示我们风采墙)
	 * */
	@RequestMapping("/gallerymainshow")
	public String getGallerymainshow(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		List<JldWebsiteDemeanour> retList=demeanourService.getDemeanourAllList(request, response);
		request.setAttribute("data",retList);
		return "webpage/calais/website/commonality/model/gallerymainshow";
	};
	/**
	 * 返回头部
	 * */
	@RequestMapping("/head")
	public String getHead(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map) {
		return "webpage/calais/website/commonality/head";
	};
	
}
