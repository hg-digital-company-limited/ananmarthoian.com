<div>
    <div class="top-header hidden-xs clearfix">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12 hidden-xs" style="
                justify-content: center;
                display: flex;
            ">
                    <ul class="log-cart hidden-xs">
                        <li class="choose-store">
                            <a class="header-action__link header-action_clicked" href="javascript:void(0);"
                                id="site-locale-handle" aria-label="Khu vực mua hàng" title="Khu vực mua hàng">
                                <span class="box-text ">
                                    <span class="txtnw">Giao hoặc đến lấy tại :</span>
                                    <span class=" ">
                                        <span class="">
                                            191 Lý Thường Kiệt, Hoi An, Vietnam
                                        </span>
                                    </span>
                                </span>
                            </a>
                            <span class="box-triangle">
                                <svg viewBox="0 0 20 9" role="presentation">
                                    <path
                                        d="M.47108938 9c.2694725-.26871321.57077721-.56867841.90388257-.89986354C3.12384116 6.36134886 5.74788116 3.76338565 9.2467995.30653888c.4145057-.4095171 1.0844277-.40860098 1.4977971.00205122L19.4935156 9H.47108938z"
                                        fill="#ffffff"></path>
                                </svg>
                            </span>

                        </li>
                        <li class="resig">
                            @if ($isAuthenticated)
                                <a href="/account"><i class="fa fa-user" aria-hidden="true"></i><span class="css">Tài khoản
                                        của tôi</span></a>
                            @else
                                <a href="/login"><i class="fa fa-user" aria-hidden="true"></i><span class="css">Đăng nhập /
                                        Đăng ký</span></a>
                            @endif
                        </li>
                        <li class="cart-info hidden-xs">
                            <a class="cart-link" href="/cart">
                                Giỏ hàng
                                <span class="icon-cart">
                                    <i class="fa fa-shopping-cart icon-bag-cart" aria-hidden="true"></i>
                                </span>
                                <div class="cart-number">
                                    {{ count($cartItems) }} <!-- Số lượng sản phẩm trong giỏ hàng -->
                                </div>
                            </a>
                            <div class="cart-view clearfix" style="display: none;">
                                <table id="cart-view">
                                    @foreach($cartItems as $item)
                                        <tr>
                                            <td class="img">
                                                <a href="/product/{{ $item['product_slug'] }}"
                                                    style="width: 80px;justify-content: center;display: flex;">
                                                    <img src="{{ Storage::url($item['image']) }}" alt="{{ $item['name'] }}"
                                                        style="height: 50px; width: initial;" />
                                                </a>
                                            </td>
                                            <td>
                                                <a class="pro-title-view" href="/product/{{ $item['product_slug'] }}"
                                                    title="{{ $item['name'] }}">
                                                    {{ $item['name'] }}
                                                </a>
                                                <span class="pro-quantity-view">Số lượng: {{ $item['quantity'] }}</span>
                                                <span class="pro-price-view">Giá:
                                                    {{ number_format($item['price'], 0, ',', '.') }}₫</span>
                                            </td>
                                        </tr>
                                    @endforeach
                                </table>
                                <span class="line"></span>
                                <table class="table-total">
                                    <tr>
                                        <td align="left">TỔNG TIỀN:</td>
                                        <td align="right" id="total-view-cart">
                                            {{ number_format($totalPrice, 0, ',', '.') }}₫</td>
                                    </tr>
                                    <tr>
                                        <td><a href="/cart" class="linktocart">Xem giỏ hàng</a></td>
                                        <td><a href="/checkout" class="linktocheckout">Thanh toán</a></td>
                                    </tr>
                                </table>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <header class="hidden-xs">
        <div class="bottom-header hidden-xs clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 hidden-xs">
                        <div class="page-header-container">
                            <div class="logo">

                                <a href="/" title="MOONMILK - PREMIUM IMPORTED FOOD MARKET">
                                    <img src="/logo.png" style="
                                    max-width: 150px;
                                " alt="MOONMILK - PREMIUM IMPORTED FOOD MARKET" />
                                </a>
                                <h1 class="hidden">
                                    <a href="/" title="MOONMILK - PREMIUM IMPORTED FOOD MARKET">MOONMILK - PREMIUM
                                        IMPORTED FOOD MARKET</a>
                                </h1>

                            </div>
                            <div class="header-search desktop hidden-xs">
                                <form action="/shop" method="get">
                                    <div class="box-search">
                                        <div class="box-input">
                                            <div class="input-group-search" style="width: calc(100% - 44px);">
                                                <input type="text" name="keyword" placeholder="Tìm kiếm ..." />
                                            </div>
                                            <button type="submit"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>


    <nav class="navbar-main navbar navbar-default cl-pri">
        <!-- MENU MAIN -->
        <div class="container nav-wrapper">
            <div class="row">
                <div class="navbar-header">
                    <div class="menu-btn click-menu-mobile ">
                        <a href="#menu-mobile" class="">
                            <span class="icon-menu"></span>
                        </a>
                    </div>
                    <div class="pull-right mobile-menu-icon-wrapper">
                        <div class="logo logo-mobile">
                            <a href="/" title="MOONMILK - PREMIUM IMPORTED FOOD MARKET">
                                <img src="/logo.png" alt="MOONMILK - PREMIUM IMPORTED FOOD MARKET" />
                            </a>
                        </div>
                        <ul class="mobile-menu-icon clearfix">

                            <li class="search">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle icon-search"
                                        data-toggle="dropdown" aria-expanded="false"></button>
                                    <div class="dropdown-menu" role="menu">
                                        <div class="search-bar">
                                            <div class="">
                                                <form class="col-md-12" action="/search">
                                                    <input type="hidden" name="type" value="product" />
                                                    <input type="text" name="q" placeholder="Tìm kiếm..." />
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li id="cart-target" class="cart">
                                <a href="/cart" class="cart " title="Giỏ hàng">
                                    <span class="icon-cart">
                                        <i class="fa fa-shopping-cart icon-bag-cart" aria-hidden="true"></i>

                                    </span>
                                    <span id="cart-count">{{ count($cartItems) }}</span>
                                </a>
                            </li>
                            <li class="choose-store">
                                <a class="header-action__link header-action_clicked" href="javascript:void(0);"
                                    id="site-locale-handle" aria-label="Khu vực mua hàng" title="Khu vực mua hàng">
                                    <span class="box-text ">
                                        <i class="fa fa-home" aria-hidden="true"></i>
                                    </span>
                                </a>
                                <span class="box-triangle">
                                    <svg viewBox="0 0 20 9" role="presentation">
                                        <path
                                            d="M.47108938 9c.2694725-.26871321.57077721-.56867841.90388257-.89986354C3.12384116 6.36134886 5.74788116 3.76338565 9.2467995.30653888c.4145057-.4095171 1.0844277-.40860098 1.4977971.00205122L19.4935156 9H.47108938z"
                                            fill="#ffffff"></path>
                                    </svg>
                                </span>



                            </li>
                        </ul>
                    </div>
                </div>

                <div id="header">
                    <div class="menu-desktop hidden-xs">
                        <ul class="menu-top clearfix">
                            {{-- <li class="hasChild fix-icon-coll">
                                <a href="javascript:void(0)" title="Thông tin chung" class="maxi-menu-link ">
                                    <span>Thông tin chung</span>
                                </a>

                                <ul>
                                    <li class="lilala">
                                        <a href="/" title="Trang chủ">Trang chủ</a>
                                    </li>
                                    <li class="lilala">
                                        <a href="/shop" title="Cửa hàng">Cửa hàng</a>
                                    </li>
                                    <li class="lilala">
                                        <a href="/blogs" title="Tin tức">Tin tức</a>
                                    </li>
                                </ul>
                            </li> --}}
                            @foreach($classifications as $classification)
                                <li class="hasChild fix-icon-coll">
                                    <a href="javascript:void(0)" title="{{ $classification->name }}"
                                        class="maxi-menu-link ">
                                        <span>{{ $classification->name }}</span>
                                    </a>

                                    <ul>
                                        @foreach($classification->categories as $category)
                                            <li class="lilala">
                                                <a href="/shop?cat={{ $category->id }}"
                                                    title="{{ $category->name }}">{{ $category->name }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                            @endforeach
                               <li class=" fix-icon-coll">
                                    <a href="/blogs" title="News"
                                        class="maxi-menu-link ">
                                        <span>News</span>
                                    </a>


                                </li>
                        </ul>
                    </div>

                </div>


            </div>
        </div>
        <!-- End container  -->
    </nav>
    <script>
        $(window).resize(function () {
            $('li.dropdown li.active').parents('.dropdown').addClass('active');
            if ($('.right-menu').width() + $('#navbar').width() > $('.check_nav.nav-wrapper').width() - 40) {
                $('.container-mp.nav-wrapper').addClass('responsive-menu');
            } else {
                $('.container-mp.nav-wrapper').removeClass('responsive-menu');
            }
        })
        $(document).on("click", "ul.mobile-menu-icon .dropdown-menu ,.drop-control .dropdown-menu, .drop-control .input-dropdown", function (e) {
            e.stopPropagation();
        });
    </script>
    <script>
        jQuery(document).ready(function () {
            var check_drop = true;
            var timeOutMenu;

            $('.menu-top > li > a').hover(
                function () {
                    clearTimeout(timeOutMenu);
                    $('.menu-top > li > a:not(.main)').removeClass('active');
                    $(this).addClass('active');
                    $('.drop-menu').stop().slideUp(200);
                    $(this).parent('li').addClass('drop').children('.drop-menu').slideDown(200);
                },
                function () {
                    if ($('.menu-top > li > a.main').length == 0 && $(this).parent('li.hasChild').length == 0) {
                        $(this).removeClass('active');
                    }
                    if ($(this).parent('li:not(.hasChild)').length == 1 && $('.menu-top > li > a.main').length == 1) {
                        $(this).not('.main').removeClass('active');
                    }
                    timeOutMenu = setTimeout(function () {
                        if (check_drop) {
                            $('.drop-menu').stop().slideUp(200);
                            //$(this).removeClass('active');
                            //$(this).parent('li').removeClass('drop').children('.drop-menu').stop().slideUp(200);
                        }
                    }, 500);
                }
            );
            $('.drop-menu').hover(
                function () {
                    check_drop = false;
                },
                function () {
                    if ($(this).parent('li').children('a:not(.main)')) {
                        $(this).parent('li').children('a:not(.main)').removeClass('active');
                    }
                    check_drop = true;
                    $(this).stop().slideUp(200);
                }
            );
        })
        $(function () {
            $('nav#menu-mobile').mmenu();
        });
        $(document).ready(function () {
            flagg = true;
            if (flagg) {
                $('.click-menu-mobile a').click(function () {
                    $('#menu-mobile').removeClass('hidden');
                    flagg = false;
                })
            }
        })
    </script>
    <style>
        li.choose-store {
            margin-right: 15px;
            position: relative;
            max-width: 100%;
        }
    </style>
</div>
