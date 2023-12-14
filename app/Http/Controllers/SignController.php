<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\signInModel;
use Illuminate\Support\Facades\DB;

class SignController extends Controller
{
     public function index(){
            return view('Sign_View');
        }

        public function create(Request $request){
            $this->validate($request,[
                'name'          => '',
                'username'      => 'required',
                'email'         => 'required|email',
                'phoneNumber'   => 'required',
                'address'       => 'required',
                'password'      => 'required',
                'confirmpassword'      => 'required'
            ]);
            $username     =$request->input('username');
            $name     =$request->input('name');
            $email      = $request->input('email');
            $phone     =$request->input('phoneNumber');
            $address     =$request->input('address');
            $password      = $request->input('password');
            $confirmpassword      = $request->input('confirmpassword');
            $result = strcasecmp($password, $confirmpassword);
            if ($result===0 &&$username != " " &&  $name != " " ) {
                $hashedpassword = password_hash($password, PASSWORD_DEFAULT);
                $data = array(
                    "username" =>  $username,
                    "email"=>  $email,
                    "password"=>  $hashedpassword,
                    "name" => $name,
                    "phone" => $phone,
                    "address" => $address
                    );
                $users = signInModel::insert($data);
                return redirect()->action('LoginController@index');
            } else {
                return redirect()->back()->with('alert','error!');
            }
           
        }
}
