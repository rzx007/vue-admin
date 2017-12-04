<template>
	<div id="cover">
		<div class="tostat">
			<span>{{text}}</span>
		</div>
	</div>
	
</template>

<script>
	export default{
		name:'tostat',
		props:{
			text:{
				dafault:"加载中..."
			}
		},
	}
</script>

<style>
#cover{
	position: fixed;
	width: 100%;
	height: 100%;
	z-index: 10003;
	background: rgba(0,0,0,.2);
	top: 0;
	right: 0;
}
	.tostat{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		height: 90px;
		width: 200px;
		background: rgba(65,74,79,.7);
		/*z-index: 10003;*/
		line-height: 90px;
		color: white;
		text-align: center;
		font-size: 18px;
		border-radius:4px ;
	}
</style>