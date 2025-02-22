<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
    <div class="row">
        @livewire('content.product.image', ['product' => $product])
        <div class="col-lg-6 col-md-7 col-sm-12 col-xs-12 information-product">
            <div class="product-title">
                <h1>{{ $product->name }}</h1>
            </div>
            <div class="product-price" id="price-preview">
                <span>{{ number_format($product->price, 0, ',', '.') }}₫</span>
            </div>
            <form id="add-item-form" class="variants clearfix variant-style">
                <div class="select clearfix">
                    <style>
                        .selector-wrapper:not(.opt1):not(.opt1-quickview):not(.opt2):not(.opt2-quickview):not(.opt3):not(.opt3-quickview) {
                            display: none;
                        }
                    </style>

                    <select id="product-select" name="id" style="display:none">
                    </select>
                </div>
                <div class="select-wrapper clearfix ">
                    <label>Số lượng</label>
                    <input type="button" value="-" wire:click="decrementQuantity" class="qty-btn">
                    <input type="text" id="quantity" name="quantity" class="quantity-selector" wire:model="quantity">
                    <input type="button" value="+" wire:click="incrementQuantity" class="qty-btn">
                </div>
                <div class="clearfix">
                    <button class="btn-style-add addtocart-modal" wire:click="addToCart">Thêm vào
                        giỏ</button>
                    <button class="btn-style-buynow addnow" wire:click="buyNow">Mua ngay</button>
                </div>
            </form>

            <div class="information-more">
                <strong>Loyalty membership program</strong>
                <ul>

                    <li><i class="fa fa-check"></i> 2% off for each cart</li>


                    <li><i class="fa fa-check"></i> Grab delivery within 2 hours
                        after order
                        confirmation</li>


                    <li><i class="fa fa-check"></i> Products consultation during
                        office
                        working hours</li>


                    <li><i class="fa fa-check"></i> Products return within 12 hours
                    </li>


                </ul>
            </div>
        </div>
    </div>
    <div class="row">

        <div class=" col-xs-12">
            <div class="product-comment">
                <!-- Nav tabs -->
                <ul class="product-tablist nav nav-tabs" id="tab-product-template">
                    <li class="active">
                        <a data-toggle="tab" data-spy="scroll" href="#description">
                            <span> Mô tả sản phẩm</span>
                        </a>
                    </li>


                    <li>
                        <a data-toggle="tab" data-spy="scroll" href="#product-related">

                            <span>
                                Sản phẩm cùng nhóm
                            </span>

                        </a>
                    </li>

                </ul>
                <!-- Tab panes -->
                <div id="description">
                    <div class="container-fluid product-description-wrapper">
                        {!! $product->description !!}

                    </div>
                </div>


                <div id="product-related">
                    <div class="title-decoration">

                        <span>
                            Sản phẩm cùng nhóm
                        </span>

                        <div class="decoration"></div>
                    </div>
                    <div class="clearfix">





                        <div class="product-lists">
                            <div class="owl-carousel">
                                @foreach ($relatedProducts as $relatedProduct)
                                    <div class="item product-item box-product-lists">
                                        <div class="product-wrapper product-resize" style="margin: 1px 0px;">
                                            <div class="product-information">
                                                <div class="product-detail">
                                                    <div class="product-image image-resize">
                                                        <a href="/product/{{ $relatedProduct->slug }}"
                                                            title="{{ $relatedProduct->name }}">

                                                            <img class="respon-owlCarousel"
                                                                src="{{ url(Storage::url($relatedProduct->image)) }}"
                                                                alt="{{ $relatedProduct->name }}" />


                                                        </a>
                                                        <div class="field-new countdown_1024439591" style="display: none">
                                                            <span>new</span>
                                                        </div>



                                                        <div class="btn-cart-product">
                                                            <a href="javascript:void(0);"
                                                                onclick="add_item_show_modalCart(1054992890)"><i
                                                                    class="fa fa-shopping-cart"></i></a>
                                                        </div>
                                                        <div class="btn-quickview-product">
                                                            <a href="/product/{{ $relatedProduct->slug }}" class="quickview"
                                                              ><i
                                                                    class="fa fa-search"></i></a>
                                                        </div>
                                                        <div class="btn-wishlist-product">
                                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="/product/{{ $relatedProduct->slug }}"
                                                            title="{{ $relatedProduct->name }}">
                                                            <h2>
                                                                {{ $relatedProduct->name }}
                                                            </h2>
                                                        </a>

                                                        <div class="price-info clearfix">
                                                            <div class="price-new-old">
                                                                <span>{{ number_format($relatedProduct->price, 0, ',', '.') }}₫</span>

                                                            </div>
                                                        </div>


                                                        <div class="orderBox ">


                                                            <div class="input-group glmama">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-danger control minus"
                                                                        type="button"><i class="fa fa-minus"></i></button>
                                                                </span>
                                                                <input type="hidden" class="zinzin" id="1054992890"
                                                                    value="{{ $relatedProduct->price }}">
                                                                <input type="text"
                                                                    class="form-control txtSl-1030423232 nani" value="1">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-danger control plus"
                                                                        type="button"><i class="fa fa-plus"></i></button>
                                                                </span>
                                                            </div>
                                                            <!-- /input-group -->
                                                            <div class="flexorder">
                                                                <p class="tongGia">
                                                                    Total: <span class="tonggiaonap">120,000₫</span>
                                                                </p>
                                                                <a href="" class="btnBuyNow hvr-bob"><img
                                                                        src="/assets/theme.hstatic.net/200000077081/1001259549/14/iconBuyNow.png?v=168"></a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                    </div>
                </div>
                <script>
                    var product_related = $('#product-related .owl-carousel');
                    product_related.owlCarousel({
                        items: 4,
                        margin: 20,
                        nav: true,
                        loop: true,
                        responsive: {
                            0: {
                                items: 2
                            },
                            768: {
                                items: 3
                            },
                            992: {
                                items: 4
                            },
                            1200: {
                                items: 4
                            }
                        }
                    });
                    product_related.find('.owl-next').css({
                        "position": "absolute",
                        "right": "5px",
                        "top": "40%"
                    }).html("<img src='/assets/theme.hstatic.net/200000077081/1001259549/14/btn-arrow-right.png?v=168' />");
                    product_related.find('.owl-prev').css({
                        "position": "absolute",
                        "left": "5px",
                        "top": "40%"
                    }).html("<img src='/assets/theme.hstatic.net/200000077081/1001259549/14/btn-arrow-left.png?v=168' />");
                    checkItemOwlShow($('#product-related'), '', 4, 4, 3, 2);
                </script>

            </div>
        </div>
        <div class="btn-position hidden-xs" style="display: none;">
            <ul class="btn-items">
                <li class="buy-new-pos addnow">
                    <a href="javascript:void(0);" title="Đặt mua ngay">
                        <div class="arrow-cirle-btn">
                            <img src="/assets/theme.hstatic.net/200000077081/1001259549/14/arrow-btn-buy.png?v=168" />
                        </div>
                        <span>Mua ngay</span>
                    </a>
                </li>
                <li class="cart-pos" id="cart-pos-product">
                    <a href="/cart" title="Xem lại giỏ hàng">
                        <img src="/assets/theme.hstatic.net/200000077081/1001259549/14/icon-cart-pos.png?v=168" />
                        <span>1 sản phẩm</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
