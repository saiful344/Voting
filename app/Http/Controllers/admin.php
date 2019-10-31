<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Input;
use \App\calon;
use \App\hasil;
use \App\active;
use DB;

class admin extends Controller
{
    public function home(){
        $user = Input::count('*');
        $active = active::count('*');
        $chooice = hasil::count('*');
        $before = $user - $chooice;
    	return view('admin.index',['user' => $user,'active' => $active,'chooice' => $chooice,'before' => $before]);
    }
    public function user_all(){
        $datauser = Input::all();
    	return view('admin.asset.user-all',['data_user' => $datauser]);
    }
    public function add_user_all(){
    	return view('admin.asset.add');
    }
    public function upload(Request $request){
    	$pass = strtolower(str_random(4));
    	$user = new Input;
    	$user->name = request('nama');
        $user->email  = request('nis');
    	$user->nis  = request('nis');
        $user->kelas  = request('kelas');
    	$user->password = bcrypt($pass);
    	$user->remember_token =str_random(60);
        $user->password_rec = $pass;
    	$user->save();

        return redirect('/add-user-all');

    }
    public function candidate_user(){
        $datauser = calon::all();
        return view('admin.asset.candidate',['data_candidate' => $datauser]);
    }
    public function add_candidate(){
        return view('admin.asset.add_candidate');
    }
    public function upload_candidate(Request $request){
        $user = new calon;
        $user->no_paslon = request('no');
        $user->nama = request('nama');
        $user->nis  = request('nis');
        $user->kelas  = request('kelas');
        $user->visi = request('visi');
        $user->misi = request('misi');
        $user->caption = request('caption');
        $user->save();

        return redirect('/candidate_user');
    }
    public function candidate_edit($id){
        $data = calon::find($id);
        return view('admin.asset.edit',['data' => $data]);

    }
    public function upload_edit(Request $request,$id){
            $data = calon::find($id);
            $data->no_paslon = request('no');
            $data->nama = request('nama');
            $data->nis  = request('nis');
            $data->kelas  = request('kelas');
            $data->visi = request('visi');
            $data->misi = request('misi');
            $data->caption = request('caption');
            $data->update();
            return redirect('/candidate_user');
           }
    public function delete($id){
        $data = calon::find($id);
        $data->delete();
        return redirect('/candidate_user');
    }
    public function result(){
     $data =  DB::table("calon")
        ->select("calon.no_paslon", "calon.nama", DB::raw("COUNT(no_paslon) as data"))
        ->join("hasil","hasil.id_calon","=","calon.no_paslon")
        ->groupBy("calon.no_paslon")
        ->get();
        // dd($data);
        $calon = DB::table('calon')->select('nama')->get();
        // $show = json_encode($calon);
        // dd(json_encode($data));
        // dd($data)
        return view('admin.asset.result',['hasil' => $calon,'data' => $data]);
    }
    public function pesan(){
        $data =  DB::table("hasil")
        ->select("hasil.*","users.name","users.kelas")
        ->join("users","users.id","=","hasil.id_user",'left')
        ->orderBy("hasil.created_at")
        ->get();
        // dd($data);
        return view('admin.asset.pesan',['data' => $data]);
    }
}
