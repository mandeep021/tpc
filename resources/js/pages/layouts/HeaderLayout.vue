<template>
    <header>
        <div class="container">
            <nav class="navbar navbar-expand-lg nav-menu">
                <!-- Company Logo -->
                <a class="navbar-brand" href="#">
                    <img src="images/logo.svg" alt="Two People Company">
                </a>
                <!-- Nevigation sec -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active" v-if="isLogin">
                            <router-link :to="'/'+url+'community'" class="nav-item nav-link">Home</router-link>
                        </li>
                        <li class="nav-item" v-if="!isLogin">
                            <router-link to="/" class="nav-item nav-link">Login</router-link>
                        </li>
                    </ul>                    
                </div>
            </nav>
        </div>
    </header>
</template>
<script>
    export default {
    data() {
        return {
            url: window.config.base_url,
        }
    },
    computed: {
        isLogin() {
            return this.$store.state.user.isLoggedIn
        }
    }
}
</script>
