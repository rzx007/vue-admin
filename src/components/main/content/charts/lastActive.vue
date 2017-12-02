<template>
	<div class="row listWrap">
		<div class="col-sm-12 drag_handle aa">
			<h3 class="text-left">最新动态</h3>
		</div>
		<div class="col-sm-4">
			<div class="last_active">
				<p class="title">
					<img src="../../../../assets/logo.png" alt="avtrel" class="img-circle avtrel" height="30px" width="30px" />
					<span title="username">愤怒的倒霉熊</span>
				</p>
				<div class="introduce">
					<h5>标题</h5>
					<p class="content">将回调延迟到下次 DOM 更新循环之后执行。。。。</p>
					<p class="time text-right">2017-12-02</p>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="last_active">
				<p class="title">
					<img src="../../../../assets/logo.png" alt="avtrel" class="img-circle avtrel" height="30px" width="30px" />
					<span title="username">愤怒的倒霉熊</span>
				</p>
				<div class="introduce">
					<h5>标题</h5>
					<p class="content">将回调延迟到下次 DOM 更新循环之后执行。。。。</p>
					<p class="time text-right">2017-12-02</p>
				</div>
			</div>
		</div>
	</div>
</template>
<script>
	export default {
		name: "acvtive",
		created(){
			this.$http.get("/api/lastActive").then(function(res){
				console.log(res);
			},function(err){
				console.log(err)
			})
		}

	}
</script>

<style>
	.listWrap{
		margin-bottom: 18px;
	}
	.listWrap .col-sm-4{
		margin-bottom: 18px !important;
	}
	.last_active {
		background: white;
		padding: 10px 10px;
		border-radius: 4px;
		overflow: hidden;
		box-shadow: 5px 5px 10px silver;
	}
	.avtrel {
		vertical-align: middle;
	}
	.introduce h5{
		font-weight: 800;
	}
	.content{
		margin: 10px 0;
		height: 60px;
		overflow: hidden;
	}
	.time{
		color: #9D9D9D;
	}
</style>