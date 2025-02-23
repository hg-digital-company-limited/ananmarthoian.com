<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-item">
    <div class="product-wrapper">
        <div class="product-information">
            <div class="product-detail">
                <div class="product-image">
                    <a href="/product/{{ $product->slug }}" title="{{ $product->name }}">
                        <img class="lazyload" src="1x1.png"
                            data-src="{{ Storage::url($product->image) }}" alt="{{ $product->name }}" />
                            @if($product->is_stock == 0)
                            <img class="lblSold" src="/assets/theme.hstatic.net/200000077081/1001259549/14/lblsold_vi.png?v=168" alt="Hết hàng">
                        @endif

                    </a>
                    <div class="field-new countdown_{{ $product->id }}" style="display: none">
                        <span>new</span>
                    </div>

                    <div class="btn-cart-product">
                        <a href="javascript:void(0);" onclick="add_item_show_modalCart({{ $product->id }})">
                            <i class="fa fa-shopping-cart"></i>
                        </a>
                    </div>
                    <div class="btn-quickview-product">
                        <a href="javascript:void(0);" class="quickview" data-handle="/product/{{ $product->slug }}">
                            <i class="fa fa-search"></i>
                        </a>
                    </div>
                    <div class="btn-wishlist-product">
                        <a href="#"><i class="fa fa-heart-o"></i></a>
                    </div>
                </div>
                <div class="product-info">
                    <a href="/product/{{ $product->slug }}" title="{{ $product->name }}">
                        <h2>{{ $product->name }}</h2>
                    </a>

                    <div class="price-info clearfix">
                        <div class="price-new-old">
                            <span>{{ number_format($product->price, 0, ',', '.') }}₫</span>
                        </div>
                    </div>

                    <div class="orderBox">
                        <div class="input-group glmama">
                            <span class="input-group-btn">
                                <button class="btn btn-danger control minus"
                                    type="button">
                                    <i class="fa fa-minus"></i>
                                </button>
                            </span>
                            <input type="hidden" class="zinzin"
                                id="{{ $product->id }}"
                                value="{{ $product->price * 100 }}">
                            <input type="text"
                                class="form-control txtSl-{{ $product->id }} nani"
                                value="1">
                            <span class="input-group-btn">
                                <button class="btn btn-danger control plus"
                                    type="button">
                                    <i class="fa fa-plus"></i>
                                </button>
                            </span>
                        </div>
                        <div class="flexorder">
                            <p class="tongGia">
                                Total: <span
                                    class="tonggiaonap">{{ number_format($product->price, 0, ',', '.') }}₫</span>
                            </p>
                            <a href="#" class="btnBuyNow hvr-bob">
                                <img
                                    src="/assets/theme.hstatic.net/200000077081/1001259549/14/iconBuyNow.png?v=168">
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <style>
        @media (max-width: 768px) {
            .col-lg-3.col-md-3.col-sm-6.col-xs-6.product-item{
                padding: 15px 0;
            }
        }
    </style>
</div>
