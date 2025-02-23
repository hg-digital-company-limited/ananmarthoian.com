<div>
    <div>
        <div>
            <div>


                <div class="flexbox">

                    <head>
                        <title>
                            AN AN MART - Đơn hàng#{{ $order->id }}
                        </title>







                     <link rel="stylesheet" href="/assets/checkout.css">



                        <link href='/assets/theme.hstatic.net/200000077081/1001259549/14/check_out.css?v=168'
                            rel='stylesheet' type='text/css' media='all' />
                        <script src='/assets/hstatic.net/0/0/global/jquery.min.js' type='text/javascript'></script>
                        <script src='/assets/hstatic.net/0/0/global/api.jquery.js' type='text/javascript'></script>
                        <script src='/assets/hstatic.net/0/0/global/jquery.validate.js' type='text/javascript'></script>




                    </head>

                    <body>

                        <div class="banner">
                            <div class="wrap">
                                <a href="/" class="logo">


                                    <h1 class="logo-text">AN AN MART</h1>

                                </a>
                            </div>
                        </div>

                        <button class="order-summary-toggle order-summary-toggle-hide">
                            <div class="wrap">
                                <div class="order-summary-toggle-inner">
                                    <div class="order-summary-toggle-icon-wrapper">
                                        <svg width="20" height="19" xmlns="http://www.w3.org/2000/svg"
                                            class="order-summary-toggle-icon">
                                            <path
                                                d="M17.178 13.088H5.453c-.454 0-.91-.364-.91-.818L3.727 1.818H0V0h4.544c.455 0 .91.364.91.818l.09 1.272h13.45c.274 0 .547.09.73.364.18.182.27.454.18.727l-1.817 9.18c-.09.455-.455.728-.91.728zM6.27 11.27h10.09l1.454-7.362H5.634l.637 7.362zm.092 7.715c1.004 0 1.818-.813 1.818-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817zm9.18 0c1.004 0 1.817-.813 1.817-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817z">
                                            </path>
                                        </svg>
                                    </div>
                                    <div class="order-summary-toggle-text order-summary-toggle-text-show">
                                        <span>Thông tin đơn hàng</span>
                                        <svg width="11" height="6" xmlns="http://www.w3.org/2000/svg"
                                            class="order-summary-toggle-dropdown" fill="#000">
                                            <path
                                                d="M.504 1.813l4.358 3.845.496.438.496-.438 4.642-4.096L9.504.438 4.862 4.534h.992L1.496.69.504 1.812z">
                                            </path>
                                        </svg>
                                    </div>
                                    <div class="order-summary-toggle-text order-summary-toggle-text-hide">
                                        <span>Ẩn thông tin đơn hàng</span>
                                        <svg width="11" height="7" xmlns="http://www.w3.org/2000/svg"
                                            class="order-summary-toggle-dropdown" fill="#000">
                                            <path
                                                d="M6.138.876L5.642.438l-.496.438L.504 4.972l.992 1.124L6.138 2l-.496.436 3.862 3.408.992-1.122L6.138.876z">
                                            </path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </button>
                        <div class="content content-second">
                            <div class="wrap">
                                <div class="sidebar sidebar-second">
                                    <div class="sidebar-content">
                                        <div class="order-summary">
                                            <div class="order-summary-sections">
                                                <div class="order-summary-section order-summary-section-product-list" data-order-summary-section="line-items">
                                                    <table class="product-table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col"><span class="visually-hidden">Hình ảnh</span></th>
                                                                <th scope="col"><span class="visually-hidden">Mô tả</span></th>
                                                                <th scope="col"><span class="visually-hidden">Số lượng</span></th>
                                                                <th scope="col"><span class="visually-hidden">Giá</span></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach ($order->orderItems as $item)
                                                            <tr class="product" data-product-id="{{ $item->product->id }}" data-variant-id="{{ $item->variant_id }}">
                                                                <td class="product-image">
                                                                    <div class="product-thumbnail">
                                                                        <div class="product-thumbnail-wrapper">
                                                                            <img class="product-thumbnail-image" alt="{{ $item->product->name }}" src="{{ url(Storage::url($item->product->image)) }}" />
                                                                        </div>
                                                                        <span class="product-thumbnail-quantity" aria-hidden="true">{{ $item->quantity }}</span>
                                                                    </div>
                                                                </td>
                                                                <td class="product-description">
                                                                    <span class="product-description-name order-summary-emphasis">{{ $item->product->name }}</span>
                                                                </td>
                                                                <td class="product-quantity visually-hidden">{{ $item->quantity }}</td>
                                                                <td class="product-price">
                                                                    <span class="order-summary-emphasis">{{ number_format($item->price, 0, ',', '.') }}₫</span>
                                                                </td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div class="order-summary-section order-summary-section-total-lines payment-lines" data-order-summary-section="payment-lines">
                                                    <table class="total-line-table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col"><span class="visually-hidden">Mô tả</span></th>
                                                                <th scope="col"><span class="visually-hidden">Giá</span></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr class="total-line total-line-subtotal">
                                                                <td class="total-line-name">Tạm tính (Draft Bill)</td>
                                                                <td class="total-line-price">
                                                                    <span class="order-summary-emphasis">{{ number_format($order->total, 0, ',', '.') }}₫</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot class="total-line-table-footer">
                                                            <tr class="total-line">
                                                                <td class="total-line-name payment-due-label">
                                                                    <span class="payment-due-label-total">Tổng cộng (Total)</span>
                                                                </td>
                                                                <td class="total-line-name payment-due">
                                                                    <span class="payment-due-currency">VND</span>
                                                                    <span class="payment-due-price">{{ number_format($order->total, 0, ',', '.') }}₫</span>
                                                                </td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="content">

                            <div class="wrap">
                                <div class="sidebar">
                                    <div class="sidebar-content">
                                        <div class="order-summary order-summary-is-collapsed">
                                            <h2 class="visually-hidden">Thông tin đơn hàng</h2>
                                            <div class="order-summary-sections">
                                                <div class="order-summary-section order-summary-section-product-list"
                                                    data-order-summary-section="line-items">
                                                    <table class="product-table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col"><span class="visually-hidden">Hình
                                                                        ảnh</span>
                                                                </th>
                                                                <th scope="col"><span class="visually-hidden">Mô
                                                                        tả</span></th>
                                                                <th scope="col"><span class="visually-hidden">Số
                                                                        lượng</span>
                                                                </th>
                                                                <th scope="col"><span class="visually-hidden">Giá</span>
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                            @foreach ($order->orderItems as $item)
                                                            <tr class="product" data-product-id="1055761837"
                                                                data-variant-id="1125857376">
                                                                <td class="product-image">
                                                                    <div class="product-thumbnail">
                                                                        <div class="product-thumbnail-wrapper">
                                                                            <img class="product-thumbnail-image"
                                                                                alt="{{ $item->product->name }}"
                                                                                src="{{ url(Storage::url($item->product->image)) }}" />
                                                                        </div>
                                                                        <span class="product-thumbnail-quantity"
                                                                            aria-hidden="true">{{ $item->quantity }}</span>
                                                                    </div>
                                                                </td>
                                                                <td class="product-description">
                                                                    <span
                                                                        class="product-description-name order-summary-emphasis">{{ $item->product->name }}</span>

                                                                </td>
                                                                <td class="product-quantity visually-hidden">1</td>
                                                                <td class="product-price">
                                                                    <span class="order-summary-emphasis">{{ number_format($item->price, 0, ',', '.') }}₫</span>
                                                                </td>
                                                            </tr>
                                                            @endforeach

                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div class="order-summary-section order-summary-section-total-lines payment-lines"
                                                    data-order-summary-section="payment-lines">
                                                    <table class="total-line-table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col"><span class="visually-hidden">Mô
                                                                        tả</span></th>
                                                                <th scope="col"><span class="visually-hidden">Giá</span>
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr class="total-line total-line-subtotal">
                                                                <td class="total-line-name">Tạm tính (Draft Bill)</td>
                                                                <td class="total-line-price">
                                                                    <span class="order-summary-emphasis"
                                                                        data-checkout-subtotal-price-target="{{ $order->total }}">
                                                                        {{ number_format($order->total, 0, ',', '.') }}₫
                                                                    </span>
                                                                </td>
                                                            </tr>



                                                        </tbody>
                                                        <tfoot class="total-line-table-footer">
                                                            <tr class="total-line">
                                                                <td class="total-line-name payment-due-label">
                                                                    <span class="payment-due-label-total">Tổng cộng
                                                                        (Total)</span>
                                                                </td>
                                                                <td class="total-line-name payment-due">
                                                                    <span class="payment-due-currency">VND</span>
                                                                    <span class="payment-due-price"
                                                                        data-checkout-payment-due-target="{{ $order->total }}">
                                                                        {{ number_format($order->total, 0, ',', '.') }}₫
                                                                    </span>
                                                                    <span class="checkout_version" display:none
                                                                        data_checkout_version="0">
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="main">
                                    <div class="main-header">

                                        <a href="/" class="logo">

                                            <h1 class="logo-text">AN AN MART</h1>

                                        </a>

                                        <style>
                                            a.logo {
                                                display: block;
                                            }

                                            .logo-cus {
                                                width: 100%;
                                                padding: 15px 0;
                                                text-align: ;
                                            }

                                            .logo-cus img {
                                                max-height: 4.2857142857em
                                            }

                                            .logo-text {
                                                text-align: ;
                                            }

                                            @media (max-width: 767px) {
                                                .banner a {
                                                    display: block;
                                                }
                                            }
                                        </style>


                                    </div>
                                    <div class="main-content">



                                        <div>
                                            <div class="section">
                                                <div class="section-header os-header">

                                                    <svg width="50" height="50" xmlns="http://www.w3.org/2000/svg"
                                                        fill="none" stroke="#000" stroke-width="2"
                                                        class="hanging-icon checkmark">
                                                        <path class="checkmark_circle"
                                                            d="M25 49c13.255 0 24-10.745 24-24S38.255 1 25 1 1 11.745 1 25s10.745 24 24 24z">
                                                        </path>
                                                        <path class="checkmark_check"
                                                            d="M15 24.51l7.307 7.308L35.125 19">
                                                        </path>
                                                    </svg>

                                                    <div class="os-header-heading">
                                                        <h2 class="os-header-title">

                                                            Đặt hàng thành công

                                                        </h2>
                                                        <span class="os-order-number">
                                                            Mã đơn hàng #{{ $order->id }}
                                                        </span>

                                                        <span class="os-description">
                                                            Cám ơn bạn đã mua hàng!
                                                        </span>

                                                    </div>
                                                </div>
                                            </div>



                                            <div class="section thank-you-checkout-info">
                                                <div class="section-content">
                                                    <div class="content-box">
                                                        <div
                                                            class="content-box-row content-box-row-padding content-box-row-no-border">
                                                            <h2>Thông tin đơn hàng</h2>
                                                        </div>
                                                        <div class="content-box-row content-box-row-padding">
                                                            <div class="section-content">
                                                                <div class="section-content-column">
                                                                    <h3>Thông tin giao hàng</h3>

                                                                    {{ $order->full_name }}
                                                                    </br>
                                                                    {{ $order->address }}
                                                                    </br>
                                                                    {{ $order->phone }}
                                                                    </br>



                                                                    </br>
                                                                    {{ $order->shipping_method == 'cod' ? 'Giao tận nơi (Ship COD)' : 'Nhận tại cửa hàng (Receive at shop)' }}
                                                                    </br>
                                                                    AN AN MART
                                                                    </br>





                                                                    <h3>Phương thức thanh toán</h3>
                                                                    <p>
                                                                        {{ $order->shipping_method == 'cod' ? 'Thanh toán khi giao hàng (COD)' : 'Nhận tại cửa hàng (Receive at shop)' }}


                                                                    </p>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="step-footer">

                                                <a href="/" class="step-footer-continue-btn btn">
                                                    <span class="btn-content">Tiếp tục mua hàng</span>
                                                </a>

                                                <p class="step-footer-info">
                                                    <i class="icon icon-os-question"></i>
                                                    <span>


                                                        Cần hỗ trợ? <a href="mailto:cskh.moonmilk@gmail.com">Liên hệ
                                                            chúng
                                                            tôi</a>
                                                    </span>
                                                </p>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="hrv-coupons-popup">
                                        <div class="hrv-title-coupons-popup">
                                            <p>Chọn giảm giá <span class="count-coupons"></span></p>
                                            <div class="hrv-coupons-close-popup">
                                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M17.1663 2.4785L15.5213 0.833496L8.99968 7.35516L2.47801 0.833496L0.833008 2.4785L7.35468 9.00016L0.833008 15.5218L2.47801 17.1668L8.99968 10.6452L15.5213 17.1668L17.1663 15.5218L10.6447 9.00016L17.1663 2.4785Z"
                                                        fill="#424242"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="hrv-content-coupons-code">
                                            <h3 class="coupon_heading">Mã giảm giá của shop</h3>
                                            <div class="hrv-discount-code-web">
                                            </div>
                                            <div class="hrv-discount-code-external">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="hrv-coupons-popup-site-overlay"></div>
                                    <div class="main-footer footer-powered-by">Powered by Haravan</div>
                                </div>
                            </div>

                        </div>

                    </body>
                </div>
            </div>
        </div>
    </div>

</div>
