
  <script src="{{ url('public/js/jquery.min.js') }}"></script>
  <script src="{{ url('public/js/jquery-migrate-3.0.1.min.js') }}"></script>
  <script src="{{ url('public/js/popper.min.js') }}"></script>
  <script src="{{ url('public/js/bootstrap.min.js') }}"></script>
  <script src="{{ url('public/js/jquery.easing.1.3.js') }}"></script>
  <script src="{{ url('public/js/jquery.waypoints.min.js') }}"></script>
  <script src="{{ url('public/js/jquery.stellar.min.js') }}"></script>
  <script src="{{ url('public/js/owl.carousel.min.js') }}"></script>
  <script src="{{ url('public/js/jquery.magnific-popup.min.js') }}"></script>
  <script src="{{ url('public/js/aos.js') }}"></script>
  <script src="{{ url('public/js/jquery.animateNumber.min.js') }}"></script>
  <script src="{{ url('public/js/bootstrap-datepicker.js') }}"></script>
  <script src="{{ url('public/js/scrollax.min.js') }}"></script>
  <script src="{{ url('public/js/google-map.js') }}"></script>
  <script src="{{ url('public/js/main.js') }}"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <!-- Select2 -->
<script src="{{ url('public/plugins/select2/js/select2.full.min.js') }}"></script>

<script>

    $(function () {
      //Initialize Select2 Elements
      $('.select2').select2()

      //Initialize Select2 Elements
      $('.select2bs4').select2({
        theme: 'bootstrap4'
      })
    })
</script>
@stack('script')