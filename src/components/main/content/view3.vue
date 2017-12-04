<template>
	<div class="watch">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9">
					<div class="set_title">
						<label for="titles">设置标题</label>
						<input type="text" name="titles" id="titles" ref="titles" placeholder="文章标题" v-model="title"/>
					</div>
					<div class="descriptio ">
						<label for="des">文章简介</label>
						<input type="text" name="des" id="des" placeholder="文章简介，100字" />
					</div>
					<div id="editorElem"></div>
					<button v-on:click="save_blog" id="save" class="pull-right ">发布</button>
				</div>
				<div class="col-md-3">
					<div class="fabu">
						<div class="fabu_head">
							<strong>发布</strong>
							<span class="caret"></span>
						</div>
						<div class="other_options">
							<button id="no_fabu">保存为草稿</button>
							<button id="fabu_btn" @click="preview()">实时预览</button>
							<p class="option">
								<span class="glyphicon glyphicon-eye-open"></span>
								<span>公开度:</span>
								<select v-model="selected">
									<option value="0">公开</option>
									<option value="1">不公开</option>
								</select>
								{{$route.query.id}}
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="watch_preview" v-if="show">
			<div class="back text-left" @click="preview">
				<button>返回编辑</button>
			</div>
			<h3>{{title}}</h3>
			<div class="preview_content" v-html="editorContent"></div>
		</div>
	</div>
</template>
<script>
	//引入富文本编辑器
	import Bus from "../../../assets/eventBus"
	import E from "wangeditor"
	export default {
		name: "view3",
		data() {
			return {
				editorContent: '',
				title: '',
				show: false,
				selected: '0',
				editid: '0',
			}
		},
		creatEdit: {
			init() {
				var editor = new E('#editorElem');
				return editor;
			},
			clear(){
				this.editorContent = "";
				this.title= '';
				var ed = new E('#editorElem');
				ed.create()
				ed.txt.html('');
				document.getElementById("titles").value=null;
			}
		},
		methods: {
			getContent: function() {
				//				alert(this.editorContent)
			},
			preview() {
				this.show = !this.show;
			},
			save_blog() {
				if(!this.editorContent) {
					alert('内容或者标题不能为空')
					return false;
				}
				this.$http.post("http://localhost/data/save_blog.php", {
					content: this.editorContent,
					title: this.title,
					time: new Date().toLocaleString(),
					type: this.selected,
					id:this.$route.query.id
				}, {
					emulateJSON: true
				}).then(function(res) {
					alert("发布成功！")
				}).then(function(){
					this.$options.creatEdit.clear();
				})
			}
		},
		
		created() {
			if(!this.$route.query.id) {
				return false;
			}
			this.$http.get("http://localhost/data/editer.php?id=" + this.$route.query.id)
				.then(function(res) {
					this.editorContent = res.body[0].content;
					console.log(this.editorContent);
					this.title = res.body[0].title;
					//					console.log(this.$options.creatEdit.init());
					var ed = this.$options.creatEdit.init();
					ed.customConfig.onchange = (html) => {
						this.editorContent = html
					}
					ed.create()
					ed.txt.html(res.body[0].content);
				})
		},
		mounted() {
			var ed = this.$options.creatEdit.init()
			ed.customConfig.onchange = (html) => {
				this.editorContent = html
			}
			ed.customConfig.zIndex = 100
			ed.create()
		},
		destroyed() {
			this.$route.query.id = null;
		}
	}
</script>
<style>
	.watch {
		height: 100%;
		width: 100%;
		position: relative;
		font-size: 14px;
		padding: 30px 80px;
	}
	
	.watch_preview {
		height: 100%;
		width: 100%;
		z-index: 10001;
		position: absolute;
		top: -18px;
		left: 0;
		text-align: left;
		overflow: auto;
		background: white;
		/*display: none;*/
	}
	
	#editorElem {
		background: white;
		box-shadow: 2px 2px 10px gainsboro;
		overflow: auto;
		font-size: 18px;
	}
	
	.set_title {
		margin-bottom: 20px;
	}
	
	.set_title label {
		font-size: 26px;
		font-weight: 300;
		width: 120px;
		text-align: justify;
	}
	
	.set_title input {
		width: 80%;
		border: 1px solid gainsboro;
		border-radius: 4px;
		padding: 3px 6px;
		font-size: 28px;
	}
	.descriptio{
		margin-bottom: 20px;
	}
	.descriptio label{
		font-size: 20px;
		font-weight: 200;
		width: 120px;
		text-align: justify;
	}
	.descriptio input {
		width: 80%;
		border: 1px solid gainsboro;
		border-radius: 4px;
		padding: 3px 6px;
		font-size: 20px;
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
	
	button {
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
	
	.back {
		padding: 8px 20px;
	}
	
	.preview_content {
		box-sizing: border-box;
		padding: 20px 80px;
		overflow: hidden;
	}
	.preview_content img{
		width: 60%;
	}
</style>