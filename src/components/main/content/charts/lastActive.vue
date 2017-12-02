<template>
	<div class="row listWrap">
		<div class="col-sm-12 drag_handle aa">
			<h3 class="text-left">最新动态</h3>
		</div>
		<template v-for="item in lastList">
			<div class="col-sm-4">
				<div class="last_active">
					<p class="title">
						<img src="../../../../assets/logo.png" alt="avtrel" class="img-circle avtrel" height="30px" width="30px" />
						<span title="username">{{item.username}}</span>
					</p>
					<div class="introduce">
						<h5>{{item.title}}</h5>
						<p class="content">{{item.content}}</p>
						<router-link :to="{path:'/viewart',query:{id:item.artcil_id}}" class="text-right">
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
			}
		},
		created() {
			this.$http.get("/api/lastActive").then(function(res) {
				if(res.body.errno == 0) {
					this.lastList = res.body.data;
				}
			}, function(err) {
				console.log(err)
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
		box-shadow: 5px 5px 10px silver;
	}
	
	.avtrel {
		vertical-align: middle;
	}
	
	.introduce h5 {
		font-weight: 800;
	}
	
	.content {
		margin: 10px 0;
		height: 60px;
		overflow: hidden;
		/*text-indent: 10px;*/
	}
	
	.time {
		color: #9D9D9D;
	}
</style>