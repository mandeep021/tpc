<template>
    <div>
        <div class="container">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-9 col-md-9 col-sm-6 col-xs-12">
                        <h2>Community TPC</h2>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <router-link :to="'/'+url+'addQuestion'" class="nav-item nav-link"><button class="btn btn-default">New Question</button></router-link>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 question-answer">
                <CommunityList :listings="listings"/>
            </div>
            <div class="col-lg-12 question-answer text-center">
                <button class="btn btn-success" v-on:click="loadMore()">Load More </button>
            </div>
        </div>
    </div>
</template>

<script>
import CommunityList from './../pages/components/CommunityList.vue'
export default {
    name: "Community",
    components:{CommunityList},
    data() {
        return {
            listings: [],
            skip: 0,
            take: 10,
            url: window.config.base_url,
        }
    },
    created() {
    },
    mounted:function(){
        this.fetchData();
    },
    methods:{
        fetchData:async function(){
            const config = {
                headers: { Authorization: `Bearer ${this.$store.state.user.token}`}
            };
            var self = this;
            this.$axios.get(window.config.api_base_url+'/community/get?skip='+this.skip+'&take='+this.take+"&type=1",config)
            .then(response => {
                console.log(response.data)
                response.data.data.list.forEach(function(doc) {
                    self.listings = self.listings.concat(doc);
                });
            })
            .catch(function (error) {
                console.error(error);
            });
        },
        loadMore: function () {
            this.skip = this.skip + this.take;
            this.fetchData();
        }
    }
}
</script>