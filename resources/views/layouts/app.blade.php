<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}" class="bg-dark">
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
  <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body>
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xxl">
      <a class="navbar-brand block" href="index.html">Notebook</a>
      @yield('content')
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2013</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <script src="{{ asset('notebook/js/jquery.min.js') }}"></script>
  <!-- Bootstrap -->
  <script src="{{ asset('notebook/js/bootstrap.js') }}"></script>
  <!-- App -->
  <script src="{{ asset('notebook/js/app.js') }}"></script>
  <script src="{{ asset('notebook/js/app.plugin.js') }}"></script>
  <script src="{{ asset('notebook/js/slimscroll/jquery.slimscroll.min.js') }}"></script>
  
</body>
</html>


