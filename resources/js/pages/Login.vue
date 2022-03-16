<template>
    <div>
        <div class="container">
            <div class="card card-default">
                <div class="card-header">Login</div>
                <div class="card-body">
                    <div class="alert alert-danger" role="alert" v-if="error !== null">
                        {{ error }}
                    </div>
                    <form autocomplete="off" @submit.prevent="login" method="post">
                        <div class="form-group">
                            <label for="email">E-mail</label>
                            <input type="email" id="email" class="form-control" placeholder="user@example.com" v-model="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Mot de passe</label>
                            <input type="password" id="password" class="form-control" v-model="password" required>
                        </div>
                        <button type="submit" class="btn btn-default">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "Home",
    data() {
        return {
            email: null,
            password: null,
            error: null
        }
    },
    mounted:function(){
        this.checkLogin();
    },
    methods: {
      login() {
        // get the redirect object
        console.log(window.config.api_base_url);
        this.$axios.post(window.config.api_base_url+'/auth/login', {
            email: this.email,
            password: this.password
        })
        .then(response => {
            console.log(response.data)
            if (response.data.success) {
                localStorage.setItem('userData', response.data.data.user);
                localStorage.setItem('token', response.data.data.user.access_token);
                this.$store.commit('setLoginStatus', true);
                this.$store.commit('setUserUID', response.data.data.user.user_id);
                this.$store.commit('setEmail', response.data.data.user.email);
                this.$store.commit('setName', response.data.data.user.name);
                this.$store.commit('setToken', response.data.data.user.access_token);
                this.$router.push(window.config.base_url+'/community');
            } else {
                this.error = response.data.messages
            }
        })
        .catch(function (error) {
            console.error(error);
        });
      },
      checkLogin(){
            var login = this.$store.state.user.isLoggedIn;
            if(login){
                this.$router.push(window.config.base_url+'/community');
            }
      }
    },
}
</script>