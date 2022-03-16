<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Community extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'title', 
        'content', 
        'total_comments',
        'status'
    ]; 

    public static function getList(Request $request,$is_total = false){
        $user = $request->user();
        $query = self::query();
        $query->join("users","users.id",'=','communities.user_id');
        $query->leftJoin("community_favorites",function($join) use($user){
            $join->on("community_favorites.community_id","=","communities.id")->where("community_favorites.user_id",$user->id);
        });
        $query->leftJoin("community_like_dislikes",function($join) use($user){
            $join->on("community_like_dislikes.community_id","=","communities.id")->where("community_like_dislikes.user_id",$user->id);
        });
        $query->select("communities.*","users.name as user_name","community_like_dislikes.like_dislike");
        if($is_total){
            return $query->count();
        }
        $query->orderBy("communities.id","desc");
        return $query->skip($request->skip)->take($request->take)->get();
    }
    public static function getNewList(){

    }
    public static function getFollowed(){

    }
}
