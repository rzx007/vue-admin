<template>
	<div class="rightWrap">
		 <transition name="fade">
			<router-view></router-view>	
		  </transition>
	</div>
</template>
<script>
	export default{
		name:'main',
		data(){
			return{

			}
		},
	}
</script>
<style>
	.rightWrap{
		position: relative;
		/*margin-left: 150px;*/
		/*padding-left: 20px;*/
		height: 100%;
		overflow: auto;
		padding-top: 20px;
	}
	@media (max-width: 960px) {
			.rightWrap{
				margin-left: 40px;
			}
	}
	.fade-leave-active{
		transition: opacity .3s
	}
	.fade-enter-active
	 {
		transition: opacity .3s .3s;
	}
	.fade-enter,
	.fade-leave-to {
		opacity: 0;
	}
</style>