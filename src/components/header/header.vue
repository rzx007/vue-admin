<template>
 <nav class="navbar ">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a> 
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li>
          <a href="#">Link</a>
        </li>
        <li
        ><a href="#">Link</a>
      </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
        <div class="pull-right bigscreen person">
           <img src="../../assets/logo.png" alt="" height="40px" class="img-circle">
           <span>欢迎您</span><em>admin</em>
      </div>    
    </div><!-- /.navbar-collapse --> 
  </div><!-- /.container-fluid -->
</nav>
</template>

<script>
export default {
  name: 'header',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.navbar{
  margin-bottom: 0;
  border: none;
  border-radius: 0 !important;
  background-color: #23282d;
  z-index: 9999;
}
.icon-bar{
  background-color: #2c3e50 !important;
}
.person{
  height: 100%;
  width: auto;
 margin-top:5px;
}
.navbar-toggle{
  border-color: transparent !important;
}
.nav>li>a:hover{
  background-color:#23282d; 
}
@media screen and (max-width:768px ) {

  .bigscreen{
    display: none;
  }
}
</style>
