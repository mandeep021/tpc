<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\FavoriteCommunityRequest;
use App\Http\Requests\GetCommunityRequest;
use App\Http\Requests\LikeDislikeCommunityRequest;
use App\Http\Requests\StoreCommunityRequest;
use App\Models\Community;
use App\Models\CommunityFavorite;
use App\Models\CommunityLikeDislike;

class CommunityController extends Controller{

    public function get(GetCommunityRequest $request){
        $total_record = Community::getList($request,true);
        $list = Community::getList($request,false);
        $response_data = [];
        foreach($list as $key => $value):
            $temp_data = [];
            $temp_data["community_id"] = $value->id;
            $temp_data["user_id"] = $value->user_id;
            $temp_data["user_name"] = $value->user_name;
            $temp_data["title"] = $value->title;
            $temp_data["content"] = $value->content;
            $temp_data['is_favorite'] = CommunityFavorite::checkFavorite($value->id,$request->user()->id);
            $temp_data["is_like_dislike"] = $value->like_dislike;
            $response_data[] = $temp_data;
        endforeach;
        return response()->json(['success' => true, 'code' => 200, 'messages' => "Successfully.", 'data' => array("total_record"=>$total_record,"list"=>$response_data)],200);
    }
    public function store(StoreCommunityRequest $request){
        $community = new Community();
        $community->user_id = $request->user()->id;
        $community->title = $request->title;
        $community->content = $request->content;
        $community->status = 1;
        $community->save();
        return response()->json(['success' => true, 'code' => 200, 'messages' => "data saved.", 'data' => []],200);
    }
    public function update(StoreCommunityRequest $request,Community $community){
        $this->authorize('community-update', $community);
        $community->title = $request->title;
        $community->content = $request->content;
        $community->save();
        return response()->json(['success' => true, 'code' => 200, 'messages' => "data saved.", 'data' => []],200);
    }
    public function markFavorite(FavoriteCommunityRequest $request){
        $check = CommunityFavorite::checkFavorite($request->community_id,$request->user()->id);
        $updated_status = 0;
        if($check){
            CommunityFavorite::remove($request->community_id,$request->user()->id);
            $updated_status = 0;
        }
        else{
            $community_fav = new CommunityFavorite();
            $community_fav->community_id = $request->community_id;
            $community_fav->user_id = $request->user()->id;
            $community_fav->save();
            $updated_status = 1;
        }
        return response()->json(['success' => true, 'code' => 200, 'messages' => "data saved.", 'data' => ["updated_status"=>$updated_status]],200);
    }
    public function likeDislike(LikeDislikeCommunityRequest $request){
        $check = CommunityLikeDislike::check($request->community_id,$request->user()->id);
        if($check){
            if($check->like_dislike == $request->like_dislike){
                $check->delete();
            }
            else{
                $check->like_dislike = $request->like_dislike;
                $check->save();
            }
        }
        else{
            $community_like = new CommunityLikeDislike();
            $community_like->community_id = $request->community_id;
            $community_like->user_id = $request->user_id;
            $community_like->like_dislike = $request->like_dislike;
            $community_like->save();
        }
        return response()->json(['success' => true, 'code' => 200, 'messages' => "data saved.", 'data' => []],200);
    }
}

?>


