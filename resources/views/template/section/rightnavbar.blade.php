    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          @if(Auth::check())
              {{request()->user()->username}}
          @else
            Silahkan Login
          @endif
          <img src="{!! asset('dist/img/user1-128x128.jpg') !!}" alt="User Avatar" style="height: 100%" class="img-circle">
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <i class="fa fa-user"></i>Profile
            <div class="media">
            </div>
          </a>

          <a href="#" class="dropdown-item">
            <i class="fa fa-cog"></i>Setting
            <div class="media">
            </div>
          </a>

          <a href="{{url('logout')}}" class="dropdown-item">
            <i class="fa fa-sign-out"></i>Logout
            <div class="media">
            </div>
          </a>

        </div>
      </li>

    </ul>