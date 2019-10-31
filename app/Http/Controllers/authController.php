<?php

namespace App\Http\Controllers;
use Auth;
use \App\active;
use Illuminate\Http\Request;

class authController extends Controller
{
public function login(){
	return view('auth.login');
}
public function postlogin(Request $request){
 if (Auth::attempt($request->only('email','password'))) {
 	// if ($data == FALSE) {
 	if (Auth::user()->role == "user") {
 			return redirect("/home");
 	} else {
 			return redirect("/home-admin");
 	}

// }
 }
 return redirect("/login");
} 

public function logout(){
		Auth::logout();
		// session::flash('message','Terima Kasih Sudah Memilih');
	return redirect("/login");
}
}
