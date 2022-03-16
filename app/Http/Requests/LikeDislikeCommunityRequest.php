<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;

class LikeDislikeCommunityRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'community_id' => 'required|numeric|exists:communities,id',
            'like_dislike' => 'required|numeric|in:0,1',
        ];
    }
    protected function failedValidation(Validator $validator)
    {
        $response = response()->json(['success' => false, 'code' => 401, 'messages' => $validator->errors()->toJson()],401);
        throw new \Illuminate\Validation\ValidationException($validator, $response);
    }
}
