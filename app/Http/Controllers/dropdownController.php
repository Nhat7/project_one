<?php

namespace App\Http\Controllers\Main;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class dropdownController extends Controller
{
    public function XG(){
            $products=DB::table('products')->where('type','like','XG')->paginate(4, ['*'], 'products');
            return view('show_dropdown',compact('products'));
        }
        public function XS(){
            $products=DB::table('products')->where('type','like','XS')->paginate(4, ['*'], 'products');
            return view('show_dropdown',compact('products'));
        }
        public function PKL(){
            $products=DB::table('products')->where('type','like','PKL')->paginate(4, ['*'], 'products');
            return view('show_dropdown',compact('products'));
        }
        public function XC(){
            $products=DB::table('products')->where('type','like','XC')->paginate(4, ['*'], 'products');
            return view('show_dropdown',compact('products'));
        }
}
