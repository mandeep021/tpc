import {createApp} from 'vue'

require('./bootstrap')
import App from './App.vue'
import axios from 'axios'
import router from './router'
import store from "./store/user";

import "./../../public/css/bootstrap.min.css";
import "./../../public/css/slick.css";
import "./../../public/css/style.css";

const app = createApp(App)
app.config.globalProperties.$axios = axios;
app.use(store)
app.use(router)
app.mount('#app')