package com.jsontest;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.junit.Test;

import com.calaisweb.framework.tool.json.JsonUtil;

public class JsonTest {

	@Test
	public void test() {
		/*System.out.println("呵呵");*/
		try {
			HashMap<String,Object> map=new HashMap<String,Object>();
			map.put("name","张三");
			map.put("age","李四");
			List<String> list=new ArrayList<String>();
			list.add("呵呵");
			list.add("哈哈");
			map.put("di",list);
			String str=JsonUtil.mapToJson(map);
			System.out.println(str);
		} catch (Exception e) {
				e.printStackTrace();
		}
	}

}
