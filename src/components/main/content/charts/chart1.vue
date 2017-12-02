<template>
	<div class="chartWrap">
		<div class="drag_handle drag">
			<h4 class="text-left">访问统计图</h4>
		</div>
		<div id="viewChart"></div>
	</div>
</template>
<script>
	import Echarts from "echarts"
	export default {
		name: "chart1",
		mounted(){
			var myChart = echarts.init(document.getElementById('viewChart'));
			var option = {
				color: ['##006271'],
				tooltip: {
					trigger: 'axis',
					axisPointer: { // 坐标轴指示器，坐标轴触发有效
						type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
					}
				},
				grid: {
					left: '3%',
					right: '4%',
					bottom: '3%',
					containLabel: true
				},
				xAxis: [{
					type: 'category',
					data: ['七月', '八月', '九月', '十月', '十一月', '十二月', '一月'],
					axisTick: {
						alignWithLabel: true
					}
				}],
				yAxis: [{
					type: 'value'
				}],
				series: [{
					name: '直接访问',
					type: 'bar',
					barWidth: '60%',
					data: [45, 52, 200, 334, 390, 330, 500]
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
	}
	.drag_handle{
		cursor: move;
	}
	.drag{
		padding: 14px;
		background: whitesmoke;		
		border-bottom: 1px solid gainsboro;
	}
	
	#viewChart {
		height: 260px;
		width: 100%;
	}
</style>