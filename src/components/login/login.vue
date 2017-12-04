<template>
	<div class="loginWrap">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="formWrap">
						<form class="form-horizontal">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail3" placeholder="Email">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default">登陆</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="flurWrap"></div>
	</div>
</template>

<script>
	export default {
		name: 'login',
		created(){
			if(sessionStorage.username){
				this.$router.push({ name: 'user', redirect: '/'})
			}
		}
	}
</script>

<style>
	.loginWrap {
		position: fixed;
		top: 0;
		left: 0;
		height: 100%;
		width: 100%;
		z-index: 10010;
		background: whitesmoke;
	}
	.formWrap{
		margin-top: 40%;
	}
	.flurWrap{
		position: absolute;
		top: 0;
		top: 0;
		left: 0;
		height: 100%;
		width: 100%;
		z-index: -1;
		background: url(../../../build/logo.png) no-repeat center;
		filter: blur(10px);
	}
</style>