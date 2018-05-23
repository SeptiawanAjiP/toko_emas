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
                <h3 class="m-b-none">Edit Kadar</h3>
              </div>
              <div class="row">
                <div class="col-sm-9">
                  <section class="panel panel-default">
                    <header class="panel-heading font-bold">Edit Kadar</header>
                    <div class="panel-body">
                      <form role="form" method="POST" action="{{ url('save-category') }}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-group">
                          <label>Kadar</label>
                          <input id="name" name="name" type="number" class="form-control" placeholder="Masukan nama kadar" value="{{$content->percent}}">
                        </div>
                        <button type="submit" class="btn btn-sm btn-default">Simpan</button>
                      </form>
                    </div>
                  </section>
                </div>
                
@endsection