<!DOCTYPE html>
<html>
<head>
	<title>Cekin</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/cekin.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/icon/css/materialdesignicons.min.css') }}">
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
@yield('content')
</div>
<script type="text/javascript" src="{{ asset('js/cekin.js') }}"></script>
</body>
</html> 