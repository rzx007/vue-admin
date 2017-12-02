<template>
	<div class="watch">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div id="editorElem"></div>
					<button v-on:click="getContent" id="save" class="pull-right">发布</button>
				</div>
				<div class="col-md-3">
					<div class="fabu">
						<div class="fabu_head">
							<strong>发布</strong>
							<span class="caret"></span>
						</div>
						<div class="other_options">
							<button id="no_fabu">保存为草稿</button>
							<button id="fabu_btn" @click="preview()">预览</button>
							<p class="option">
								<span class="glyphicon glyphicon-eye-open"></span>
								<span>公开度:</span>
								<select name="">
									<option value="0">公开</option>
									<option value="1">不公开</option>
								</select>
							</p>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="watch_preview"  v-if="show">
			<div class="back text-left" @click="preview">
				<button>返回编辑</button>
			</div>
			<div class="preview_content" v-html="editorContent">
				
			</div>
		</div>
	</div>

</template>
<script>
	//引入富文本编辑器
	import E from "wangeditor"
	export default {
		name: "view3",
		data() {
			return {
				editorContent: '',
				show: false,
			}
		},
		methods: {
			getContent: function() {
				alert(this.editorContent)
			},
			preview() {
				this.show = !this.show;
			}
		},
		mounted() {
			var editor = new E('#editorElem')
			editor.customConfig.onchange = (html) => {
				this.editorContent = html
			}
			console.log(editor.customConfig)
			editor.create()
		}
	}
</script>
<style>
	.watch {
		height: 100%;
		width: 100%;
		position: relative;
		font-size: 14px;
	}
	
	.watch_preview {
		min-height: 100%;
		width: 100%;
		z-index: 100000;
		position: absolute;
		top: -18px;
		left: 0;
		text-align: left;
		overflow: hidden;
		background: white;
		/*display: none;*/
	}
	
	#editorElem {
		background: white;
		box-shadow: 2px 2px 10px gainsboro;
		overflow: auto;
	}
	
	#save {
		background: #23282d;
		border: none;
		padding: 8px;
		color: white;
		border-radius: 4px;
		margin-top: 18px;
	}
	
	.fabu {
		margin: 0 10px;
		background: white;
	}
	
	.fabu_head {
		background: whitesmoke;
		line-height: 30px;
		padding: 8px 10px;
		border-bottom: 1px solid gainsboro;
	}
	
	.other_options {
		padding: 10px;
	}
	button{
		border: none;
		background: #23282d;
		padding: 8px;
		color: white;
		border-radius: 4px;
	}
	
	#fabu_btn {
		float: right;
	}
	
	.option {
		margin-top: 15px;
	}
	.back{
		padding: 8px 20px;
	}
	.preview_content{
		overflow: hidden;
	}
</style>