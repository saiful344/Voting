<!DOCTYPE html>
<html>
<head>
	<title>Send </title>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/login2.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/icon/css/materialdesignicons.min.css') }}">
<link href="https://fonts.googleapis.com/css?family=Lexend+Deca|Righteous&display=swap" rel="stylesheet">
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
</style>
</head>

<body>
	 
    <div class="container-login100" style="background-image: url('{{asset('css/images/bg-01.jpg')}}');">
	<div class="row col-md-5 col-sm-12 col-xm-12 col-pack">
		<div class="col-md-12 col-pack-two text-center">
			
			<form action="/post/{{Auth::id()}}/comand-post" style="padding-right: 10px;padding-left: 10px;" method="POST">
				{{csrf_field()}}
				<img src="{{ ('css/images/mm.png') }}" class="logo-sign">
				<div class="form-group">
			    <textarea class="form-control " id="exampleFormControlTextarea1" rows="7" placeholder="Tuliskan Kesan atau saran anda untuk MULTIMEDIA SKANSA   ...." name="comand"></textarea>
			  </div>

			  <button type="submit" class="choice-btn mt-4 mb-5">Kirim</button>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>