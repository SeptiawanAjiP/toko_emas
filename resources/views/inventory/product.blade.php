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
          <h3 class="m-b-none">Stok Barang</h3>
          </div>
          <div class="doc-buttons">
              <a href="{{ url('tambah-produk') }}" class="btn btn-s-md btn-success"> + Tambah Produk</a>
          </div>
          <section class="panel panel-default">
            <header class="panel-heading">
              Stok Barang Toko Sami Jaya
              <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i> 
            </header>
            <div class="table-responsive">
              <table id="inventori" class="table table-striped m-b-none">
                <thead>
                  <tr>
                    <th width="10%">ID</th>
                    <th width="20%">NAMA BARANG</th>
                    <th width="15%">JENIS BARANG</th>
                    <th width="15%">DESKRIPSI</th>
                    <th width="15%">KADAR</th>
                    <th width="10%">BERAT</th>
                    <th width="15%">KUANTITAS</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($products as $product)
                    <tr>
                      <td>{{$product->id }}</td>
                      <td>{{ $product->name}}</td>
                      <td>{{ $product->kategori}}</td>
                      <td>{{ $product->description}}</td>
                      <td>{{ $product->kadar}} %</td>
                      <td>{{ $product->weight}} gram</td>
                      <td>Rp {{ $product->harga}}</td>
                    </tr>
                  @endforeach
                </tbody>
            </table>
                </div>
            <div class="row">
              <div class="col-sm-5">
                <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to {{count($products)}} of {{count($products)}} entries</div>
                </div>
                <div class="col-sm-7">
                  <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
                        {{ $products->links() }}
                  </div>
                </div>
            </div>
          </section>
        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
      </section>
    </section>
</section>
  <!-- datatables -->
<script src="{{ asset('notebook/js/datatables/jquery.dataTables.min.js') }}"></script>
<script>
  $(function () {
    $('#inventori').DataTable({
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