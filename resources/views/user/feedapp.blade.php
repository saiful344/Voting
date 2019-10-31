<!DOCTYPE html>
<html>
<head>
	<title>Rate App</title>
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
<body style="background-color:  linear-gradient(to bottom right, #6de2dd 0%, #ffffff 100%);">
	  
    <div class="container-login100" style="background-image: url('{{asset('css/images/bg-01.jpg')}}');">
	<div class="row col-md-5 col-sm-12 col-xm-12 col-pack">
		<div class="col-md-12 col-pack-two text-center">
			<form action="/post/{{Auth::id()}}/comand-respon" method="POST">
				{{csrf_field()}}
				<p class="text-center mt-4">Beri penilaian untuk aplikasi ini</p>
				<div class="row">
					<div class="gb-like1 col-md-6">
						<img src="{{ ('css/image/like.svg') }}" class="like like1">
					</div>
					<div class="gb-like2 col-md-6 text-left">
						<img src="{{ ('css/image/no-like.svg') }}" class="like like2">
					</div>
				</div>
				<input type="hidden" name="respon" value="" id="respon">
				<div class="form-group">
			  </div>
			  <button type="submit" class="choice-btn mt-4 mb-5">Kirim</button>
			</div>
			</form>
		</div>
	</div>
</div>
	<script type="text/javascript" src="{{ asset('js/app.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function(){
		console.log('ok');
	})
	$(".like1").click(function(){
		$(this).attr('class','like like1 chooice');
	    $(".like2").attr('class','like like2 no-chooice');
	    $("#respon").attr('value','1');
	});
	$(".like2").click(function(){
		$(this).attr('class','like like2 chooice');
	    $(".like1").attr('class','like  like1 no-chooice');
	    $("#respon").attr('value','0');
	});
</script>

</body>
</html>