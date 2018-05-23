@extends('layouts.template')

@section('stylesheet')
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
        <h3 class="m-b-none">Datatable</h3>
      </div>
      <section class="panel panel-default">
        <header class="panel-heading">
          DataTables 
          <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i> 
        </header>
        <div class="table-responsive">
          <table class="table table-striped m-b-none" data-ride="data-kategori">
            <thead>
              <tr>
                <th>ID</th>
                <th>Nama Kategori</th>
                <th>Set/Bukan</th>
                <th>Harga per gram</th>
                <th>Deskripsi</th>
              </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>
      </section>
    </section>
  </section>
  <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
</section>

@endsection

@section('script')
    <!-- script file-->
    <script src="{{ asset('notebook/js/datatables/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript">
      $('[data-ride="data-kategori"]').each(function() {
        var oTable = $(this).dataTable( {
          "bProcessing": true,
          "data": "{{ json_encode($list_kategori) }}",
          "sDom": "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
          "sPaginationType": "full_numbers",
          "columns": [
            { "mData": "category_id" },
            { "mData": "name" },
            { "mData": "set_or_no" },
            { "mData": "price_per_gram" },
            { "mData": "description" }
          ]
        } );
      });
    </script>
@endsection