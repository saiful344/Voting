@extends('admin.head.top')
@section('content')

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">

            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Input New Candidate<small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="/upload_candidate_edit/{{$data->no_paslon}}/upload_edit">
                      {{csrf_field()}}
                      <div class="form-group">
                        <label class=" col-md-3 col-sm-3 col-xs-12" for="first-name">No Id<span class="required">*</span>
                        </label>
                        <div class="col-md-1 col-sm-6 col-xs-12">
                        <input type="number" min="0" max="5" autocomplete="off" id="last-name" name="no" required="required" class="form-control col-md-7 col-xs-12" value="{{$data->no_paslon}}">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class=" col-md-3 col-sm-3 col-xs-12" for="first-name">Nama Candidate<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" autocomplete="off" id="last-name" name="nama" required="required" class="form-control col-md-7 col-xs-12" value="{{$data->nama}}">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-3 col-sm-3 col-xs-12" for="last-name">NIS Candidate<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" autocomplete="off" id="last-name" name="nis" required="required" class="form-control col-md-7 col-xs-12" value="{{$data->nis}}">
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="col-md-3 col-sm-3 col-xs-12" for="last-name">Kelas Candidate<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" autocomplete="off" id="last-name" name="kelas" required="required" class="form-control col-md-7 col-xs-12"  value="{{$data->kelas}}">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class=" col-md-3 col-sm-3 col-xs-12" for="first-name">Caption<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" autocomplete="off" id="last-name" name="caption" required="required" class="form-control col-md-7 col-xs-12" placeholder='Masukan caption dalam tanda " isi caption "' value="{{$data->caption}}"> 
                        </div>
                      </div>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                          <div class="x_title">
                            <h2>Visi<small>Sessions</small></h2>
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
                            <textarea id="editor-one" class="editor-wrapper col-md-12" name="visi">{{$data->visi}}</textarea>
                            
                        </div>
                      </div>

                      <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                          <div class="x_title">
                            <h2>Misi<small>Sessions</small></h2>
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
                            <textarea id="editor-one" class="editor-wrapper col-md-12" name="misi">{{$data->misi}}</textarea>
                            
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div id="gender" class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                            </label>
                            <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="female"> Female
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      
@endsection 