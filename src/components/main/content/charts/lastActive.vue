<template>
	<div class="row listWrap">
		<div class="col-sm-12 drag_handle aa">
			<h3 class="text-left">最新动态</h3>
		</div>
		<template v-if="loaded"  v-for="n in 6">
			<div class="col-sm-4">
				<div class="last_active last_active_loading">
					
				</div>
			</div>
		</template>
		<template v-for="item in lastList" >
			<div class="col-sm-4" >
				<div class="last_active">
					<p class="title">
						<img src="../../../../assets/logo.png" alt="avtrel" class="img-circle avtrel" height="30px" width="30px" />
						<span title="username">{{item.username}}</span>
					</p>
					<div class="introduce">
						<h5>{{item.title}}</h5>
						<p class="content" >
							{{item.description? item.description : '作者太懒，没留下文章简介...'}}
						</p>
						<router-link :to="{path:'/viewart',query:{id:item.id}}" class="text-right">
							预览
						</router-link>
						<p class="time text-right">{{item.time}}</p>
					</div>
				</div>
			</div>
		</template>
	</div>
</template>
<script>
	export default {
		name: "acvtive",
		data() {
			return {
				lastList: [],
				loaded:true
			}
		},
		created() {
			this.$http.get("http://localhost/data/select_blogslist.php",)
			.then(function(res){
				this.loaded=false;
				console.log(res);
				this.lastList=res.body
			})			
		}
	}
</script>
<style>
	.listWrap {
		margin-bottom: 18px;
	}
	
	.listWrap .col-sm-4 {
		margin-bottom: 18px !important;
	}
	
	.last_active {
		background: white;
		padding: 10px 10px;
		border-radius: 4px;
		overflow: hidden;
		box-shadow: 2px 2px 10px gainsboro;
	}
	
	.avtrel {
		vertical-align: middle;
	}
	
	.introduce h5 {
		font-weight: 800;
	}
	
	.content {
		margin: 10px 0;
		height: 50px;
		overflow: hidden;
		/*white-space:nowrap;
		text-overflow: ellipsis;*/
	}
	.content  *{
		font-size: 14px !important;
	}
	.time {
		color: #9D9D9D;
	}
	.last_active_loading{
		height: 195px;
		background: gainsboro;
	}
</style>