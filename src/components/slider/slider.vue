<template>
	<div class="sliderWrap " ref="close">
		<ul>
			<li v-for="(item,index) in navs">
				<router-link :to="item">
					<span class="glyphicon glyphicon-modal-window"></span>
					<span class="link_name">{{index}}</span>
				</router-link>	
			</li>
			<li @click="close()">
				<a href="javascript:void(0);" >
					<span class="glyphicon glyphicon-sound-stereo"></span>
					<span class="link_name">简洁模式</span>
				</a>
				
			</li>
		</ul>
	</div>
</template>
<script>
	export default{
		name:"main",
		data(){
			return{
				navs:{"数据概览":"/","文章列表":"/bloglist","发布博客":"/newblog"},
				others:'otherdata',
				closes:false,
			}
		},
		methods:{
			close(){
				if(this.closes){
					this.$refs.close.className ="sliderWrap";
					this.closes  =false;
				}else{
					this.$refs.close.className+=" toggle_close";
					this.closes =true;
				}
				
			}
		}
	}
</script>
<style >
.sliderWrap{
	width: 150px;
	text-decoration: none;
	float: left;
	height: 100%;
	background-color: #23282d;
	overflow: auto;
}
.sliderWrap ul {
  list-style-type: none;
  padding: 0;
  width: 150px;
}
.sliderWrap ul li {
  margin: 0 10px;
  padding-top: 10px;
  line-height: 30px;
  font-size: 16px;
}

.glyphicon{
	margin-right: 10px;
}
.toggle_close{
	width: 36px;
	overflow: hidden;
}
@media screen  and (max-width: 970px){
	.sliderWrap{
		width: 36px;
		overflow: hidden;
	}
	
}
</style>