<section id="content">
    <div class="container">
        <div class="row" id="cart">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <h2 class="coll-title cart-title">Giỏ hàng</h2>
                <form >
                    <div class="clearfix overflow-cart">
                        <table id="table-cart">
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Thông tin sản phẩm</th>
                                <th>Đơn giá</th>
                                <th>Số lượng</th>
                                <th class="hidden-xs">Thành tiền</th>
                                <th></th>
                            </tr>

                            @foreach($cartItems as $item)
                            <tr>
                                <td>
                                    <a href="/product/{{ $item['product_slug'] }}">
                                        <img src="{{ Storage::url( $item['image']) }}" alt="{{ $item['name'] }}" style="max-height: 100px"/>
                                    </a>
                                </td>
                                <td style="text-align:left;max-width:300px;">
                                    <a href="/product/{{ $item['product_slug'] }}">
                                        <strong>{{ $item['name'] }}</strong>
                                    </a>
                                </td>
                                <td>{{ number_format($item['price'], 0, ',', '.') }}₫</td>
                                <td class="qty">
                                    <div style="display: flex; align-items: center;">
                                        <div wire:click="decrementQuantity({{ $item['product_id'] }})" class="btn btn-decrement">-</div>

                                        <input type="number" size="4" name="updates[{{ $item['product_id'] }}]" min="1"
                                               value="{{ $item['quantity'] }}"

                                               class="tc item-quantity" />

                                        <div wire:click="incrementQuantity({{ $item['product_id'] }})" class="btn btn-increment">+</div>
                                    </div>

                                </td>
                                <td class="price hidden-xs">{{ number_format($item['total_amount'], 0, ',', '.') }}₫</td>
                                <td class="remove">
                                    <a href="javascript:void(0);" wire:click="removeItem({{ $item['product_id'] }})">
                                        <img src="/assets/theme.hstatic.net/200000077081/1001259549/14/remove-cart.png?v=168" />
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                        </table>
                    </div>

                    <div class="clearfix">
                        <a class="continue-shopping" title="Mua tiếp" href="/shop">Mua tiếp</a>
                        <a class="continue-shopping" title="Cập nhật giỏ hàng" href="/cart">Cập nhật giỏ hàng</a>
                    </div>
                </form>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <h2 class="coll-title cart-title">Đơn hàng</h2>
                <div class="right-cart">
                    <h2>
                        <label>Tổng tiền</label>
                        <label>{{ number_format($totalPrice, 0, ',', '.') }}₫</label>
                    </h2>
                    <a class="checkout" href="/checkout">Thanh toán</a>
                </div>

                <div class="cart-notify">
                    Nếu có vấn đề phát sinh, vui lòng liên hệ 0976.979.546
                </div>
            </div>
        </div>
    </div>
</section>
