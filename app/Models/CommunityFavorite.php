<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommunityFavorite extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'community_id',
    ];
    public static function checkFavorite($community_id,$user_id){
        $query = self::query();
        return $query->where("community_id",$community_id)->where("user_id",$user_id)->count();
    }
    public static function remove($community_id,$user_id){
        $query = self::query();
        return $query->where("community_id",$community_id)->where("user_id",$user_id)->delete();
    }
    
}
