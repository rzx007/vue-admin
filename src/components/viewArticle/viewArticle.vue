<template>
<div class="articleWrap">
	<div class="backWrap">
		<span class="glyphicon glyphicon-menu-left" @click="back()"></span>
		<span>博客内容预览 {{$route.query.id}}</span>
	</div>
	<div class="loading" v-if="loaded">
			<em>数据加载中.....</em>
	</div>
	<div class="blogs" v-else>
		<h3>{{title}}</h3>
		<div class="cont"  v-html="article">
			
		</div>
	</div>
</div>
</template>

<script>
	export default{
		name:'viewArticle',
		data(){
			return{
				article:'',
				title:'',
				loaded:'true'
				
			}
		},
		methods:{
			back(){//返回上一级
				this.$router.go(-1);
			}
		},
		created(){
			this.$http.get("http://localhost/data/editer.php?id=" + this.$route.query.id).then(function(res){
				console.log(res.body[0])
				let result = res.body[0];
				this.article = result.content;
				this.title = result.title;
			}).then(function(){
				this.loaded=false;
			})
		}
	}
</script>

<style>
.articleWrap{
	height: 100%;
	width: 100%;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10;
	background: white;
}
.backWrap{
	padding: 10px 14px;
	font-size: 18px;	
		background: whitesmoke;
	box-shadow: 0px 2px 10px silver;
}
.backWrap span{
	font-weight: lighter;
}
.blogs{
	padding: 20px 30px;
	font-size: 18px;
	line-height: 80px !important;
	width: 70%;
	margin:0 auto ;
}
.blogs img{
	width: 60%;
}
.loading{
	text-align: center;
	font-size: 19px;
}
</style>