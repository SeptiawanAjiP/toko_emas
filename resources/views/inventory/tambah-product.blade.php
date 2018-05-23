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
                <li><a href="#">Form</a></li>
                <li class="active">Elements</li>
              </ul>
              <div class="m-b-md">
                <h3 class="m-b-none">Tambah Produk</h3>
              </div>
              <div class="row">
                <div class="col-sm-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Tambah Satu Produk</header>
                    <div class="panel-body">
                      <form class="bs-example form-horizontal" method="POST" action="{{ url('save-product') }}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-group">
                          <label class="col-sm-2 control-label">Kategori</label>
                          <div class="col-sm-10">
                            <select name="category_id" class="form-control m-b">
                              <option value="null">-- Pilih Kategori --</option>
                              @foreach ($kategoris as $kategori)
                                <option value="{{ $kategori->id}}">{{ $kategori->name }}</option>
                              @endforeach
                            </select>
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2 control-label">Kadar</label>
                          <div class="col-sm-10">
                            <select name="content_id" class="form-control m-b">
                              <option>-- Pilih Kadar --</option>
                              @foreach ($kadars as $kadar)
                                <option value="{{$kadar->id}}">{{$kadar->percent}} %</option>
                              @endforeach
                            </select>
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-2 control-label">Berat</label>
                          <div class="col-lg-10">
                            <input type="number" name="weight" class="form-control" placeholder="Berat">
                            <span class="help-block m-b-none"> (dalam gram)</span>
                          </div>
                        </div> 
                        <div class="form-group">
                          <label class="col-lg-2 control-label">Deskripsi</label>
                          <div class="col-lg-10">
                            <input type="text" name="description" class="form-control" placeholder="Deskripsi">
                          </div>
                        </div>   
                        <div class="form-group">
                          <div class="col-lg-offset-2 col-lg-10">
                            <button type="submit" class="btn btn-sm btn-default">Tambah Produk</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </section>
                </div>
                <div class="col-sm-6">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Tambah Banyak Produk</header>
                    <div class="panel-body">
                      <form role="form">
                        <div class="doc-buttons">
                          <a href="{{ url('tambah-produk') }}" class="btn btn-s-md btn-info">Download Template</a>
                        </div>
                        <div class="form-group">
                          <label>Upload template yang sudah berisi data</label>
                          <input type="file" class="form-control" placeholder="Upload File">
                        </div>
                        <button type="submit" class="btn btn-sm btn-default">Tambah Produk</button>
                      </form>
                    </div>
                  </section>
                </div>
@endsection