<template>
  <div class="row question-answer-list" v-for="item in listings" :key="item.community_id">
        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
            <img src="images/user-logo.svg" />
        </div>
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
            <p class="question">{{item.title}}</p>
            <span>{{item.content}}</span>
            <div class="like-section d-flex flex-row">
                <img class="p-1" src="images/like.png" />
                <img class="p-1" src="images/dis-like.png" />
                <p>{{item.user_name}}</p>
            </div>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
            <div class="comment-section">
                <img src="images/comment.png" /> <span>0</span>
            </div>
            <div class="share-section">
                <img class="p-1" src="images/share.svg" />
                <img class="p-1" :src="this.getImgUrl(item.is_favorite)" v-on:click="markFavorite(item.community_id)"/>
            </div>
        </div>
    </div>
</template>
 
<script>
    
    export default {
        name: 'ProductSlider',
        props:['listings'],
        components: { },
        data() {
            return {
                
            }
        },
        methods:{
            getImgUrl(fav) {
                if(fav == 0){
                    return 'images/star.svg';    
                }
                else{
                    return 'images/fill-star.svg';   
                }
            },
            markFavorite(community_id){
                const config = {
                    headers: { Authorization: `Bearer ${this.$store.state.user.token}`}
                };
                this.$axios.post(window.config.api_base_url+'/community/mark-favorite', {
                    community_id: community_id,
                },config)
                .then(response => {
                    console.log(response.data)
                })
                .catch(function (error) {
                    console.error(error);
                });
            }
        }
    }
</script> 