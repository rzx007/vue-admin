<template>
	<div class="blogsWrap container">
		<div class="row">
			<div class="col-md-9">
				<table class="table table-hover table-striped ">
					<thead>
						<tr>
							<th>文章标题</th>
							<th>作者</th>
							<th>编辑</th>
						</tr>
					</thead>
					<tbody >
					<template v-for="item in blogsList">
						<tr>
							<td style="width:70%;">{{item.title}}</td>
							<td >愤怒的倒霉熊</td>
							<td >
								<router-link :to="{path:'/newblog',query:{id:item.id}}">编辑</router-link>
							</td>
						</tr>
					</template>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</template>
<script>
import Bus from "../../../assets/eventBus"
export default{
	name:'view2',
	data(){
		return{
			blogsList:[],
		}
	},
	created(){
		this.$http.get("http://localhost/data/select_blogslist.php",
		{emulateJSON: true}).then(function(res){
			console.log(res);
			this.blogsList=res.body
		})
	},
	methods:{
		
	},
	
}
</script>
<style>
	td{
		padding: 10px ;
	}
</style>