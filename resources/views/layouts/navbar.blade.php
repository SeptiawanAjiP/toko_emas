
  <!-- <header class="header bg-primary lter text-center clearfix">
    <div class="btn-group">
      <button type="button" class="btn btn-sm btn-dark btn-icon" title="New project"><i class="fa fa-plus"></i></button>
      <div class="btn-group hidden-nav-xs">
        <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-toggle="dropdown">
          Switch Project
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu text-left">
          <li><a href="#">Project</a></li>
          <li><a href="#">Another Project</a></li>
          <li><a href="#">More Projects</a></li>
        </ul>
      </div>
    </div>
  </header> -->
  <section class="w-f scrollable">
    <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333">
      
      <!-- nav -->
      <nav class="nav-primary hidden-xs">
        <ul class="nav">
          <li>
            <a href="{{ url('/home') }}" class="active">
              <i class="fa fa-dashboard icon">
                <b class="bg-danger"></b>
              </i>
              <span>Dashbord</span>
            </a>
          </li>
          <li >
            <a href="#layout"  >
              <i class="fa fa-columns icon">
                <b class="bg-success"></b>
              </i>
              <span class="pull-right">
                <i class="fa fa-angle-down text"></i>
                <i class="fa fa-angle-up text-active"></i>
              </span>
              <span>Transaksi</span>
            </a>
            <ul class="nav lt">
              <li >
                <a href="{{ url('pembelian') }}" >                                                        
                  <i class="fa fa-angle-right"></i>
                  <span>Pembelian</span>
                </a>
              </li>
              <li >
                <a href="{{ url('penjualan') }}" >                                                        
                  <i class="fa fa-angle-right"></i>
                  <span>Penjualan</span>
                </a>
              </li>
              <li >
                <a href="{{ url('penggadaian') }}" >                            
                  <i class="fa fa-angle-down text"></i>
                  <i class="fa fa-angle-up text-active"></i>
                  <span>Penggadaian</span>
                </a>
                <ul class="nav bg">
                  <li >
                    <a href="" >
                      <i class="fa fa-angle-right"></i>
                      <span>Chash out</span>
                    </a>
                  </li>
                  <li >
                    <a href="" >
                      <i class="fa fa-angle-right"></i>
                      <span>Buy back</span>
                    </a>
                  </li>
                </ul>
              </li>
              <li >
                <a href="{{ url('perbaikan') }}" >                                                        
                  <i class="fa fa-angle-right"></i>
                  <span>Perbaikan</span>
                </a>
              </li>
              <li >
                <a href="{{ url('transaksi') }}" >                                                        
                  <i class="fa fa-angle-right"></i>
                  <span>Rekaman Transaksi</span>
                </a>
              </li>
            </ul>
          </li>
          <li >
            <a href="#uikit"  >
              <i class="fa fa-flask icon">
                <b class="bg-warning"></b>
              </i>
              <span class="pull-right">
                <i class="fa fa-angle-down text"></i>
                <i class="fa fa-angle-up text-active"></i>
              </span>
              <span>Inventori</span>
            </a>
            <ul class="nav lt">
              <li >
                <a href="{{ url('produk') }}" >                            
                  <!-- <b class="badge bg-info pull-right">369</b>                                                         -->
                  <i class="fa fa-angle-right"></i>
                  <span>Produk</span>
                </a>
              </li>
              <li >
                <a href="{{ url('category') }}" >                                                        
                  <i class="fa fa-angle-right"></i>
                  <span>Kategori</span>
                </a>
              </li>
              <li >
                <a href="{{ url('content') }}" >                            
                  <!-- <b class="badge bg-info pull-right">369</b>                                                         -->
                  <i class="fa fa-angle-right"></i>
                  <span>Kadar</span>
                </a>
              </li>
              <li >
                <a href="{{ url('transaksi') }}" >                                                        
                  <i class="fa fa-angle-right"></i>
                  <span>Harga Emas Dunia</span>
                </a>
              </li>
              <li >
                <a href="{{ url('transaksi') }}" >                                                        
                  <i class="fa fa-angle-right"></i>
                  <span>Rangkuman</span>
                </a>
              </li>
            </ul>
          </li>
          <li >
            <a href="mail.html"  >
              <b class="badge bg-danger pull-right">3</b>
              <i class="fa fa-envelope-o icon">
                <b class="bg-primary dker"></b>
              </i>
              <span>Staff</span>
            </a>
          </li>
          <li >
            <a href="mail.html"  >
              <b class="badge bg-danger pull-right">3</b>
              <i class="fa fa-envelope-o icon">
                <b class="bg-info"></b>
              </i>
              <span>Toko</span>
            </a>
          </li>
          <li >
            <a href="notebook.html"  >
              <i class="fa fa-pencil icon">
                <b class="bg-primary"></b>
              </i>
              <span>Laporan</span>
            </a>
          </li>
        </ul>
      </nav>
      <!-- / nav -->
    </div>
  </section>

  <footer class="footer lt hidden-xs b-t b-dark">
  <div id="chat" class="dropup">
    <section class="dropdown-menu on aside-md m-l-n">
      <section class="panel bg-white">
        <header class="panel-heading b-b b-light">Active chats</header>
        <div class="panel-body animated fadeInRight">
          <p class="text-sm">No active chats.</p>
          <p><a href="#" class="btn btn-sm btn-default">Start a chat</a></p>
        </div>
      </section>
    </section>
  </div>
  <div id="invite" class="dropup">                
    <section class="dropdown-menu on aside-md m-l-n">
      <section class="panel bg-white">
        <header class="panel-heading b-b b-light">
          John <i class="fa fa-circle text-success"></i>
        </header>
        <div class="panel-body animated fadeInRight">
          <p class="text-sm">No contacts in your lists.</p>
          <p><a href="#" class="btn btn-sm btn-facebook"><i class="fa fa-fw fa-facebook"></i> Invite from Facebook</a></p>
        </div>
      </section>
    </section>
  </div>
  <a href="#nav" data-toggle="class:nav-xs" class="pull-right btn btn-sm btn-dark btn-icon">
    <i class="fa fa-angle-left text"></i>
    <i class="fa fa-angle-right text-active"></i>
  </a>
  <div class="btn-group hidden-nav-xs">
    <button type="button" title="Chats" class="btn btn-icon btn-sm btn-dark" data-toggle="dropdown" data-target="#chat"><i class="fa fa-comment-o"></i></button>
    <button type="button" title="Contacts" class="btn btn-icon btn-sm btn-dark" data-toggle="dropdown" data-target="#invite"><i class="fa fa-facebook"></i></button>
  </div>
</footer>