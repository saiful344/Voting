<!DOCTYPE html>
<html>
<head>
  <title>Cekin-app</title>
  <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('css/login2.css')}}">

    <link href="{{asset('admin/vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">

  <!-- <link rel="stylesheet" type="text/css" href="{{ asset('css/cekin.css')}}"> -->
  <link rel="stylesheet" type="text/css" href="{{ asset('css/icon/css/materialdesignicons.min.css') }}">
<link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet">
</head>
<style type="text/css">
    .container-login100 {
    width: 100%;
    min-height: 100vh;
    display: inline-block;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    padding: 15px;
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
  .choice-btn{
  background: linear-gradient(to right, rgba(82,239,250,1) 0%, rgba(93,169,240,0.94) 100%);
  border-radius: 100px;
  border: 0px;
  font-size: 22px;
  box-shadow: 0px -29px 6px rgba(0, 0, 0, 0), 0px 1px 6px rgba(0, 0, 0, 0.23);
  cursor: pointer;
  color: #fff;
  padding: 5px 20px 5px 20px;
  transition: 0.5s;
}
.choice-btn:hover{
    box-shadow: 0px -3px 6px rgba(0, 0, 0, 0), 0px 5px 6px rgba(0, 0, 0, 0.23);
}
.choice-btn img{
  width: 43px;
}
  .col-gg{
    background-color: #fff  ;
    background-size: cover;
    padding: 30px!important;
    margin: auto;
    margin-top: 1%;
    border-radius: 20px;
    -webkit-box-shadow: 10px 10px 19px -13px rgba(0,0,0,0.37);
    -moz-box-shadow: 10px 10px 19px -13px rgba(0,0,0,0.37);
    box-shadow: -3px 5px 19px -13px rgba(0,0,0,0.37);
 font-family: 'Varela Round', sans-serif;
}
  .cycle{
    border-radius: 50%;
    padding: 5px;
    background: #72e3de;
    height: 30px;
    width: 30px;
    text-align: center;
  }
  .name{
    padding: 5px;
  }
  .pg-t-5{
    padding-top: 2%;
  }
</style>
<body>
    <div class="container-login100" style="background-image: url('{{asset('css/images/bg-01.jpg')}}');">
      <a href="/home"><i class="fa fa-arrow-circle-o-left" style="font-size:40px;color: #fff"></i> </a>
  <!-- <div class="row col-md-9 col-sm-12 col-xm-12 col-pack" style="margin-top: 2%!important"> -->
    <div class="col-md-12 col-pack-two">
    <div class="row col-md-9 col-sm-12 col-xm-12 col-gg">
      <p class="cycle">{{$calon->no_paslon}}</p><p class="name">{{$calon->nama}}</p>
      <div class="col-md-12"></div>
       <img src='{{ asset("css/image/calon/$calon->gambar") }}' class="image-pp mx-auto" >
       <div class="col-md-12"></div>
       <div class="row col-md-12 mt-2 ml-1 ">
         <div class="col-6 pd-t-5 " style="border-right: 2px solid  #72e3de">
           <h3 class="text-center" style="margin-top: 5%;">Visi</h3>
           <ol>
             <p style="text-align: left;">{{$calon->visi}}</p>
           </ol>
         </div>
          <div class="col-6" style="border-left: 2px solid  #72e3de">
           <h3 class="text-center" style="margin-top: 5%;"  >Misi</h3>
            <ol>
            <?php echo htmlspecialchars_decode($calon->misi) ?>
           </ol>
         </div>
       </div>
         <form method="post" action="/pilih" class="col-md-12 mt-2">
            {{csrf_field()}}
            <input type="hidden" name="id_calon" value="{{$calon->no_paslon}}">
            <input type="hidden" name="id_user" value="{{Auth::id()}}">
            <div class="text-center col-md-12">
            <button class="choice-btn" type="submit"><img src="{{asset('css/image/tap.svg')}}"> Pilih</button>
          </div>
      </form>
     </div>
  </div>
</div>
</body>
</html>