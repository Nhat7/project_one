<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ContactMessage;

class ContactController extends Controller
{
    public function index()
    {
        return view('contact_View');
    }

    public function submitForm(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string',
        ]);

        $message = new ContactMessage();
        $message->name = $validatedData['name'];
        $message->email = $validatedData['email'];
        $message->message = $validatedData['message'];
        $message->save();

        // Gửi email hoặc thực hiện các hành động khác ở đây
        if($message->message == "" || $message->name == ""){
            return redirect()->back()->with('success', 'Tin nhắn của bạn đã được gửi khong thành công!');
        } else {
               return redirect()->back()->with('success', 'Tin nhắn của bạn đã được gửi thành công!');
        }
     
    }
}
