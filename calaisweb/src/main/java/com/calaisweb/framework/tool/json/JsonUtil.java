package com.calaisweb.framework.tool.json;

import java.util.Map;

import com.google.gson.Gson;

public class JsonUtil {
	//Map转json字符串
	public static <T> String mapToJson(Map<String, T> map) {
        Gson gson = new Gson();
        String jsonStr = gson.toJson(map);
        return jsonStr;
    }
}
