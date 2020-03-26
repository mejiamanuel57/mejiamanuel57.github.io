import Vue from 'vue'
import App from './App.vue'
import './assets/css/tailwind.css'
import vueSmoothScroll from 'vue2-smooth-scroll'
import VueGtag from 'vue-gtag'

Vue.use(VueGtag, {
  config: { id: 'UA-119694085-1' }
})
Vue.use(vueSmoothScroll)
Vue.config.productionTip = false

new Vue({
  render: h => h(App)
}).$mount('#app')
