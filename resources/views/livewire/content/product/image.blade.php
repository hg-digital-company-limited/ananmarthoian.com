<div class="col-lg-6 col-md-5 col-sm-12">
    <div id="surround">


        <div class="row">
            <div class="col-lg-10 col-md-12 col-sm-12 col-xs-12 box-image-featured" >
                <img class="product-image-feature" style="display:none"
                    src="{{ url(Storage::url($product->image)) }}" alt="{{ $product->name }}">
                <span class="product__soldout">{{ $product->is_stock == 0 ? 'Hết hàng' : '' }}</span>
                <div class="lazy-load-ball lazy-product-featured">
                    <div class="uil-ring-css">
                        <div></div>
                    </div>
                </div>

            </div>
            <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12" id="thumbnail-image">
                <div class="product-thumb-vertical" id="sliderproduct" style="display:none;">
                    <ul>



                        <li class="product-thumb nac-vai">
                            <a href="javascript:void(0);" data-image="{{ url(Storage::url($product->image)) }}">
                                <img src="{{ url(Storage::url($product->image)) }}" />
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <style>
            @media (max-width: 768px) {
                #thumbnail-image {
                    max-height: 100px;
                }
                .mTSThumb, ul.mTSContainer > li img {
                    max-height: 100px;
}
            }
        </style>
    </div>
</div>
