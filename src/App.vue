<template>
  <div id="app">
    <headers></headers>    
    <div class="main">
      <sliders></sliders>
      <mains></mains>
    </div>
    
  </div>
</template>
<script>
import headers from "./components/header/header"
import sliders from "./components/slider/slider"
import mains from "./components/main/main"
export default {
  name: 'app',
  components:{
    headers,
    sliders,
    mains
  },
  created(){
		sessionStorage.username="愤怒的倒霉熊";
  	if(!sessionStorage.username){
  		this.$router.push('/login')
  	}
  }
}
</script>

<style>
html,body{
  padding: 0;
  margin: 0;
  height: 100%;
  background:#f1f1f1;
}
#app {
  height: 100%;
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /*color: #2c3e50;*/
}
.main{
  position: absolute;
  top: 50px;
  bottom: 0;
  left: 0;
  width: 100%;
}
</style>
