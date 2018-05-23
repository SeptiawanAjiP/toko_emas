@extends('layouts.template')

@section('stylesheet')
  <link rel="stylesheet" href="{{ asset('notebook/js/fuelux/fuelux.css') }}" type="text/css"/>
    <!-- css file -->
@endsection

@section('content')

<section id="content">
  <section class="vbox">
    <section class="scrollable padder">
      <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="#">Transaksi</a></li>
        <li class="active">Pembelian</li>
      </ul>
      <div class="m-b-md">
        <h3 class="m-b-none">Pembelian</h3>
      </div>
      <div class="panel panel-default">
        <div class="wizard clearfix" id="form-wizard">
          <ul class="steps">
            <li data-target="#step1" class="active"><span class="badge badge-info">1</span>Nota</li>
            <li data-target="#step2"><span class="badge">2</span>Produk</li>
            <li data-target="#step3"><span class="badge">3</span>Konfirmasi</li>
          </ul>
        </div>
        <div class="step-content">
          <form>
            <!-- step 1 -->
            <div class="step-pane active" id="step1">
              <p class="m-t">Tanggal:</p>
              <input type="text" class="form-control" data-trigger="change" name="tanggal" data-required="true">
              <p class="m-t">ID Nota:</p>
              <input type="text" class="form-control" data-trigger="change" name="id_nota" data-required="true">
            </div>
            <!-- step 2 -->
            <div class="step-pane" id="step2">
              <p class="m-t">Kategori:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Kategori">
              <p class="m-t">Berat:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Berat">
              <p class="m-t">Harga per Gram:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Harga per Gram">
              <p class="m-t">Ongkos Penjualan:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Ongkos Penjualan">
              <p class="m-t">Status:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Status">
            </div>
            <!-- step 3 -->
            <div class="step-pane" id="step3">
              <p class="m-t">Total Sale:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Total Sale">
              <p class="m-t">Total Trade in:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Total Sale">
              <p class="m-t">Total:</p>
              <input type="text" class="form-control" data-trigger="change" data-required="true" placeholder="Total Sale">
            </div>                
          </form>
          <div class="actions m-t">
            <button type="button" class="btn btn-default btn-sm btn-prev" data-target="#form-wizard" data-wizard="previous" disabled="disabled">Prev</button>
            <button type="button" class="btn btn-default btn-sm btn-next" data-target="#form-wizard" data-wizard="next" data-last="Finish">Next</button>
          </div>
        </div>
      </div>
    </section>
  </section>
  <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
</section>

@endsection

@section('script')
    <!-- script file-->
    <script src="{{ asset('notebook/js/fuelux/fuelux.js') }}"></script>
    <script src="{{ asset('notebook/js/parsley/parsley.min.js') }}"></script>
@endsection