<!DOCTYPE html>
<html>
<head>
	<title>Login-cekin</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/login2.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/icon/css/materialdesignicons.min.css') }}">
<link href="https://fonts.googleapis.com/css?family=Lexend+Deca|Righteous&display=swap" rel="stylesheet">
<style type="text/css">
</style>
</head>
<body>
	<div class="body">
	<div class="row col-md-5 col-sm-12 col-xm-12 col-pack text-center">
		<div class="col-md-12 col-pack-two text-center">
			
			<form action="/" method="POST" class="text-center">
				{{csrf_field()}}
				<h4 class="text-center mt-4">Trima Kasih</h4>
				<img src="{{ ('css/image/thankful.svg') }}" style="width: 25%;">
			  </div>
			  <a style="text-decoration: none;color: #fff;"href="/logout" class="choice-btn mt-4 mb-5 mx-auto text-decoration-none">Keluar</a>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>