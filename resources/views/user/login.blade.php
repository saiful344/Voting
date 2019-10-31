<!DOCTYPE html>
<html>
<head>
	<title>Login-cekin</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/login.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/icon/css/materialdesignicons.min.css') }}">
<link href="https://fonts.googleapis.com/css?family=Lexend+Deca|Righteous&display=swap" rel="stylesheet">
<style type="text/css">
		.bod-2{
/*		background-image: linear-gradient(to bottom right, #6de2dd 0%, #ffffff 100%);
background-size: cover;
  padding: 0px;
  margin: 0px;*/
  border-radius: 20px;
  padding-top: 5%;
  padding-bottom: 10%;
	}
</style>
</head>
<body>

	<div class="body">
	<div class="row col-md-3 col-sm-12 col-xm-12 col-pack" style="padding-bottom: 2%;">
		<div class="col-md-12 col-pack-two text-center bod-2">
		<img src="{{ ('css/image/logooo.png') }}" class="logo-sign">
			<h5 class=""> Sign in</h5>
			<form action="/postlogin" method="POST">
				{{csrf_field()}}
			<!-- <div class="input-group col-md-12 mb-3 mt-3 mx-auto"> -->
			    <div class="input-group-prepend">
			      <div class="input-group-text in-1" id="btnGroupAddon2"><i class="mdi mdi-account-location"></i></div>
			    </div>
			    <input type="text" class="form-control fm" placeholder="NIS" aria-label="Input group example" aria-describedby="btnGroupAddon2" name="email" autocomplete="off">
			  <!-- </div> -->
			<div class="input-group col-md-12 mx-auto">
			    <div class="input-group-prepend">
			      <div class="input-group-text in-1" id="btnGroupAddon2"><i class="mdi mdi-account-key"></i></div>
			    </div>
			    <input type="password" class="form-control fm" placeholder="Password" aria-label="Input group example" aria-describedby="btnGroupAddon2" name="password" autocomplete="off">
			  </div> 
			  <button type="submit" class="choice-btn mt-4">Login</button>
			<!--   <p class="text-center mt-2"><a href="#" class="text-center mt-2">Lupa password ?</a></p> -->
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>