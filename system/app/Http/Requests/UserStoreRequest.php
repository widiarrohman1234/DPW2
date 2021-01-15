<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserStoreRequest extends FormRequest
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
            'nama_user' => 'required',
            'username' => 'required|unique:user,username',
            'email' => 'required'
        ];
    }

    function messages(){
        return [
            'nama_user.required' => 'Field Nama Wajib di isi',
            'username.required' => 'Field Username Wajib di isi dan tidak boleh sama',
            'email.required' => 'Field Email Wajib di isi',


        ];
    }
}
