@extends('user.head.app')

@section('content')

<div class="row mx-auto bungkus">
  @foreach($data_calon as $calon )
  <aside class="profile-card">
    <header>
      <!-- here’s the avatar -->
      <a target="_blank" href="/visi-misi/{{$calon->no_paslon}}/get">
        <img src='{{ asset("css/image/calon/$calon->gambar") }}' class="hoverZoomLink">
      </a>

      <!-- the username -->
      <h1>{{$calon->nama}}</h1>

      <!-- and role or location -->
      <h2>{{$calon->kelas}}</h2>

    </header>

    <!-- bit of a bio; who are you? -->
    <div class="profile-bio" style="height: 100px">

      <p>" {{$calon->caption}} "</p>

    </div>

    <!-- some social links to show off -->
    <ul class="profile-social-links">
      <form method="post" action="/pilih">
        {{csrf_field()}}
        <input type="hidden" name="id_calon" value="{{$calon->no_paslon}}">
        <input type="hidden" name="id_user" value="{{Auth::id()}}">
        <div class="text-center">
      	<button class="choice-btn" type="submit"><img src="{{asset('css/image/tap.svg')}}"> Pilih</button>
      </div>
      </form>
    </ul>
  </aside>
@endforeach
</div>

@endsection