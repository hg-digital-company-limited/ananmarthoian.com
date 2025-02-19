<div>
    <div>
        <div>
            <div>

                <head>
                    <link rel="preload"
                        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" as="style"
                        crossorigin="anonymous" onload="this.rel='stylesheet'">
                    <noscript>
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
                            crossorigin="anonymous">
                    </noscript>
                    <link rel="stylesheet" href="/asset/css/reset.css">
                    <link rel="stylesheet" href="/asset/css/component2.css">
                    <link rel="stylesheet" href="/asset/css/style.css">

                    <meta name="description"
                        content="Hãy nhanh tay đăng ký khóa học {{ $product->name }} ngay để tích lũy kiến thức cũng như kỹ năng mà học viên cần để gặt hái thành công, tiền bạc trên con đường sự nghiệp và cuộc sống!. Đừng bỏ lỡ cơ hội!">
                    <meta property="og:image"
                        content="{{ Storage::url($product->image) }}" />
                    <meta property="og:title"
                        content="Khóa học {{ $product->name }} Miễn Phí" />
                    <meta property="og:image:width" content="1200" />
                    <meta property="og:image:height" content="630" />
                    <title> Khóa học {{ $product->name }} Miễn Phí - KhoaHocMienPhi.Site</title>
                </head>

                <body class="darkmode">

                    <!-- nav -->
                    @livewire('inc.header')



                    <div class="col-md-6" id="search-mobile-input">
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

                    <!-- menu-mobile -->
                    <input type="checkbox" id="check-menu-mobile" style="display:none;" />
                    <div class="menu-open-wraper-mobile d-block d-md-none">
                        <div class="menu-open-left">
                            <div class="menu-open-content-mobile">
                                <div class="close"><label for="check-menu-mobile"><iconify-icon icon="ic:round-close"
                                            width="24px" height="24px"
                                            style="margin-top: 1px;"></iconify-icon></i></label>
                                </div>
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
                                        style="transition: none; flex-direction: column; border-radius: 16px;">
                                        <div class="menu-open-item-icon">
                                            <iconify-icon icon="la:crown"></iconify-icon>
                                        </div>
                                        Đăng nhập ngay để sử dụng tính năng này
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div> <!-- slogan -->
                    <div class="slogan-wraper container">
                        <div class="row g-2">
                            <div class="col">
                                <div class="slogan">
                                    <p>CHIA SẺ TRI THỨC - KIẾN TẠO TƯƠNG LAI</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="course-id" style="display: none">124</div>
                    <div class="notification">
                        <div class="close-noti" onclick="closeNoti()"><iconify-icon icon="system-uicons:cross"
                                style="font-size: 24px;"></iconify-icon></div>
                        <div class="noti-content"></div>
                    </div>
                    <!-- course-header -->
                    <div class="course-single-header-wraper container">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <img src="{{ Storage::url($product->image) }}"
                                    alt="{{ $product->name }}"
                                    class="course-single-img" style="border-radius: 24px 24px 0 0; aspect-ratio: 16/9;">
                                <div class="course-highlight"
                                    style="margin-top: -2px; padding: 1px 20px 12px; border-radius: 0 0 24px 24px; background:#161b25">
                                    <p style="opacity: 80%;font-weight: 600; font-size: 14px; line-height:1.4">Hãy nhanh
                                        tay
                                        đăng ký khóa học {{ $product->name }} ngay để tích lũy kiến thức cũng như kỹ năng mà học viên cần để gặt hái thành công, tiền bạc trên con đường sự nghiệp và cuộc sống!. Đừng bỏ lỡ cơ hội!</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div>
                                    <h1>
                                        {{ $product->name }} <span style="    background: linear-gradient(80.98deg, #F54864 0%, #F78361 100%);"> Miễn Phí </span>
                                    </h1>
                                    <p>Tác giả: <a href="/shop?category={{ $product->category_name }}"><em>{{ $product->category_name }}</em></a>
                                    <div class="course-single-content-wraper">
                                        <p>Giá gốc: <em>{{ number_format($product->discount_price, 0, ',', '.') }}đ</em></p>
                                        <p>Giá hiện tại: <em>0đ</em></p>
                                       </p>
                                        <p>Lượt tải: {{ $product->sold }}</p>
                                        <p>Sở hữu khóa học: trọn đời</p>
                                        <p>Đánh giá: 5/5
                                            <img src="/asset/img/Star-rating.svg" alt="rating"
                                                style="width: 18px; height: 18px; margin-bottom: -2px;" />
                                            <img src="/asset/img/Star-rating.svg" alt="rating"
                                                style="width: 18px; height: 18px; margin-bottom: -2px;" />
                                            <img src="/asset/img/Star-rating.svg" alt="rating"
                                                style="width: 18px; height: 18px; margin-bottom: -2px;" />
                                            <img src="/asset/img/Star-rating.svg" alt="rating"
                                                style="width: 18px; height: 18px; margin-bottom: -2px;" />
                                                <img src="/asset/img/Star-rating.svg" alt="rating"
                                                style="width: 18px; height: 18px; margin-bottom: -2px;" />
                                            ({{ $product->sold }} đánh giá)
                                        </p>
                                    </div>
                                </div>
                                <div class="reason-wraper">
                                    <div class="row g-0">
                                        <div class="col-4">
                                            <div class="reason-item">
                                                <strong><span
                                                        style="background: linear-gradient(80.98deg, #F54864 0%, #F78361 100%);-webkit-background-clip: text;-webkit-text-fill-color: transparent;background-clip: text;text-emphasis-color:transparent; line-height: 1.4; font-weight: 700">Trợ
                                                        giảng AI</span> (Mới)</strong>
                                                <img style=""
                                                    src="/asset/img/tro-giang-ai-img.png"
                                                    alt="Học viên nhận khóa học và học online cùng trợ giảng AI giúp học viên được đặt câu hỏi và hiểu sâu bài giảng hơn">
                                                <p>Hiểu sâu kiến thức với trợ giảng AI</p>
                                            </div>
                                        </div>

                                        <div class="col-4 side-border">
                                            <div class="reason-item">
                                                <strong>Đầy đủ bài giảng</strong>
                                                <img src="https://imagedelivery.net/aXueHOobW3aL_CnLPhCXPw/5reputation.png/w=60"
                                                    alt="Chia sẻ khóa học online uy tín - chất lượng">
                                                <p>Cam kết video bài giảng và tài liệu đầy đủ</p>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="reason-item">
                                                <strong>Kích hoạt nhanh</strong>
                                                <img src="https://imagedelivery.net/aXueHOobW3aL_CnLPhCXPw/fast-time.png/w=60"
                                                    alt="Học viên đăng ký học sẽ được kích hoạt khóa học ngay lập tức">
                                                <p>Nhận khóa học trong vòng 3 phút</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn-wraper">
                                    <a
                                        class="btn-primary full-width-btn add-cart-btn" wire:click="order">Tải khóa học Miễn Phí</a>
                                    <a href="/product/{{ $product->slug }}"
                                        aria-label="zalo" class="btn-secondary full-width-btn">Học thử</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="start-learning">
                        <svg class="arrows">
                            <path class="a1" d="M0 0 L30 32 L60 0"></path>
                            <path class="a2" d="M0 20 L30 52 L60 20"></path>
                            <path class="a3" d="M0 40 L30 72 L60 40"></path>
                        </svg>
                    </div>

                    <div class="course-single-body">
                        <div class="container">
                            <div class="row g-3">
                                <div class="col-lg-12">
                                    <div class="course-description" style="background: #161b25">
                                        <p>
                                        <div class="tab-panels">
                                            <div id="tab-dedivion"
                                                class="woocommerce-Tabs-panel woocommerce-Tabs-panel--dedivion panel entry-content active"
                                                role="tabpanel" aria-labelledby="tab-title-dedivion">
                                                <div class="col-md-12">
                                                    <h2><span style="color: rgb(224, 62, 45);"><span
                                                                style="font-size: 23.04px;"><strong
                                                                    id="docs-internal-guid-bcc9941b-7fff-1225-41b4-71ee9bfd312e">Khóa học miễn phí xin hân hạnh chia sẻ <br></strong> </span><a
                                                                style="font-size: 23.04px; color: rgb(224, 62, 45);"
                                                                href="/product/{{ $product->slug }}">{{ $product->name }} </a><span
                                                                style="font-size: 23.04px;">của {{ $product->category_name }}
                                                                Team</span></span></h2>
                                                    <p><span style="font-size: 23.04px;"><img
                                                                src="{{ Storage::url($product->image) }}"
                                                                alt="{{ $product->name }}"
                                                                width="870" height="440"></span></p>
                                                    <p> </p>
                                                                id="docs-internal-guid-d70942bc-7fff-9d89-b7d7-1566c4526b22">Xin
                                                                lưu ý: Nếu bạn có điều kiện, hãy mua khóa học gốc để ủng
                                                                hộ tác
                                                                giả và đội ngũ làm khóa học để họ có thể mang tới nhiều
                                                                hơn
                                                                những khóa học chất lượng nhé!</strong></span></p>
                                                    <p> </p>

                                                </div>
                                            </div>
                                        </div>
                                        </p>
                                    </div>
                                </div>

                                <div class="btn-wraper">
                                    <a rel="nofollow" href="/product/{{ $product->slug }}" class="btn-secondary">Học
                                        thử</a>
                                    <a  class="btn-primary" wire:click="order">Tải khóa học Miễn Phí</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="course-list-wraper container">
                        <a href="/shop?category={{ $product->category_name }}">
                        <h2 class="category">{{ $product->category_name }}</h2>
                        </a>
                        <p style="margin-top: 32px;">Tổng hợp những khóa học {{ $product->category_name }} chất lượng nhất

                        </p>
                        <div class="course-list row g-2">
                            @foreach ($relatedProduct as $product)
                            <div class="col-xl-3 col-lg-3 col-6">
                                <div class="course-single">
                                    <div class="course-content-wraper">
                                        <a
                                            href="/product/{{ $product->slug }}">
                                            <img src="{{ Storage::url($product->image) }}"
                                                alt="{{ $product->name }}" loading="lazy"
                                                decoding="async">
                                        </a>
                                        <div class="course-text-wraper">
                                            <a
                                                href="/product/{{ $product->slug }}">
                                                <h3>{{ $product->name }}</h3>
                                            </a>
                                            <div class="course-price">
                                                <div>
                                                    <span class="d-block d-sm-none"
                                                        style="font-size: 12px; color: #999999; margin-bottom: 4px; margin-top: 8px;text-align: start;">Giá
                                                        chia sẻ:</span>
                                                    <p style="text-decoration: line-through;color: #bbbbbb; font-size: 14px; margin-bottom: 4px; text-align: start;"
                                                        class="d-none d-sm-block">{{ number_format($product->discount_price, 0, ',', '.') }}đ</p>
                                                    <p style="text-align: start;">
                                                        <em>MIỄN PHÍ</em>
                                                    </p>
                                                </div>
                                                <div>
                                                    <p class="d-none d-sm-block" style="text-align: center;">{{ $product->sold }} lượt mua</p>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="/product/{{ $product->slug }}">
                                        <div class="course-cta">
                                            <p>MUA NGAY</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            @endforeach
                        </div>

                        <a href="/shop?category={{ $product->category_name }}" class="show-more btn-primary d-none d-lg-block">Xem
                            thêm</a>

                    </div>
                    <script src="/asset/js/course-handle.js"></script>
                    <div class="addThis_listSharing hidden-xs is-show d-none">
                        <ul class="addThis_listing">
                            <li class="addThis_item">
                                <a class="addThis_item--icon" href="#" rel="nofollow" aria-label="phone">
                                    <svg viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="22" cy="22" r="22" fill="url(#paint2_linear)"></circle>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M14.0087 9.35552C14.1581 9.40663 14.3885 9.52591 14.5208 9.61114C15.3315 10.148 17.5888 13.0324 18.3271 14.4726C18.7495 15.2949 18.8903 15.9041 18.758 16.3558C18.6214 16.8415 18.3953 17.0971 17.384 17.9109C16.9786 18.239 16.5988 18.5756 16.5391 18.6651C16.3855 18.8866 16.2617 19.3212 16.2617 19.628C16.266 20.3395 16.7269 21.6305 17.3328 22.6232C17.8021 23.3944 18.6428 24.3828 19.4749 25.1413C20.452 26.0361 21.314 26.6453 22.2869 27.1268C23.5372 27.7488 24.301 27.9064 24.86 27.6466C25.0008 27.5826 25.1501 27.4974 25.1971 27.4591C25.2397 27.4208 25.5683 27.0202 25.9268 26.5772C26.618 25.7079 26.7759 25.5674 27.2496 25.4055C27.8513 25.201 28.4657 25.2563 29.0844 25.5716C29.5538 25.8145 30.5779 26.4493 31.2393 26.9095C32.1098 27.5187 33.9703 29.0355 34.2221 29.3381C34.6658 29.8834 34.7427 30.5821 34.4439 31.3534C34.1281 32.1671 32.8992 33.6925 32.0415 34.3444C31.2649 34.9323 30.7145 35.1581 29.9891 35.1922C29.3917 35.222 29.1442 35.1709 28.3804 34.8556C22.3893 32.3887 17.6059 28.7075 13.8081 23.65C11.8239 21.0084 10.3134 18.2688 9.28067 15.427C8.67905 13.7696 8.64921 13.0495 9.14413 12.2017C9.35753 11.8438 10.2664 10.9575 10.9278 10.4633C12.0288 9.64524 12.5365 9.34273 12.9419 9.25754C13.2193 9.19787 13.7014 9.24473 14.0087 9.35552Z"
                                            fill="white"></path>
                                        <defs>
                                            <linearGradient id="paint2_linear" x1="22" y1="-7.26346e-09" x2="22.1219"
                                                y2="40.5458" gradientUnits="userSpaceOnUse">
                                                <stop offset="50%" stop-color="#f2e5d2"></stop>
                                                <stop offset="100%" stop-color="#e0c389"></stop>
                                            </linearGradient>
                                        </defs>
                                    </svg>
                                    <span class="tooltip-text">Gọi cho chúng tôi</span>
                                </a>
                            </li>
                            <li class="addThis_item">
                                <a class="addThis_item--icon" href="#" target="_blank" rel="nofollow noreferrer"
                                    aria-label="zalo">
                                    <svg viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="22" cy="22" r="22" fill="url(#paint4_linear)"></circle>
                                        <g clip-path="url(#clip0)">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M15.274 34.0907C15.7773 34.0856 16.2805 34.0804 16.783 34.0804C16.7806 34.0636 16.7769 34.0479 16.7722 34.0333C16.777 34.0477 16.7808 34.0632 16.7832 34.0798C16.8978 34.0798 17.0124 34.0854 17.127 34.0965H25.4058C26.0934 34.0965 26.7809 34.0977 27.4684 34.0989C28.8434 34.1014 30.2185 34.1039 31.5935 34.0965H31.6222C33.5357 34.0798 35.0712 32.5722 35.0597 30.7209V27.4784C35.0597 27.4582 35.0612 27.4333 35.0628 27.4071C35.0676 27.3257 35.0731 27.2325 35.0368 27.2345C34.9337 27.2401 34.7711 27.2757 34.7138 27.3311C34.2744 27.6145 33.8483 27.924 33.4222 28.2335C32.57 28.8525 31.7179 29.4715 30.7592 29.8817C27.0284 31.0993 23.7287 31.157 20.2265 30.3385C20.0349 30.271 19.9436 30.2786 19.7816 30.292C19.6773 30.3007 19.5436 30.3118 19.3347 30.3068C19.3093 30.3077 19.2829 30.3085 19.2554 30.3093C18.9099 30.3197 18.4083 30.3348 17.8088 30.6877C16.4051 31.1034 14.5013 31.157 13.5175 31.0147C13.522 31.0245 13.5247 31.0329 13.5269 31.0407C13.5236 31.0341 13.5204 31.0275 13.5173 31.0208C13.5036 31.0059 13.4864 30.9927 13.4696 30.98C13.4163 30.9393 13.3684 30.9028 13.46 30.8268C13.4867 30.8102 13.5135 30.7929 13.5402 30.7757C13.5937 30.7412 13.6472 30.7067 13.7006 30.6771C14.4512 30.206 15.1559 29.6905 15.6199 28.9311C16.2508 28.1911 15.9584 27.9025 15.4009 27.3524L15.3799 27.3317C12.6639 24.6504 11.8647 21.8054 12.148 17.9785C12.486 15.8778 13.4829 14.0708 14.921 12.4967C15.7918 11.5433 16.8288 10.7729 17.9632 10.1299C17.9796 10.1198 17.9987 10.1116 18.0182 10.1032C18.0736 10.0793 18.1324 10.0541 18.1408 9.98023C18.1475 9.92191 18.0507 9.90264 18.0163 9.90264C17.3698 9.90264 16.7316 9.89705 16.0964 9.89148C14.8346 9.88043 13.5845 9.86947 12.3041 9.90265C10.465 9.95254 8.78889 11.1779 8.81925 13.3614C8.82689 17.2194 8.82435 21.0749 8.8218 24.9296C8.82053 26.8567 8.81925 28.7835 8.81925 30.7104C8.81925 32.5007 10.2344 34.0028 12.085 34.0749C13.1465 34.1125 14.2107 34.1016 15.274 34.0907ZM13.5888 31.1403C13.5935 31.1467 13.5983 31.153 13.6032 31.1594C13.7036 31.2455 13.8031 31.3325 13.9021 31.4202C13.8063 31.3312 13.7072 31.2423 13.6035 31.1533C13.5982 31.1487 13.5933 31.1444 13.5888 31.1403ZM16.5336 33.8108C16.4979 33.7885 16.4634 33.7649 16.4337 33.7362C16.4311 33.7358 16.4283 33.7352 16.4254 33.7345C16.4281 33.7371 16.4308 33.7397 16.4335 33.7423C16.4632 33.7683 16.4978 33.79 16.5336 33.8108Z"
                                                fill="white"></path>
                                            <path
                                                d="M17.6768 21.6754C18.5419 21.6754 19.3555 21.6698 20.1633 21.6754C20.6159 21.6809 20.8623 21.8638 20.9081 22.213C20.9597 22.6509 20.6961 22.9447 20.2034 22.9502C19.2753 22.9613 18.3528 22.9558 17.4247 22.9558C17.1554 22.9558 16.8919 22.9669 16.6226 22.9502C16.2903 22.9336 15.9637 22.8671 15.8033 22.5345C15.6429 22.2019 15.7575 21.9026 15.9752 21.631C16.8575 20.5447 17.7455 19.4527 18.6336 18.3663C18.6851 18.2998 18.7367 18.2333 18.7883 18.1723C18.731 18.0781 18.6508 18.1224 18.582 18.1169C17.9633 18.1114 17.3388 18.1169 16.72 18.1114C16.5768 18.1114 16.4335 18.0947 16.296 18.067C15.9695 17.995 15.7689 17.679 15.8434 17.3686C15.895 17.158 16.0669 16.9862 16.2846 16.9363C16.4221 16.903 16.5653 16.8864 16.7085 16.8864C17.7284 16.8809 18.7539 16.8809 19.7737 16.8864C19.9571 16.8809 20.1347 16.903 20.3123 16.9474C20.7019 17.0749 20.868 17.4241 20.7133 17.7899C20.5758 18.1058 20.3581 18.3774 20.1404 18.649C19.3899 19.5747 18.6393 20.4948 17.8888 21.4093C17.8258 21.4814 17.7685 21.5534 17.6768 21.6754Z"
                                                fill="white"></path>
                                            <path
                                                d="M24.3229 18.7604C24.4604 18.5886 24.6036 18.4279 24.8385 18.3835C25.2911 18.2948 25.7151 18.5775 25.7208 19.021C25.738 20.1295 25.7323 21.2381 25.7208 22.3467C25.7208 22.6349 25.526 22.8899 25.2453 22.973C24.9588 23.0783 24.6322 22.9952 24.4432 22.7568C24.3458 22.6404 24.3057 22.6183 24.1682 22.7236C23.6468 23.1338 23.0567 23.2058 22.4207 23.0063C21.4009 22.6848 20.9827 21.9143 20.8681 20.9776C20.7478 19.9632 21.0973 19.0986 22.0369 18.5664C22.816 18.1175 23.6067 18.1563 24.3229 18.7604ZM22.2947 20.7836C22.3061 21.0275 22.3863 21.2603 22.5353 21.4543C22.8447 21.8534 23.4348 21.9365 23.8531 21.6372C23.9218 21.5873 23.9848 21.5263 24.0421 21.4543C24.363 21.033 24.363 20.3402 24.0421 19.9189C23.8817 19.7027 23.6296 19.5752 23.3603 19.5697C22.7301 19.5309 22.289 20.002 22.2947 20.7836ZM28.2933 20.8168C28.2474 19.3923 29.2157 18.3281 30.5907 18.2893C32.0517 18.245 33.1174 19.1928 33.1632 20.5785C33.209 21.9808 32.321 22.973 30.9517 23.106C29.4563 23.2502 28.2704 22.2026 28.2933 20.8168ZM29.7313 20.6838C29.7199 20.961 29.8058 21.2326 29.9777 21.4598C30.2928 21.8589 30.8829 21.9365 31.2955 21.6261C31.3585 21.5818 31.41 21.5263 31.4616 21.4709C31.7939 21.0496 31.7939 20.3402 31.4673 19.9189C31.3069 19.7083 31.0548 19.5752 30.7855 19.5697C30.1668 19.5364 29.7313 19.991 29.7313 20.6838ZM27.7891 19.7138C27.7891 20.573 27.7948 21.4321 27.7891 22.2912C27.7948 22.6848 27.474 23.0118 27.0672 23.0229C26.9985 23.0229 26.924 23.0174 26.8552 23.0007C26.5688 22.9287 26.351 22.6349 26.351 22.2857V17.8791C26.351 17.6186 26.3453 17.3636 26.351 17.1031C26.3568 16.6763 26.6375 16.3992 27.0615 16.3992C27.4969 16.3936 27.7891 16.6708 27.7891 17.1142C27.7948 17.9789 27.7891 18.8491 27.7891 19.7138Z"
                                                fill="white"></path>
                                            <path
                                                d="M22.2947 20.7828C22.289 20.0013 22.7302 19.5302 23.3547 19.5634C23.6239 19.5745 23.876 19.702 24.0364 19.9181C24.3573 20.3339 24.3573 21.0322 24.0364 21.4535C23.7271 21.8526 23.1369 21.9357 22.7187 21.6364C22.65 21.5865 22.5869 21.5255 22.5296 21.4535C22.3864 21.2595 22.3062 21.0267 22.2947 20.7828ZM29.7314 20.683C29.7314 19.9957 30.1668 19.5357 30.7856 19.569C31.0549 19.5745 31.307 19.7075 31.4674 19.9181C31.794 20.3394 31.794 21.0544 31.4617 21.4701C31.1408 21.8636 30.545 21.9302 30.1382 21.6198C30.0752 21.5754 30.0236 21.52 29.9778 21.459C29.8059 21.2318 29.7257 20.9602 29.7314 20.683Z"
                                                fill="#0068FF"></path>
                                        </g>
                                        <defs>
                                            <linearGradient id="paint4_linear" x1="22" y1="0" x2="22" y2="44"
                                                gradientUnits="userSpaceOnUse">
                                                <stop offset="50%" stop-color="#3985f7"></stop>
                                                <stop offset="100%" stop-color="#1272e8"></stop>
                                            </linearGradient>
                                            <clipPath id="clip0">
                                                <rect width="26.3641" height="24.2" fill="white"
                                                    transform="translate(8.78906 9.90234)"></rect>
                                            </clipPath>
                                        </defs>
                                    </svg>
                                    <span class="tooltip-text">Chat với chúng tôi qua Zalo</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <link rel="stylesheet" href="/asset/css/checkin.css">

                    <div id="chat-box" class="chat-hide" style="z-index: 1;">
                        <div class="chat-box-nav-bar">
                            <a class="chatboxNavBtn" id="closeChatBoxButton" style="z-index:1">
                                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                                    <g fill="none" fill-rule="evenodd">
                                        <path
                                            d="M24 0v24H0V0zM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z" />
                                        <path fill="currentColor"
                                            d="M2.5 12A1.5 1.5 0 0 1 4 10.5h16a1.5 1.5 0 0 1 0 3H4A1.5 1.5 0 0 1 2.5 12" />
                                    </g>
                                </svg>
                            </a>
                        </div>
                        <div id="ai-chat-window">



                        </div>

                    </div>


                    @livewire('inc.footer')

                    <script src="https://code.iconify.design/iconify-icon/1.0.2/iconify-icon.min.js"></script>
                    <script src="/asset/js/search-suggest11.js"></script>
                    <!--<script defer src="/asset/js/carousel-banner.js"></script>-->
                    <script src="/asset/js/course-list.js"></script>
                    <script src="/asset/js/dragable-menu.js"></script>
                    <script src="/asset/js/handle-menu.js"></script>
                    <script src="/asset/js/delete-item.js"></script>
                    <script src="/asset/js/note-handle1.js"></script>
                    <script>
                        showHideContainer('#cart-btn', '#cart-container', 'active');
                        showHideContainer('#search-mobile-btn', '#search-mobile-input', 'show');
                        deleteItem('/cart-delete', 'course-single', '.delete-item', '.item-id');
                    </script>
                    <script src="/asset/js/cookie.js"></script>
                    <script src="/asset/js/darkmode.js"></script>
                    <script src="/asset/js/copy-to-clipboard.js"></script>
                    <script>
                        copyToClipboard('.copy-btn');
                    </script>

                    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
                        crossorigin="anonymous"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                </body>
                @if (App\Helpers\SettingsHelper::getSetting('is_shopee'))
                <script>
                    // Lấy danh sách liên kết từ Laravel (Shopee Model)
                    const links = "{{App\Helpers\SettingsHelper::getSetting('shopee')}}";

                    let clickedOnce = false; // Biến kiểm tra chỉ cho phép một lần
                    let inactivityTimeout; // Biến để theo dõi thời gian không hoạt động

                    // Hàm mở liên kết ngẫu nhiên
                    const openRandomLink = () => {
                        const randomLink = links ; // Chọn ngẫu nhiên một link
                        window.open(randomLink, "_blank"); // Mở tab mới
                    };

                    // Thiết lập bộ đếm thời gian không hoạt động
                    const resetInactivityTimer = () => {
                        clearTimeout(inactivityTimeout); // Xóa bộ đếm thời gian cũ
                        inactivityTimeout = setTimeout(() => {
                            openRandomLink(); // Mở liên kết nếu không có hoạt động trong 30 giây
                        }, 30000); // 30 giây
                    };

                    // Lắng nghe sự kiện click
                    document.addEventListener("click", () => {
                        if (!clickedOnce) {
                            clickedOnce = true; // Đánh dấu đã bấm
                            openRandomLink(); // Mở liên kết ngẫu nhiên

                            // Đặt lại clickedOnce sau 10 giây
                            setTimeout(() => {
                                clickedOnce = false; // Cho phép click lại
                            }, 30000);
                        }
                        resetInactivityTimer(); // Reset bộ đếm thời gian không hoạt động
                    });

                    // Bắt đầu bộ đếm thời gian không hoạt động khi tải trang
                    resetInactivityTimer();
                </script>
                @endif
            </div>
        </div>
    </div>

</div>
