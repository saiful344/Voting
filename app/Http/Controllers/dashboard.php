<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\hasil;
use \App\calon;
use Auth;

class dashboard extends Controller
{
	public function index(){
    return view('welcome');
}
public function home(){
	$id = Auth::id();
	$data = hasil::find($id);
	if ($data == FALSE) {
	$datacalon = \App\calon::all();
	return view('user.home',[ 'data_calon' => $datacalon]);
}
		return redirect('/comand');
}
public function pilih(Request $request)
{
	
		$user = new hasil();
		$user->id_calon = request('id_calon');
		$user->id_user  = request('id_user');
		$user->save();
		return redirect('/comand');


}
public function comand(Request $request)
{
	return view('user.feedback');
}
public function comadpost(Request $request){
	$id = $request('id_user');
	DB::table('hasil')->where('id',$id)->update([
		'comand' => $request->comand
	]);
}
public function comandpostadd(Request $request,$id){
	$hasil = \App\hasil::find($id);
	$hasil->comand = request('comand');
	$hasil->update();
	
	return redirect('/feedback');
}

public function feedbackhome(){
	return view('user.feedapp');
}

public function responpostadd(Request $request,$id){
	$hasil = \App\hasil::find($id);
	$hasil->feedback = request('respon');
	$hasil->respon_comand = request('comand_respon');
	$hasil->update();
	
	return redirect('/logout');
}

public function close(){
	return view('user.close');
}
public function visi_misi($id){
	$calon = calon::find($id);
	return view('user.visi_misi',['calon' => $calon]);
}
}
