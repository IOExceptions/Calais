package com.calaisweb.calaisweb.website.entity.extend;

import java.util.List;

import com.calaisweb.calaisweb.website.entity.JldWebsiteDemeanour;
import com.calaisweb.calaisweb.website.entity.JldWebsiteDemeanourtype;

public class DemeanourTypeExtend extends JldWebsiteDemeanourtype{

		/**
		 * 该分组风采下的所有展示图片信息
		 * **/                            
		private List<JldWebsiteDemeanour> demeanourList;

		public List<JldWebsiteDemeanour> getDemeanourList() {
			return demeanourList;
		}

		public void setDemeanourList(List<JldWebsiteDemeanour> demeanourList) {
			this.demeanourList = demeanourList;
		}
		
		
}
