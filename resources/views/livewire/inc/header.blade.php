<nav>
    <div class="nav-wraper container">
        <div class="row">
            <div class="logo-wraper col-md-3 col-4" id="logo-wraper" style="

        ">
                <a href="/">
                    <img  src="/asset/logo.png" alt="khoahocmienphi-logo" id="icon" style="height: initial;width: 100%;">
                    <img src="/asset/logo.png" alt="khoahocmienphi-logo" id="desktop-logo" style="width: 160%;">
                </a>
                <style>
                    #logo {
                        width: 100%;
                    }

                    /* Ẩn icon trên mobile và hiển thị logo */
                    @media (max-width: 768px) {
                        #icon {
                            display: none !important;
                        }
                        #logo-wraper {
                            display: flex;
                            justify-content: center;
                            align-items: center;
                        }
                    }

                    /* Hiện icon trên desktop */
                    @media (min-width: 769px) {
                        #desktop-logo {
                            display: none !important;
                        }
                    }
                </style>
            </div>
            <div class="col-md-6 d-none d-md-block">
                <div class="textbox-wraper search">
                    <form action="/shop" method="get">

                        <input spellcheck="false" class="textbox-comp search-input" name="keyword" id=""
                            placeholder="Xin chào! hôm nay bạn muốn học gì?">
                        <label for="search"><iconify-icon class="texbox-icon"
                                icon="mingcute:search-line"></iconify-icon></label>
                        <input type="submit" id="search" style="display:none">
                    </form>
                </div>
                <div class="search-suggest">
                </div>
            </div>

            <div class="menu-wraper col-lg-2 col-md-3 col-8 offset-lg-1">
                <a href="#!" class="menu-icon-comp d-block d-md-none" id="search-mobile-btn">
                    <iconify-icon icon="uil:search"></iconify-icon>
                </a>
                <!--<a href="#!" class="menu-icon-comp" id="darkmode">-->
                <!--    -->
                <!--        <iconify-icon icon="ph:sun-dim-bold"></iconify-icon>-->
                <!--    -->
                <!--</a>-->
                <a href="#!" class="menu-icon-comp" id="cart-btn">
                    <iconify-icon icon="ph:shopping-cart-simple-bold"></iconify-icon>
                </a>
                <a href="/login" class="menu-icon-comp" id="profile-btn">
                    <iconify-icon icon="ph:user-bold" width="24px" height="24px"
                        style="margin-top: 1px;"></iconify-icon>
                </a>
                <a href="#!" class="menu-icon-comp d-none d-md-block">
                    <label for="check-menu">
                        <img src="/asset/img/Menu.svg" style="margin-top: 3px;">
                    </label>
                </a>
                <a href="#!" class="menu-icon-comp d-block d-md-none">
                    <label for="check-menu-mobile">
                        <img src="/asset/img/Menu.svg" style="margin-top: 3px;">
                    </label>
                </a>

                <input type="checkbox" id="check-menu" style="display:none;" />
                <div class="menu-open-wraper-desktop d-none d-md-block" id="menu-container">
                    <div class="menu-open-content">

                        <div class="menu-open-item">
                            <a href="/shop">
                                <div class="menu-open-item-icon">
                                    <iconify-icon icon="material-symbols:menu-book"></iconify-icon>
                                </div>
                                <p>Tất cả khóa học</p>
                            </a>
                        </div>
                        <div class="menu-open-item">
                            <a href="/login" class="btn-primary"
                                style="transition: none; flex-direction: column; border-radius: 16px">
                                <div class="menu-open-item-icon">
                                    <iconify-icon icon="la:crown"></iconify-icon>
                                </div>
                                Đăng nhập ngay để sử dụng tính năng này
                            </a>
                        </div>
                    </div>
                </div>
                <div class="menu-open-wraper-desktop" id="cart-container">
                    <div class="menu-open-content">
                        <div style="text-align: center">
                            <p><em>Giỏ hàng</em></p>
                        </div>
                        <div class="note-content">
                            <p style="text-align: center">Chưa có khóa học nào trong giỏ hàng</p>
                        </div>
                        <a href="/login" class="btn-primary">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</nav>
