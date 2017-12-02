<template>
<div class="articleWrap">
	<div class="backWrap">
		<span class="glyphicon glyphicon-menu-left" @click="back()"></span>
		<span>博客内容预览</span>
	</div>
	<div class="blogs">
		{{$route.query.id}}
	</div>
</div>
</template>

<script>
	export default{
		name:'viewArticle',
		methods:{
			back(){//返回上一级
				this.$router.go(-1);
			}
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
	text-align: center;
}
</style>