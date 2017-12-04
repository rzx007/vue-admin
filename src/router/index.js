import Vue from 'vue'
import Router from 'vue-router'
//import view1 from '@/components/main/content/view1'
//import view2 from '@/components/main/content/view2'
//import view3 from '@/components/main/content/view3'
import viewarticle from "@/components/viewArticle/viewArticle"
import login from "@/components/login/login"
//路由懒加载
const view1 = () => import(/* webpackChunkName: "group-view" */'@/components/main/content/view1');
const view2 = () => import('@/components/main/content/view2');
const view3 = () => import('@/components/main/content/view3');
Vue.use(Router)
export default new Router({
  mode:'history',
  routes: [
    {
      path: '/',
      name: 'view1',
      component: view1,
    },{
    	path:"/bloglist",
    	name: 'view2',
      	component: view2
    },{
    	path:"/newblog",
    	name: 'view3',
      	component: view3
    },{
    	path:"/viewart",
    	name: 'viewart',
      	component: viewarticle
    },
    {
    	path:"/login",
    	name:"login",
    	component:login
    }
  ]
})
