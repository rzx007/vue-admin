<template>
	<div class="sliderWrap">
		<ul>
			<li v-for="(item,index) in navs">
				<router-link :to="item">
					<span class="glyphicon glyphicon-modal-window"></span>
					<span class="link_name">{{index}}</span>
			</router-link>	
			</li>
		</ul>
	</div>
</template>
<script>
	export default{
		name:"main",
		data(){
			return{
				navs:{"数据概览":"/","最新发布":"/doc","最新案例":"/example"},
				others:'s'
			}
		}	
	}
</script>
<style >
.sliderWrap ul {
  list-style-type: none;
  padding: 0;
}
.sliderWrap ul li {
  margin: 0 10px;
  padding-top: 10px;
  line-height: 30px;
  font-size: 14px;
}
a {
  color: #42b983;
}
.glyphicon{
	margin-right: 10px;
	
}
.sliderWrap{
	width: 150px;
	text-decoration: none;
	float: left;
	height: 100%;
	background-color: #23282d;
}
@media screen  and (max-width: 970px){
	.sliderWrap{
		width: 40px;
		overflow: hidden;
	}
	.link_name{
		display: none !important;
	}
}
</style>