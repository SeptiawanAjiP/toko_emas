<!DOCTYPE html>
<html lang="en" class="app">
<head>
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>{{ config('app.name', 'Laravel') }}</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
  <link rel="stylesheet" href="{{ asset('notebook/css/bootstrap.css') }}" type="text/css" />
  <link rel="stylesheet" href="{{ asset('notebook/css/animate.css') }}" type="text/css" />
  <link rel="stylesheet" href="{{ asset('notebook/css/font-awesome.min.css') }}" type="text/css" />
  <link rel="stylesheet" href="{{ asset('notebook/css/font.css') }}" type="text/css" />
  <link rel="stylesheet" href="{{ asset('notebook/css/app.css') }}" type="text/css" />
  @yield('stylesheet')

  <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body>
  <section class="vbox">
    @include('layouts.header')
    <section>
      <section class="hbox stretch">
        <!-- .aside -->
        <aside class="bg-dark lter aside-md hidden-print" id="nav">
          <section class="vbox">          
          
            @include('layouts.navbar')
          </section>
        </aside>
        <!-- /.aside -->
        @yield('content')
        <aside class="bg-light lter b-l aside-md hide" id="notes">
          <div class="wrapper">Notification</div>
        </aside>
      </section>
    </section>
  </section>
<script src="{{ asset('notebook/js/jquery.min.js') }}"></script>
  <!-- Bootstrap -->
<script src="{{ asset('notebook/js/bootstrap.js') }}"></script>
  <!-- App -->
<script src="{{ asset('notebook/js/app.js') }}"></script>
<script src="{{ asset('notebook/js/app.plugin.js') }}"></script>
<script src="{{ asset('notebook/js/slimscroll/jquery.slimscroll.min.js') }}"></script>
@yield('script')

</body>
</html>
