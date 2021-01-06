import Vue from 'vue'
import App from './App.vue'
import { vext } from './vext'

window.vext = vext; 

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
}).$mount('#app')

