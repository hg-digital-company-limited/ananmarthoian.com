<div>
    <div class="container home-collection">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="headline-serif headline-separator-holder">
                    <span class="headline-separator">SẢN PHẨM MỚI NHẤT</span>
                </h2>
            </div>
            <div class="clearfix">
                <div class="box-product-lists">
                    @foreach($newestProducts as $product)
                        <div class="col-lg-20 col-md-3 col-sm-4 col-xs-6 product-item animated zoomIn">
                            <div class="product-wrapper">
                                <div class="product-information">
                                    <div class="product-detail">
                                        <div class="product-image">
                                            <a href="/product/{{ $product->slug }}" title="{{ $product->name }}">
                                                <img class="lazyload" src="{{Storage::url($product->image) }}"
                                                    alt="{{ $product->name }}" />
                                                @if($product->is_stock == 0)
                                                    <img class="lblSold"
                                                        src="/assets/theme.hstatic.net/200000077081/1001259549/14/lblsold_vi.png?v=168"
                                                        alt="Hết hàng">
                                                @endif
                                            </a>
                                            <div class="field-new countdown_{{ $product->id }}" style="display: none">
                                                <span>new</span>
                                            </div>
                                            <div class="btn-cart-product">
                                                <a href="javascript:void(0);"
                                                    onclick="add_item_show_modalCart({{ $product->id }})">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                            <div class="btn-quickview-product">
                                                <a href="/product/{{ $product->slug }}"  class="quickview"
                                                >
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
                                                        <button class="btn btn-danger control minus" type="button">
                                                            <i class="fa fa-minus"></i>
                                                        </button>
                                                    </span>
                                                    <input type="hidden" class="zinzin" id="{{ $product->id }}"
                                                        value="{{ $product->price * 100 }}">
                                                    <input type="text" class="form-control txtSl-{{ $product->id }} nani"
                                                        value="1">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-danger control plus" type="button">
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
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <div class="container home-collection">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="headline-serif headline-separator-holder">
                    <span class="headline-separator">SẢN PHẨM BÁN CHẠY</span>
                </h2>
            </div>
            <div class="clearfix">
                <div class="box-product-lists">
                    @foreach($bestSellingProducts as $product)
                        <div class="col-lg-20 col-md-3 col-sm-4 col-xs-6 product-item animated zoomIn">
                            <div class="product-wrapper">
                                <div class="product-information">
                                    <div class="product-detail">
                                        <div class="product-image">
                                            <a href="/product/{{ $product->slug }}" title="{{ $product->name }}">
                                                <img class="lazyload" src="1x1.png"
                                                    data-src="{{ Storage::url($product->image)  }}"
                                                    alt="{{ $product->name }}" />
                                                @if($product->is_stock == 0)
                                                    <img class="lblSold"
                                                        src="/assets/theme.hstatic.net/200000077081/1001259549/14/lblsold_vi.png?v=168"
                                                        alt="Hết hàng">
                                                @endif
                                            </a>
                                            <div class="field-new countdown_{{ $product->id }}" style="display: none">
                                                <span>new</span>
                                            </div>
                                            <div class="btn-cart-product">
                                                <a href="javascript:void(0);"
                                                    onclick="add_item_show_modalCart({{ $product->id }})">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                            <div class="btn-quickview-product">
                                                <a href="/product/{{ $product->slug }}" class="quickview"
                                                >
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
                                                    <span>{{ number_format($product->price, 0, ',', '.') }}₫{{ $product->unit }}</span>
                                                </div>
                                            </div>
                                            <div class="orderBox">
                                                <div class="input-group glmama">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-danger control minus" type="button">
                                                            <i class="fa fa-minus"></i>
                                                        </button>
                                                    </span>
                                                    <input type="hidden" class="zinzin" id="{{ $product->id }}"
                                                        value="{{ $product->price * 100 }}">
                                                    <input type="text" class="form-control txtSl-{{ $product->id }} nani"
                                                        value="1"  />
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-danger control plus" type="button">
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
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
    <script>
        document.querySelectorAll('.orderBox').forEach(orderBox => {
            let quantityInput = orderBox.querySelector('input[type="text"]');
            let totalPriceSpan = orderBox.querySelector('.tonggiaonap');
            let pricePerUnit = parseFloat(orderBox.querySelector('.zinzin').value) / 100;

            // Function to update total price
            function updateTotalPrice() {
                let quantity = Math.max(1, parseInt(quantityInput.value) || 1); // Ensure quantity is at least 1
                let totalPrice = quantity * pricePerUnit;
                totalPriceSpan.textContent = totalPrice.toLocaleString('vi-VN') + '₫';
            }

            // Initialize total price
            updateTotalPrice();

            // Event listener for minus button
            orderBox.querySelector('.minus').addEventListener('click', () => {
                let quantity = Math.max(1, parseInt(quantityInput.value) - 1);
                quantityInput.value = quantity;
                updateTotalPrice();
            });

            // Event listener for plus button
            orderBox.querySelector('.plus').addEventListener('click', () => {
                let quantity = parseInt(quantityInput.value) + 1;
                quantityInput.value = quantity;
                updateTotalPrice();
            });

            // Prevent direct input below 1
            quantityInput.addEventListener('input', (e) => {
                let value = parseInt(e.target.value);
                if (isNaN(value) || value < 1) {
                    quantityInput.value = 1; // Reset to 1 if invalid
                } else {
                    quantityInput.value = value;
                }
                updateTotalPrice();
            });

            // Event listener for Buy Now button
            orderBox.querySelector('.btnBuyNow').addEventListener('click', (e) => {
                e.preventDefault();
                let productId = orderBox.querySelector('.zinzin').id;
                let quantity = quantityInput.value;

                // Call Livewire function (ensure Livewire is initialized)
                Livewire.dispatch('addToCart', { productId, quantity });
            });
        });
    </script>
</div>
