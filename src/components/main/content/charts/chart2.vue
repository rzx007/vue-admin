<template>
	<div class="chartWrap">
		<div class="drag_handle drag ">
			<h4 class="text-left">用户访问来源</h4>
		</div>
		<div id="viewChart1"></div>
	</div>
</template>
<script>
	import Echarts from "echarts"
	export default {
		name: "chart1",
		mounted() {
			var myChart = echarts.init(document.getElementById('viewChart1'));
			var option = {
				tooltip: {
					trigger: 'item',
					formatter: "{a} <br/>{b} : {c} ({d}%)"
				},
				legend: {
					orient: 'vertical',
					left: 'left',
					data: ['直接访问', '邮件营销', '联盟广告', '视频广告', '搜索引擎']
				},
				series: [{
					name: '访问来源',
					type: 'pie',
					radius: '55%',
					center: ['50%', '60%'],
					data: [{
							value: 335,
							name: '直接访问'
						},
						{
							value: 310,
							name: '邮件营销'
						},
						{
							value: 234,
							name: '联盟广告'
						},
						{
							value: 135,
							name: '视频广告'
						},
						{
							value: 1548,
							name: '搜索引擎'
						}
					],
					itemStyle: {
						emphasis: {
							shadowBlur: 10,
							shadowOffsetX: 0,
							shadowColor: 'rgba(0, 0, 0, 0.5)'
						}
					}
				}]
			};
			myChart.setOption(option);
		}
	}
</script>
<style>
	h4 {
		margin: 0;
	}
	.chartWrap {
		margin-bottom: 18px;
		height: 310px;
		background: white;
		overflow: hidden;
		border-radius: 4px;
		 box-shadow: 2px 2px 10px gainsboro;
	}
	
	.drag {
		padding: 14px;
		background: whitesmoke;
		cursor: move;
		border-bottom: 1px solid gainsboro;
	}
	
	#viewChart1 {
		height: 260px;
		width: 100%;
	}
</style>