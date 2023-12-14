<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/master.css') }}"/>
    <title>XMT</title>
        <style>
            .dropdown-content {
                font-family: "Century Gothic";
            }
        </style>
    </head>

    <body>
        <div class="head">
            <div class="head__top">
                <div class="service-header">
                    <span class="contact">
                        <span class="glyphicon glyphicon-earphone"></span>
                        <span>Customer Service: 0123456789</span>
                    </span>
                    <span class="email">
                        <span class="fas fa-envelope"></span>
                        <span>Email: ndnhat@gmail.com</span>
                    </span>
                    <div class="header-icons">
                        &nbsp &nbsp &nbsp
                        @if(Auth::check())
                        <span class=" dropdown">
                        <a  href=""><span class="header-icon dropdown animate-dropdown "><span class="far fa-user"> <span style="font-family:'Century Gothic';font-size:15px;">&nbsp  {{Auth::user()->username}}</span></i></a>
                            <div class="dropdown-content " style="font-size: 15px;">
                                <a href="{{route('profile')}}">Thông tin cá nhân</a>
                                <a href="{{route('manage')}}">Quản lí sản phẩm</a>
                                <a href="{{route('order')}}">Quản lí đơn hàng</a>
                                <a href="{{route('logout')}}" data-toggle="tooltip" title="Log out"><i class="glyphicon glyphicon-log-out"></i>&nbsp Log Out</a>
                            </div>
                        </span>
                        @else
                        <span class="header-icon dropdown animate-dropdown">
                            <a href="{{route('login')}}" target="_parent">
                                <span class="far fa-user"></span>
                            </a>
                        </span>
                        @endif
                        &nbsp &nbsp &nbsp
                        <span class="header-icon dropdown animate-dropdown" >
                            <a href="{{route('gio-hang')}}">
                                <span class="fas fa-shopping-basket"></span>
                            </a><span class="badge badge-light"></span>
                        </span>
                    </div>
                </div>
            </div>
            <a href="{{route('trangchu')}}"><div class="head__logo" align=center>XMT</div></a>
        </div>
        <div class="head__nav">
            <div class="navbar-default" id ='navbar'>
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="nav__left">
                            <ul class ="navigation-desktop-menu">
                                    <li class='navigation-tab '>
                                        <div class="dropdown">
                                            <a href="{{Url('/')}}" class='dropbtn'>Home</a>
                                        </div>
                                    </li>        
                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href="{{route('yamaha')}}" class='dropbtn'>Yamaha</a>
                                        </div>
                                    </li>                     
                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href="{{route('honda')}}" class='dropbtn'>Honda</a>
                                        </div>
                                    </li>

                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href="{{route('suzuki')}}" class='dropbtn'>Suzuki</a>
                                        </div>
                                    </li>
                                        
                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href="{{route('kawasaki')}}" class='dropbtn'>Kawasaki</a>
                                        </div>
                                    </li>

                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href=" {{route('ducati')}}" class='dropbtn'>Ducati</a>
                                        </div>
                                    </li>

                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href=" {{route('sym')}}" class='dropbtn'>SYM</a>
                                        </div>
                                    </li>

                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href=" {{route('bmw')}}" class='dropbtn'>BMW</a>
                                        </div>
                                    </li>
                                    <li class='navigation-tab'>
                                        <div class="dropdown">
                                            <a href=" {{route('contact')}}" class='dropbtn'>Liên Hệ</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>    
                            <div class="col-md-3">
                                <div class="nav__right">
                                    <form action="{{route('search')}}" role="search" class="box">
                                        <input type="search" name="search" placeholder="Search here" class="input_search" />
                                            <button style="border:none; background-color:white; margin-right:15px;"><i class='fas fa-search' style='font-size:15px'></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>    
                    </div>    
                </div>    
            </div>
        </div>
        @yield('content')
        

        
        
<footer>
    <section class="footer">        
        <div class="footer">
            <div class="footer-left col-md-4">
                <p class="about">
                    <span><strong>About Us</strong></span><br><br>
                    Website bán hàng với các chức năng như xem danh sách sản phẩm, Danh sách sản phẩm theo từng loại,chức năng mua hàng và xử lý đơn hàng, chức năng đăng nhập và đăng xuất, Xử lý tìm kiếm theo tên và theo giá sản phẩm.
                </p>
            </div>
            <div class="footer-center col-md-4">
                <div>
                    <p><span>THÀNH VIÊN NHÓM</span></p>
                </div>
                <div>
                    <p><span>Nguyễn Đức Nhật</span></p>
                </div>
                <div>
                    <p><span>Nguyễn Văn Quyền</span></p>
                </div>
            </div>
        </div>        
    </section>
</footer>

</body>
<script>
    window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } else {
        navbar.classList.remove("sticky");
    }
}window.addEventListener('scroll', stickyNavigation);
</script>
<script src ="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

</html>
<!-- <script src="{{ asset('js/test.js') }}"></script> -->

