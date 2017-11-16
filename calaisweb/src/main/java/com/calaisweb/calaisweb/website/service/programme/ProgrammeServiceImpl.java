package com.calaisweb.calaisweb.website.service.programme;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JlsWebsiteProgrammeMapper;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteProgramme;
import com.calaisweb.calaisweb.website.service.programme.impl.ProgrammeService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service
public class ProgrammeServiceImpl implements ProgrammeService{
    @Autowired
    
	private JlsWebsiteProgrammeMapper ProgrammeMapper;
    
    /**
     * 获取首页下方展示栏需要展示的数据
     * **/
	@Override
	public List<JlsWebsiteProgramme> getProgrammeMainShow(HttpServletRequest request,HttpServletResponse response) {
		JlsWebsiteProgramme record=new JlsWebsiteProgramme();
		record.setMainShow(1);
		Example example=new Example(JlsWebsiteProgramme.class);
		example.orderBy("order");
		Criteria criteria=example.createCriteria();
		criteria.andEqualTo("mainShow","1");
		example.and(criteria);
		List<JlsWebsiteProgramme> retList=ProgrammeMapper.selectByExample(example);
		return retList;
	}

	/**
     * 获取整合运输方案页面所需要显示的内容
     * **/
	@Override
	public List<JlsWebsiteProgramme> getProgrammeList(HttpServletRequest request, HttpServletResponse response) {
		Example example=new Example(JlsWebsiteProgramme.class);
		example.orderBy("order");
		Criteria criteria=example.createCriteria();
		example.and(criteria);
		List<JlsWebsiteProgramme> retList=ProgrammeMapper.selectByExample(example);
		return retList;
	}

	/**
     * 根据ID获取到对应的服务与方案的数据
     * **/
	@Override
	public JlsWebsiteProgramme getProgrammeById(HttpServletRequest request, HttpServletResponse response) {
		JlsWebsiteProgramme retProgramme=ProgrammeMapper.selectByPrimaryKey(request.getParameter("id"));
		return retProgramme;
	}
	
}
