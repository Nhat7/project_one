<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\productModel;
use App\Models\billModel;
use App\Models\billDetailModel;
use App\Models\customerModel;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\DB;

class manageProductController extends Controller
{
    public function index(){
            $yamaha=DB::table('products')->where('catalogue','like','Yamaha')->paginate(4, ['*'], 'Yamaha');
            $honda=DB::table('products')->where('catalogue','like','Honda')->paginate(4, ['*'], 'Honda');
            $suzuki=DB::table('products')->where('catalogue','like','Suzuki')->paginate(4, ['*'], 'Suzuki');
            $kawasaki=DB::table('products')->where('catalogue','like','Kawasaki')->paginate(4, ['*'], 'Kawasaki');
            $ducati=DB::table('products')->where('catalogue','like','Ducati')->paginate(4, ['*'], 'Ducati');
            $sym=DB::table('products')->where('catalogue','like','SYM')->paginate(4, ['*'], 'SYM');
            return view('manage_Product_View',compact('yamaha','honda','suzuki','kawasaki','ducati','sym'));
        }
        public function edit(Request $request){
            $products = DB::table('products')->where('id',$request->id)->first();
            return view('edit',compact('products'));
        }
        public function update(Request $request, $id)
            {
            $request->validate([
                'catalogue' => 'required',
                'msp' => 'required',
                'type' => 'required',
                'product_name' => 'required',
                'product_img' => 'required',
                'price' => 'required',
                'product_price' => 'required',
                'product_description' => 'required',
            ]);
            $products = DB::table('products')
            ->where('id', $id)
            ->update([
                'catalogue' => $request->input('catalogue'),
                'msp' => $request->input('msp'),
                'type' => $request->input('type'),
                'product_name' => $request->input('product_name'),
                'product_img' => $request->input('product_img'),
                'price' => $request->input('price'),
                'sale' => $request->input('sale'),
                'product_price' => $request->input('product_price'),
                'product_description' => $request->input('product_description')
            ]);
            $alert="Successfully!";
            return redirect()->route('manage')->with('alert',$alert);
        }
 
        public function destroy($id)
        {
            $products = DB::table('products')
            ->where('id', $id)
            ->delete();
            return redirect()->route('manage');
        }

        public function add(){
            return view('add_View');
        }
        public function update_insert(Request $request)
        {
            $this->validate($request,[
                'catalogue' => 'required',
                'msp' => 'required',
                'type' => 'required',
                'product_name' => 'required',
                'product_img' => 'required',
                'price' => 'required',
                'product_price' => 'required',
                'product_description' => 'required',
            ]);
            $catalogue = $request->input('catalogue');
            $msp = $request->input('msp');
            $type = $request->input('type');
            $product_name = $request->input('product_name');
            $product_img = $request->input('product_img');
            $price = $request->input('price');
            $sale = $request->input('sale');
            $product_price = $request->input('product_price');
            $product_description = $request->input('product_description');
            $data = array(
                "catalogue" =>  $catalogue,
                "msp"=>  $msp,
                "type"=>  $type,
                "product_name" =>  $product_name,
                "product_img"=>  $product_img,
                "price"=>  $price,
                "sale"=>  $sale,
                "product_price"=>  $product_price,
                "product_description"=>  $product_description
                );
            $users = productModel::insert($data);
            $alert="Successfully!";
            return redirect()->route('manage')->with('alert',$alert);
        }
         
        public function search(Request $request)
        {
            $search = $request->get('manage_search');
            $products = DB::table('products')
            ->where('id','like',$search)
            ->orwhere('msp','like','%'.$search.'%')
            ->orWhere('type','like','%'.$search.'%')
            ->orWhere('catalogue','like','%'.$search.'%')
            ->orWhere('product_price','like','%'.$search.'%')
            ->orWhere('product_name','like','%'.$search.'%')->paginate(4, ['*'], 'products');
            return view('manage_Search_View',compact("products"));
        }
        public function bill(){
            $customers=DB::table('customer')
            ->paginate(5, ['*'], 'customers');
            return view('bill_Order_View',compact("customers"));
        }

        public function bill_detail($id){
                $customerInfo = DB::table('customer')
                                ->join('bills', 'customer.id', '=', 'bills.cus_id')
                                ->select('customer.*', 'bills.cus_id as bill_id', 'bills.total as bill_total', 'bills.note as bill_note')
                                ->where('customer.id', '=', $id)
                                ->first();
        
                $billInfo = DB::table('bills')
                            ->join('bill_details', 'bills.cus_id', '=', 'bill_details.bill_id')
                            ->leftjoin('products', 'bill_details.product_id', '=', 'products.id')
                            ->where('bills.cus_id', '=', $id)
                            ->select('bills.*', 'bill_details.*', 'products.product_name as product_name', 'products.product_price as product_price')
                            ->get();
        
                return view('bill_Detail_View', compact('customerInfo','billInfo'));
        }

        public function bill_destroy($id)
        {
            $customer1=customerModel::find($id)
            ->delete();
            Session::flash('message', "Successfully deleted");

            return Redirect::to('order');
        }
        public function bill_search(Request $request)
        {
            $search = $request->get('bill_search');
            $customers = DB::table('customer')
            ->where('cus_name','like',$search)
            ->orwhere('cus_email','like','%'.$search.'%')
            ->orWhere('cus_phone','like','%'.$search.'%')
            ->orWhere('cus_address','like','%'.$search.'%')
            ->paginate(5, ['*'], 'customers');
            return view('bill_order',compact("customers"));
        }
}
