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
                    <h2>Data Users <small>Chooice</small></h2>
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
                      <a href="/add-user-all" type="button" class="btn btn-round btn-default" style="float: right;"><i class="fa fa-plus-circle "></i> Add</a>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>No</th>
                          <th>Name</th>
                          <th>Password</th>
                          <th>Nis</th>
                          <th>Kelas</th>
                          <th>Created_at</th>
                        </tr>
                      </thead>


                      <tbody>
                        <?php $i =1 ?>
                        @foreach($data_user as $user)
                        <tr>
                          <td>{{$i++}}</td>
                          <td>{{$user->name}}</td>
                          <td>{{$user->password_rec}}</td>
                          <td>{{$user->nis}}</td>
                          <td>{{$user->kelas}}</td>
                          <td>{{$user->created_at}}</td>
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
            <script src="{{asset('admin/build/js/custom.min.js')}}"></script>
@endsection