<template>
	<div class="container">
		<div class="row" id="items">
			<div class="col-md-12">
				<div class="preview row">
					<div class="total_members col-md-6 col-sm-6">
						<span class="ario">会员总数：</span>
						<strong>10000</strong>
					</div>
					<div class="col-md-6 col-sm-6 day_view">
						<span class="ario">日访问量：</span>
						<strong>1325</strong>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<chart1></chart1>
			</div>
			<div class="col-md-6">
				<chart2></chart2>
			</div>
		</div>
	</div>
</template>
<script>
import Sortable from "sortablejs"
import chart1 from "./charts/chart1"
import chart2 from "./charts/chart2"
	export default{
		name:"view1",
		components:{
			chart1,
			chart2
		},
		mounted(){
			var el = document.getElementById('items');
			var sortable = Sortable.create(el,{
				filter:".preview",
				handle:".drag_handle",
				animation:150,
			});
		}
	}
</script>
<style>
	h4{
		margin:0;
	}
	.preview{
		text-align: center;
		font-size: 30px;
		font-weight: 900;
		height: 90px;
		line-height: 90px;
		 background-color: #eee;
		 border-radius: 4px;
		 margin-bottom: 18px;
		 overflow: hidden;
	}
	.ario{
		font-size: 20px;
	}
	.chartWrap{
		margin-bottom: 18px;
		height: 310px;
		background: #eee;
		 overflow: hidden;
		 border-radius: 4px;
	}
	.drag_handle{
		 padding: 14px;
		 background: #ddd;
		 cursor: move;
	}
	#viewChart{
		height:260px;
		width: 100%;
	}
</style>