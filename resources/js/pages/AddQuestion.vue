<template>
    <div>
        <div class="container">
            <div class="card card-default">
                <div class="card-header">Add Question</div>
                <div class="card-body">
                    <div class="alert alert-danger" role="alert" v-if="error !== null">
                        {{ error }}
                    </div>
                    <form autocomplete="off" @submit.prevent="addQuestion" method="post">
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" id="title" class="form-control" placeholder="Title" v-model="title" required>
                        </div>
                        <div class="form-group">
                            <label for="content">Content</label>
                            <textarea class="form-control" id="content" v-model="content" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-default">Store</button>
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
            title: null,
            content: null,
            error: null
        }
    },
    methods: {
      addQuestion() {
        // get the redirect object
        const config = {
            headers: { Authorization: `Bearer ${this.$store.state.user.token}`}
        };
        this.$axios.post(window.config.api_base_url+'/community/store', {
            title: this.title,
            content: this.content
        },config)
        .then(response => {
            console.log(response.data)
            if (response.data.success) {
                this.$router.push('/'+window.config.base_url+'community');    
            } else {
                this.error = response.data.messages
            }
        })
        .catch(function (error) {
            console.error(error);
        });
      }
    },
}
</script>