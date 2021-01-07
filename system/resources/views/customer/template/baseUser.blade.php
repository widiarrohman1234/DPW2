<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    @include('customer.template.section.link')
  </head>
  <body class="goto-here">
    @include('customer.template.section.label')
    @include('customer.template.section.navigation')
    <!-- END nav -->
    @include('customer.template.section.backgroundHeader')


    <section class="ftco-section">
      <div class="container">
        @include('customer.template.section.menuProduk')
          @yield('content')
        
      </div>
    </section>


    @include('customer.template.section.footer2')  
    @include('customer.template.section.footer')  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
    @include('customer.template.section.script')
  </body>
</html>