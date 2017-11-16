$(function(){
	initMap();
})
function initMap(){
	// 百度地图API功能
	var map = new BMap.Map("baiduMap");    // 创建Map实例
	map.centerAndZoom(new BMap.Point(113.717508,22.985603), 18);  // 初始化地图,设置中心点坐标和地图级别
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	
	
	
	map.clearOverlays(); 
	var new_point = new BMap.Point(113.717508,22.985603);
	var marker = new BMap.Marker(new_point);  // 创建标注
	map.addOverlay(marker);              // 将标注添加到地图中
	map.panTo(new_point);      
	
}
