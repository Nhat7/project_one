<?php

namespace App\Http\Controllers;

use App\Models\signInModel;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = DB::table('users');
        return view('Login_View');
    }
    public function login (Request $request){
        $username = $request->username;
        $password = $request->password;
        $email = $request ->email;
        $alert ='Incorrect username';
        $alert1 ='Incorrect password';
        $alert2='Incorrect email';
        $credentials = array('username'=>$request->username,'password'=>$request->password,'email'=>$request->email);
        $result = signInModel::where("username",$username)->first(['password']);
        if(!$result){
            return redirect()->back()->with('alert',$alert);
        }
        else{
            $hashedPassword =$result->password;
            if (\Hash::check($request->password, $hashedPassword)) {
                \Auth::loginUsingId(1);
                if(Auth::attempt($credentials)){
                return redirect()->action('pageController@index');
                }
                else{
                    return redirect()->back();
                }
            }else{
                return redirect()->back()->with('alert',$alert1);
            }
        }
    }
    public function logout(){
        Auth::logout();
        return redirect()->route('trangchu');
    }
}
