<?php

namespace App\Http\Controllers;

use App\Models\ProductModel;
use App\Models\signInModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class pageController extends Controller
{
    public function index(){
        $sales = ProductModel::where('sale', '1')->get();
        $summers = ProductModel::where('type','like','%XS%')->get();
        $news = ProductModel::where('type', 'like', '%PKL%')->get();
        return view('homeView',compact('sales', 'summers', 'news'));
        }


        public function yamaha() {
            $xs = ProductModel::where('type', 'YXS')->paginate(4, ['*'], 'xs');
            $xg = ProductModel::where('type', 'YXG')->paginate(4, ['*'], 'xg');
            $pkl = ProductModel::where('type', 'YPKL')->paginate(4, ['*'], 'pkl');
            return view('page_Yamaha_View', compact('xs', 'xg', 'pkl'));
        }
    
        public function honda() {        
            $xs = ProductModel::where('type', 'HXS')->paginate(4, ['*'], 'xs');
            $xg = ProductModel::where('type', 'HXG')->paginate(4, ['*'], 'xg');
            $pkl = ProductModel::where('type', 'HPKL')->paginate(4, ['*'], 'pkl');
            $xc = ProductModel::where('type', 'HXC')->paginate(4, ['*'], 'xc');
            return view('page_Honda_View', compact('xs', 'xg', 'pkl', 'xc'));
        }
    
        public function ducati() {
            $xs = ProductModel::where('type', 'DXS')->paginate(4, ['*'], 'xs');
            $xg = ProductModel::where('type', 'DXG')->paginate(4, ['*'], 'xg');
            $pkl = ProductModel::where('type', 'DPKL')->paginate(4, ['*'], 'pkl');
            $xc = ProductModel::where('type', 'DXC')->paginate(4, ['*'], 'xc');
            return view('page_Ducati_View', compact('xs', 'xg', 'pkl', 'xc'));
        }
    
        public function kawasaki() {
             
            $pkl = ProductModel::where('type', 'KPKL')->paginate(4, ['*'], 'pkl');
            return view('page_Kawasaki_View', compact('pkl'));
        }
    
        public function suzuki() {
            $xg = ProductModel::where('type', 'SXG')->paginate(4, ['*'], 'xg');
            $xc = ProductModel::where('type', 'SXC')->paginate(4, ['*'], 'xc');
            return view('page_Suzuki_View', compact('xg', 'xc'));
        }
    
        public function sym() {
            $xs = ProductModel::where('type', 'SYXS')->paginate(4, ['*'], 'xs');
            $xg = ProductModel::where('type', 'SYXG')->paginate(4, ['*'], 'xg');
            $pkl = ProductModel::where('type', 'SYPKL')->paginate(4, ['*'], 'pkl');
            $xc = ProductModel::where('type', 'SYXC')->paginate(4, ['*'], 'xc');
            return view('page_SYM_View', compact('xs', 'xg', 'pkl', 'xc'));
        }

        public function bmw() {
            $xs = ProductModel::where('type', 'BXS')->paginate(4, ['*'], 'xs');
            $xg = ProductModel::where('type', 'BXG')->paginate(4, ['*'], 'xg');
            $pkl = ProductModel::where('type', 'BPKL')->paginate(4, ['*'], 'pkl');
            $xc = ProductModel::where('type', 'BXC')->paginate(4, ['*'], 'xc');
            return view('page_BMW_View', compact('xs', 'xg', 'pkl', 'xc'));
        }


        public function detail(Request $request){
            $products = DB::table('products')->where('id',$request->id)->first();
            return view('detail_Product_View',compact('products'));
        } 

        public function profile(Request $request){
            $profile = signInModel::first();
            return view('profile_View', compact('profile'));
        }

}
