package com.calaisweb.calaisweb.website.service.classiccase;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.calaisweb.calaisweb.website.dao.JlsWebsiteCaseMapper;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteCase;
import com.calaisweb.calaisweb.website.entity.JlsWebsiteProgramme;
import com.calaisweb.calaisweb.website.service.classiccase.impl.CaseService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service
public class CaseServiceImpl implements CaseService{

	@Autowired
	private JlsWebsiteCaseMapper caseMapper;
	/**
	 * 获取首页显示的成功案例集合
	 * **/
	@Override
	public List<JlsWebsiteCase> getCaseListShowMain(HttpServletRequest request, HttpServletResponse response) {
		JlsWebsiteCase record=new JlsWebsiteCase();
		record.setMainShow(1);
		Example example=new Example(JlsWebsiteCase.class);
		example.orderBy("order");
		Criteria criteria=example.createCriteria();
		criteria.andEqualTo("mainShow","1");
		example.and(criteria);
		List<JlsWebsiteCase> retList=caseMapper.selectByExample(example);
		return retList;
	}
	
	/**
	 * 获取首页显示的成功案例集合
	 * **/
	@Override
	public List<JlsWebsiteCase> getCaseList(HttpServletRequest request, HttpServletResponse response) {
		JlsWebsiteCase record=new JlsWebsiteCase();
		record.setMainShow(1);
		Example example=new Example(JlsWebsiteCase.class);
		example.orderBy("order");
		List<JlsWebsiteCase> retList=caseMapper.selectByExample(example);
		return retList;
	}
	
	/**
	 * 根据ID获取该条案例的详细信息
	 * */
	@Override
	public JlsWebsiteCase getCaseBeanById(HttpServletRequest request, HttpServletResponse response) {
		JlsWebsiteCase caseBean=null;
		try {
			String id=request.getParameter("id");
			caseBean=caseMapper.selectByPrimaryKey(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return caseBean;
	}
	
	
	

}
