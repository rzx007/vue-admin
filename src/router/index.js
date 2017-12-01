import Vue from 'vue'
import Router from 'vue-router'
import view1 from '@/components/main/content/view1'
import view2 from '@/components/main/content/view2'
import view3 from '@/components/main/content/view3'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'view1',
      component: view1
    },{
    	path:"/doc",
    	name: 'view2',
      	component: view2
    },{
    	path:"/example",
    	name: 'view3',
      	component: view3
    }
  ]
})
