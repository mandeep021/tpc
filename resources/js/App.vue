<template>
    <div class="container">
        <component :is="$route.meta.layout || 'simple-layout'">
            <router-view/>
        </component>
        <br/>
    </div>
</template>

<script>
import SimpleLayout from './pages/layouts/SimpleLayout.vue'
export default {
    name: "App",
    components: {
    'simple-layout': SimpleLayout,
        // define as many layouts you want for the application
    },
    data() {
        return {
            isLoggedIn: false,
        }
    },
    created() {
        // localStorage.removeItem('token');
        if (localStorage.getItem('token')) {
            this.$store.commit('setLoginStatus', true);
            this.$store.commit('setToken', localStorage.getItem('token'));
            this.isLoggedIn = true
        }
    },
    methods: {
        
    },
}
</script>