package com.calaisweb.calaisweb.website.controller.programme;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.calaisweb.calaisweb.website.entity.JlsWebsiteProgramme;
import com.calaisweb.calaisweb.website.service.programme.ProgrammeServiceImpl;
import com.calaisweb.framework.tool.http.ResponseUtil;
import com.calaisweb.framework.type.RetCode;

@Controller
@RequestMapping("/rogramme")
public class ProgrammeController {

	@Autowired
	private ProgrammeServiceImpl programmeService;
	
	/**
     * 获取整合运输方案页面所需要显示的内容
     * **/
	@RequestMapping("/getProgrammeList")
	public void getProgrammeList(HttpServletRequest request,HttpServletResponse response) {
		List<JlsWebsiteProgramme> retList=programmeService.getProgrammeList(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data", retList);
		ResponseUtil.write(response,retCode);
	}
	
	/**
     * 根据ID获取到对应的服务与方案的数据
     * **/
	@RequestMapping("/getProgrammeById")
	public void getProgrammeById(HttpServletRequest request,HttpServletResponse response) {
		JlsWebsiteProgramme retProg=programmeService.getProgrammeById(request, response);
		RetCode retCode=RetCode.getSuccessCode();
		retCode.put("data", retProg);
		ResponseUtil.write(response,retCode);
	}
}
