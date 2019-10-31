@extends('admin.head.top')
@section('content')
      
        <!-- page content -->
        <div class="right_col" role="main">
            <div class="page-title">
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                </div>
              </div>
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
          
            <div class="col-md-12 col-sm-6 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Users Message </h2>
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
                  <ul class="list-unstyled timeline">
                    @foreach($data as $cek)
                    <li>
                      <div class="block">
                        <div class="tags">
                          <a href="" class="tag">
                            <span>Users</span>
                          </a>
                        </div>
                        <div class="block_content">
                          <h2 class="title">
                                          <a>{{$cek->name}}</a>
                                      </h2>
                          <div class="byline">
                            <span>{{$cek->created_at}}</span> {{$cek->kelas}}
                          </div>
                          <p class="excerpt">{{$cek->comand}}</a>
                          </p>
                        </div>
                      </div>
                    </li>
                    @endforeach
                  </ul>

                </div>
              </div>
            </div>

              </div>
            </div>
          </div>
        </div>
          <!-- /page content -->   
  
@endsection