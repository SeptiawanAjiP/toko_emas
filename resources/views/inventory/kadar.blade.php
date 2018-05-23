@extends('layouts.template')

@section('stylesheet')
  <link rel="stylesheet" href="{{ asset('notebook/js/fuelux/fuelux.css') }}" type="text/css"/>
  <link rel="stylesheet" href="{{ asset('notebook/js/datatables/datatables.css') }}" type="text/css"/>
    <!-- css file -->
@endsection

@section('content')
<section id="content">
  <section class="vbox">
      <section class="scrollable padder">
          <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
          <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
          <li><a href="#">UI kit</a></li>
          <li><a href="#">Table</a></li>
          <li class="active">Datatable</li>
          </ul>
          <div class="m-b-md">
          <h3 class="m-b-none">Kadar Barang</h3>
          </div>
          <div class="doc-buttons">
              <a href="{{ url('add-content')}}" class="btn btn-s-md btn-success" data-toggle="modal"> + Tambah Kadar</a>
          </div>
          <section class="panel panel-default">
            <header class="panel-heading">
              Kadar Barang Toko Sami Jaya
              <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i> 
            </header>
            <div class="table-responsive">
              <table id="kategori" class="table table-striped m-b-none">
                <thead>
                  <tr>
                    <th width="20%">KADAR</th>
                    <th width="35%">DESKRIPSI</th>
                    <th width="45s%">AKSI</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($contents as $content)
                  <tr>
                    <td>{{$content->percent}} %</td>
                    <td>{{$content->description}}</td>
                    <td>
                      <div class="row">
                        <div class="col-sm-6">
                          <form class="row" method="POST" action="{{ url('edit-content') }}" align ="center">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <input type="hidden" name="id" value="{{ $content->id }}">
                            <input type="hidden" name="state" value="update">
                            <button type="submit" class="btn btn-s-md btn-warning col-sm-6 col-xs-5 btn-margin">
                              Edit
                            </button>
                          </form>
                        </div>
                        <div class="col-sm-6">
                          <form class="row" method="POST" action="{{ url('update-content') }}" onsubmit = "return confirm('Yakin akan menghapus?')" align="center">
                            <input type="hidden" name="state" value="delete">
                            <input type="hidden" name="id" value="{{$content->id}}">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <button type="submit" class="btn btn-s-md btn-danger col-sm-6 col-xs-5 btn-margin">
                              Hapus
                            </button>
                          </form>
                        </div>
                        
                        
                      
                      </div>
                      
                    </td>
                  </tr>
                  @endforeach
                </tbody>
            </table>
                </div>
            <div class="row">
              <div class="col-sm-5">
                <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to {{count($contents)}} of {{count($contents)}} entries</div>
              </div>
              <div class="col-sm-7">
                <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
                    {{ $contents->links() }}
                </div>
              </div>
            </div>
          </section>
        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
      </section>
    </section>
</section>

<script src="{{ asset('notebook/js/datatables/jquery.dataTables.min.js') }}"></script>
<script>
  $(function () {
    $('#kategori').DataTable({
      'paging'      : false,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : false,
      'autoWidth'   : false,
    })
  })
</script>
@endsection