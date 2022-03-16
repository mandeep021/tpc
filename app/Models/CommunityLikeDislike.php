<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommunityLikeDislike extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'community_id',
        'like_dislike'
    ];
    public static function check($community_id,$user_id){
        $query = self::query();
        return $query->where("community_id",$community_id)->where("user_id",$user_id)->first();
    }
}
