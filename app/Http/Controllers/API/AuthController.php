<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Validator;
use Auth, Hash;
use DateTime;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AuthController extends Controller{

    public function login(Request $request){
        $validation = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if ($validation->fails()) {
            $errors = json_encode($validation->errors());
            return response()->json(['success' => false, 'code' => 401, 'messages' => $errors,'message'=>"Validation Error"],400);
        }
        $user = User::where('email',$request->email)->first();
        if(!$user){
          return response()->json(['success' => false, 'code' => 400, 'messages' => "User not found."],200);
        }
        if(!Hash::check($request->password, $user->password)){
            return response()->json(['success' => false, 'code' => 400, 'messages' => "Invalid Credentials"],200);
        }
        $tokenResult = $user->createToken('Personal access token');
        $token = $tokenResult->token;
        $token->save();

        $user_arr = [];
        $user_arr["user_id"] = $user->id;
        $user_arr["name"] = $user->name;
        $user_arr["email"] = $user->email;
        $user_arr["access_token"] = $tokenResult->accessToken;
        $user_arr["expires_at"] = Carbon::parse(
            $tokenResult->token->expires_at
         )->toDateTimeString();
        return response()->json(['success' => true, 'code' => 200, 'messages' => "Successfully login.", 'data' => array("user"=>$user_arr)],200);
    }
}

?>
