@extends('admin.head.top')
@section('content')
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Data Users <small>Candidate</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <a href="/add-candidate" type="button" class="btn btn-round btn-default" style="float: right;"><i class="fa fa-plus-circle "></i> Add</a>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>No Pilih</th>
                          <th>Nama</th>
                          <th>Gambar</th>
                          <th>Created At</th>
                          <th>Updated At</th>
                          <th>Dev</th>
                        </tr>
                      </thead>


                      <tbody>
                        @foreach($data_candidate as $user)
                        <tr>
                          <td>{{$user->no_paslon}}</td>
                          <td>{{$user->nama}}</td>
                          <td>{{$user->gambar}}</td>
                          <td>{{$user->created_at}}</td>
                          <td>{{$user->updated_at}}</td>
                          <td><a class="btn btn-primary" href="/candidate/{{$user->no_paslon}}/edit">Edit</a> || <a class="btn btn-danger" href="/candidate/{{$user->no_paslon}}/hapus">Delete</a></td>
                        </tr>
                       @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
@endsection