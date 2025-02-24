<div>

    <footer>
        <div class="footer-info">
            <div class="container">
                <div class="row">

                    <div class="col-md-4" id="company_info">

                        <h4 class="small-title">AN AN MART</h4>
                        <p class="mst">HOI AN ALCOHOL SHOP - Wine Store - BIA RƯỢU- VANG HỘI AN</p>
                    </div>


                    <div class="col-md-4" id="social_links">
                        <h4 class="small-title">Kết nối chúng tôi qua </h4>
                        <div>

                            <a href="https://www.facebook.com/Hoianalcohoshop/" target="_blank" class="icon_fa">
                                <i class="fa fa-facebook"></i>
                            </a>


                            <a href="#02" target="_blank" class="icon_fa">
                                <i class="fa fa-twitter"></i>
                            </a>


                            <a href="#03" target="_blank" class="icon_fa">
                                <i class="fa fa-google-plus"></i>
                            </a>


                            <a href="#04" target="_blank" class="icon_fa">
                                <i class="fa fa-youtube"></i>
                            </a>


                            <a href="https://zalo.me/0976979546" target="_blank" class="icon_fa">
                                <img src="/assets/theme.hstatic.net/200000077081/1001259549/14/zalo.png?v=168">
                            </a>


                        </div>
                    </div>


                </div>
            </div>
        </div>

        <div class="footer-center">
            <div class="container">
                <div class="footer-center-wrap">
                    <div class="row">

                        <div class="col-md-4 col-sm-6 col-xs-12 border-right wow animated fadeInUp"
                            data-wow-delay="100ms">
                            <div class="footer-block toggle-mb" id="block_links_footer_2">
                                <h4 class="title_block toggle-mb-title" aria-expanded="false">Thông tin Doanh Nghiệp
                                    <i class="fa fa-angle-down hidden-lg hidden-md hidden-sm "></i>
                                </h4>
                                <div class="block_content toggle-mb-content">
                                    HOI AN ALCOHOL SHOP
<br /> Địa chỉ: 191 Lý Thường Kiệt, Phường Minh An, Hội
                                    An, Quảng Nam, Việt Nam.

                                </div>
                            </div>
                        </div>


                        <div class="col-md-3 col-sm-6 col-xs-12 border-right wow animated fadeInUp"
                            data-wow-delay="100ms">
                            <div class="footer-block toggle-mb" id="block_links_footer_1">
                                <h4 class="title_block toggle-mb-title" aria-expanded="false">DANH MỤC SẢN PHẨM <i
                                        class="fa fa-angle-down hidden-lg hidden-md hidden-sm "></i></h4>
                                <div class="block_content toggle-mb-content">
                                    <ul class="toggle-footer list-group bullet">
                                        @foreach ($classifications as $classification)
                                            <li class="item">
                                                <a href="/shop?classification={{ $classification->id }}" title="{{ $classification->name }}">
                                                    {{ $classification->name }} <!-- Hiển thị tên phân loại -->
                                                </a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>





                        <div class="col-md-5 col-sm-6 col-xs-12 wow animated fadeInUp">

                            <div id="newsletter_block" class="footer-block toggle-mb">
                                <h4 class="title_block toggle-mb-title" aria-expanded="false">
                                    Kết nối với chúng tôi<i class="fa fa-angle-down hidden-lg hidden-md hidden-sm "></i>
                                </h4>

                                <div class="block_content toggle-mb-content text-left">
                                    <div class="block_content_contact_ft">
                                        <ul>
                                            <li>
                                                <b>Hội An:</b><br /> 191 Lý Thường Kiệt, Phường Minh An, Hội An, <br>
                                                Quảng Nam - <a href="tel:0976979546">097 697 95 46</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="footer-static-content">
                                        <!-- Facebook widget -->

                                        <div class="footer-static-content">
                                            <div class="fb-page" data-href="https://www.facebook.com/MoonmilkVN"
                                                data-height="300" data-small-header="false"
                                                data-adapt-container-width="true" data-hide-cover="false"
                                                data-show-facepile="true" data-show-posts="false"> </div>
                                        </div>
                                        <div style="clear:both;">

                                        </div>

                                        <!-- #Facebook widget -->
                                        <script>
                                            (function (d, s, id) {
                                                var js, fjs = d.getElementsByTagName(s)[0];
                                                if (d.getElementById(id)) return;
                                                js = d.createElement(s);
                                                js.id = id;
                                                js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=263266547210244&version=v2.0";
                                                fjs.parentNode.insertBefore(js, fjs);
                                            }(document, 'script', 'facebook-jssdk'));
                                        </script>

                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="footer-mailchimp hidden-xs">
            <div class="container">
                <div class="footer-mailchimp-wrap col-md-12 col-sm-12 col-xs-12 ">
                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12 wow animated fadeInUp" data-wow-delay="100ms">
                            <div id="newsletter_block" class="footer-block">
                                <div class="des-new-title">
                                    <svg class='ico-letter-home div-user-control control-4'>
                                        <use xlink:href='#icon-letter-home'></use>
                                    </svg>
                                    <h4 class="title_newsletter">
                                        Đăng kí nhận<br> bảng tin shop
                                    </h4>
                                </div>
                                <div class="des_newsletter">
                                    Cập nhật thông tin khuyến mãi nhanh nhất<br> Hưởng quyền lợi giảm giá riêng biệt
                                </div>
                                <div class="block_content">
                                    <form id="mc-embedded-subscribe-form" accept-charset="UTF-8"
                                        action="/account/contact" class="contact-form" method="post">
                                        <input name="form_type" type="hidden" value="customer">
                                        <input name="utf8" type="hidden" value="✓">
                                        <input type="hidden" id="contact_tags" name="contact[tags]"
                                            value="khách hàng tiềm năng,Bản tin">
                                        <input type="hidden" id="newsletter-first-name" name="contact[first_name]"
                                            value="Người đăng ký">
                                        <input type="hidden" id="newsletter-last-name" name="contact[last_name]"
                                            value="">
                                        <div class="newsletter-form">
                                            <input type="email" placeholder="Nhập email của bạn.." name="contact[email]"
                                                id="mail" class="newsletter-input form-control input-lg">
                                            <button class="btn-newsletter" type="submit">
                                                <span>Gửi</span>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="footer-bottom-wrap clearfix">
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow animated fadeInLeft"
                            data-wow-delay="150ms">

                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 text-center wow animated fadeInUp">
                            <!-- Histats.com  (div with counter) -->
                            <div id="histats_counter"></div>
                            <!-- Histats.com  START  (aync)-->
                            <script type="text/javascript">var _Hasync = _Hasync || [];
                                _Hasync.push(['Histats.start', '1,4930615,4,10,200,40,00011111']);
                                _Hasync.push(['Histats.fasi', '1']);
                                _Hasync.push(['Histats.track_hits', '']);
                                (function () {
                                    var hs = document.createElement('script'); hs.type = 'text/javascript'; hs.async = true;
                                    hs.src = ('//s10.histats.com/js15_as.js');
                                    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(hs);
                                })();</script>
                            <noscript><a href="/" target="_blank"><img src="//sstatic1.histats.com/0.gif?4930615&101"
                                        alt="" border="0"></a></noscript>
                            <!-- Histats.com  END  -->

                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 text-right wow animated fadeInRight"
                            data-wow-delay="150ms">
                            <div class="copyright">
                                <p>&copy; Bản quyền thuộc về <a href="#" target="_blank">AN AN MART</a></p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>


    <div id="myCart" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
        aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">
                        Bạn có <b></b> sản phẩm trong giỏ hàng
                    </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <a aria-hidden="true"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </button>
                </div>
                <form action="/cart" method="post" id="cartform">
                    <div class="modal-body">
                        <table style="width:100%;" id="cart-table">
                            <tr>
                                <th></th>
                                <th>Tên sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Giá tiền</th>
                                <th></th>
                            </tr>
                            <tr class="line-item original">
                                <td class="item-image"></td>
                                <td class="item-title">
                                    <a></a>
                                </td>
                                <td class="item-quantity"></td>
                                <td class="item-price"></td>
                                <td class="item-delete text-center"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="modal-note">
                                    <textarea placeholder="Viết ghi chú" id="note" name="note" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="total-price-modal">
                                    Tổng cộng : <span class="item-total"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top:10px;">
                            <div class="col-lg-6">
                                <div class="comeback">
                                    <a href="/collections/all">
                                        <img
                                            src="/assets/hstatic.net/0/0/global/design/theme-default/icon-tieptuc.png" />Tiếp
                                        tục mua hàng
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-6 text-right">
                                <div class="buttons btn-modal-cart">
                                    <button type="submit" class="button-default" id="checkout" name="checkout">
                                        Đặt hàng
                                    </button>
                                </div>

                                <div class="buttons btn-modal-cart">
                                    <button type="submit" class="button-default" id="update-cart-modal" name="">
                                        Cập nhật
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="wrapper-quickview">
        <div class="">
            <div class="quickview-image">
                <img src="" alt="">
            </div>
            <div id="quickview-sliderproduct">
                <div class="quickview-slider owl-carousel">

                </div>
            </div>
        </div>
        <div class="">
            <form id="form-quickview" method="post" action="/cart/add">
                <div class="quickview-information">
                    <div class="quickview-close">
                        <a href="javascript:void(0);"><i class="fa fa-times"></i></a>
                    </div>
                    <a href="#" class="quickview-title" title="">
                        <h2></h2>
                    </a>
                    <div class="quickview-price">
                        <span></span><del></del>
                    </div>
                    <div class="quickview-variants variant-style clearfix">

                        <div class="selector-wrapper opt1-quickview">
                            <label></label>
                            <ul class="data-opt1-quickview clearfix style-variant-template">

                            </ul>
                        </div>
                        <div class="selector-wrapper opt2-quickview">
                            <label></label>
                            <ul class="data-opt2-quickview clearfix style-variant-template">

                            </ul>
                        </div>
                        <div class="selector-wrapper opt3-quickview">
                            <label></label>
                            <ul class="data-opt3-quickview clearfix style-variant-template">

                            </ul>
                        </div>
                        <style>
                            .selector-wrapper:not(.opt1):not(.opt1-quickview):not(.opt2):not(.opt2-quickview):not(.opt3):not(.opt3-quickview) {
                                display: none;
                            }
                        </style>

                        <select name="id" class="" id="quickview-select"></select>
                        <div class="clearfix">
                            <button class="btn-style-add">Thêm vào giỏ</button>
                        </div>
                    </div>
                    <div class="quickview-description"></div>
                </div>
            </form>
        </div>
    </div>

    <script>
        /* QUICK VIEW JS */
        jQuery(document).ready(function () {
            var callBack = function (variant, selector) {
                if (variant) {
                    item = $('.wrapper-quickview');
                    if (variant != null && variant.featured_image != null) {
                        item.find(".slide-quickview a[data-image='" + Haravan.resizeImage(variant.featured_image.src, 'large') + "']").click();
                    }
                    item.find('.quickview-price').find('span').html(Haravan.formatMoney(variant.price, "₫"));
                    if (variant.compare_at_price > 0)
                        item.find('.quickview-price').find('del').html(Haravan.formatMoney(variant.compare_at_price, "₫"));
                    else
                        item.find('.quickview-price').find('del').html('');
                    if (variant.available) {
                        item.find('.btn-addcart').css('display', 'block');
                        item.find('.btn-soldout').css('display', 'none');
                    } else {
                        item.find('.btn-addcart').css('display', 'none');
                        item.find('.btn-soldout').css('display', 'block');
                    }
                } else {
                    item.find('.btn-addcart').css('display', 'none');
                    item.find('.btn-soldout').css('display', 'block');
                }
            }
            var quickview_html_variants = $('.quickview-variants').html();
            var quickview_image_zoom = $('.quickview-image').html();
            var quickViewProduct = function (purl) {
                if ($(window).width() < 680) {
                    window.location = purl;
                    return false;
                }
                item = $('.wrapper-quickview');
                $.ajax({
                    url: purl + '.js',
                    async: false,
                    success: function (product) {
                        $.each(product.options, function (i, v) {
                            product.options[i] = v.name;
                        })
                        item.find('.quickview-title').attr('title', product.title).attr('href', product.url).find('h2').html(product.title);
                        item.find('.quickview-variants').html(quickview_html_variants);
                        $('.quickview-image').html(quickview_image_zoom);
                        $.each(product.variants, function (i, v) {
                            item.find('#quickview-select').append("<option value='" + v.id + "'>" + v.title + ' - ' + v.price + "</option>");
                        })
                        if (product.variants.length == 1 && product.variants[0].title.indexOf('Default') != -1)
                            $('#quickview-select').hide();
                        else
                            $('#quickview-select').show();
                        if (product.variants.length == 1 && product.variants[0].title.indexOf('Default') != -1) {
                            callBack(product.variants[0], null);
                        } else {
                            new Haravan.OptionSelectors("quickview-select", {
                                product: product,
                                onVariantSelected: callBack
                            });
                            if (product.options.length == 1 && product.options[0].indexOf('Ti�u d?') == -1)
                                item.find('.selector-wrapper:eq(0):not(.opt1-quickview):not(.opt2-quickview):not(.opt3-quickview)').prepend('<label>' + product.options[0] + '</label>');
                            $('.quickview-variants select:not(#quickview-select)').each(function () {
                                $(this).wrap('<span class="custom-dropdown"></span>');
                                $(this).addClass("custom-dropdown-select");
                            });
                            callBack(product.variants[0], null);
                        }
                        if (product.images.length == 0) {
                            item.find('.quickview-image').find('img').attr('alt', product.title).attr('src', '/assets/hstatic.net/0/0/global/noDefaultImage6_large.gif');
                        } else {
                            $('.quickview-slider').remove();
                            $('#quickview-sliderproduct').append("<div class='quickview-slider owl-carousel slide-quickview'>");
                            $.each(product.images, function (i, v) {
                                elem = $('<div class="item">').append('<a href="javascript:void(0);" data-image=""><img /></a>');
                                elem.find('a').attr('data-image', Haravan.resizeImage(v, 'large'));
                                elem.find('img').attr('src', Haravan.resizeImage(v, 'small'));
                                item.find('.quickview-slider').append(elem);
                            });
                            item.find('.quickview-image img').attr('alt', product.title).attr('src', Haravan.resizeImage(product.featured_image, 'large'));

                            $('.quickview-slider img').imagesLoaded(function () {
                                setTimeout(function () {
                                    $('.quickview-slider').owlCarousel({
                                        items: 4,
                                        nav: true,
                                        dots: false,
                                        margin: 5
                                    });
                                    $('.quickview-slider.owl-carousel').find('.owl-next').html("<svg class='svg-next-icon svg-next-icon-size-16' style='fill:#666'><use xlink:href='#icon-right-owlCarousel'></use></svg>");
                                    $('.quickview-slider.owl-carousel').find('.owl-prev').html("<svg class='svg-next-icon svg-next-icon-size-16' style='fill:#666'><use xlink:href='#icon-left-owlCarousel'></use></svg>");
                                }, 1500);
                            });
                        }
                        // X? l� variant
                        if ($('#form-quickview select[data-option=option1] option').length > 0) {
                            $('#form-quickview .opt1-quickview').children('label').html(product.options[0]);
                            var checked = $('#form-quickview select[data-option=option1]').val();
                            $('#form-quickview select[data-option=option1] option').each(function () {
                                var arr_opt = '';
                                var opt_select_1 = $(this).val();
                                $.each(product.variants, function (i, v) {
                                    var opt1 = v.option1;
                                    if (opt_select_1 == opt1 && v.available) {
                                        arr_opt = arr_opt + ' ' + slug(v.option1);
                                    }
                                });
                                if (arr_opt == '') {
                                    arr_opt = 'hidden';
                                }
                                if ($(this).val() == checked) {
                                    $('.data-opt1-quickview').append("<li class='" + arr_opt + "'><label><input checked='checked' type='radio' value='" + $(this).val() + "' name='option1'><span>" + $(this).val() + "</span></label></li>");
                                } else {
                                    $('.data-opt1-quickview').append("<li class='" + arr_opt + "'><label><input type='radio' value='" + $(this).val() + "' name='option1'><span>" + $(this).val() + "</span></label></li>");
                                }
                            });
                        } else {
                            $('#form-quickview .opt1-quickview').remove();
                        }
                        if ($('#form-quickview select[data-option=option2] option').length > 0) {
                            $('#form-quickview .opt2-quickview').children('label').html(product.options[1]);
                            var checked = $('#form-quickview select[data-option=option2]').val();
                            $('#form-quickview select[data-option=option2] option').each(function () {
                                var arr_opt = '';
                                var opt_select_2 = $(this).val();
                                $.each(product.variants, function (i, v) {
                                    var opt2 = v.option2;
                                    if (opt_select_2 == opt2 && v.available) {
                                        arr_opt = arr_opt + ' ' + slug(v.option1);
                                    }
                                });
                                if ($(this).val() == checked) {
                                    $('.data-opt2-quickview').append("<li class='" + arr_opt + "'><label><input checked='checked' type='radio' value='" + $(this).val() + "' name='option2'><span>" + $(this).val() + "</span></label></li>");
                                } else {
                                    $('.data-opt2-quickview').append("<li class='" + arr_opt + "'><label><input type='radio' value='" + $(this).val() + "' name='option2'><span>" + $(this).val() + "</span></label></li>");
                                }
                            });
                        } else {
                            $('#form-quickview .opt2-quickview').remove();
                        }
                        if ($('#form-quickview select[data-option=option3] option').length > 0) {
                            $('#form-quickview .opt3-quickview').children('label').html(product.options[2]);
                            var checked = $('#form-quickview select[data-option=option3]').val();
                            $('#form-quickview select[data-option=option3] option').each(function () {
                                var arr_opt = '';
                                var opt_select_3 = $(this).val();
                                $.each(product.variants, function (i, v) {
                                    var opt3 = v.option3;
                                    if (opt_select_3 == opt3 && v.available) {
                                        arr_opt = arr_opt + ' ' + slug(v.option1 + '-' + v.option2);
                                    }
                                });
                                if ($(this).val() == checked) {
                                    $('.data-opt3-quickview').append("<li class='" + arr_opt + "'><label><input checked='checked' type='radio' value='" + $(this).val() + "' name='option3'><span>" + $(this).val() + "</span></label></li>");
                                } else {
                                    $('.data-opt3-quickview').append("<li class='" + arr_opt + "'><label><input type='radio' value='" + $(this).val() + "' name='option3'><span>" + $(this).val() + "</span></label></li>");
                                }
                            });
                        } else {
                            $('#form-quickview .opt3-quickview').remove();
                        }
                    }
                });
                return false;
            }
            //final width --> this is the quick view image slider width
            //maxQuickWidth --> this is the max-width of the quick-view panel
            var sliderFinalWidth = 500,
                maxQuickWidth = 900;

            //open the quick view panel
            jQuery(document).on("click", ".quickview", function (event) {
                var selectedImage = $(this).parents('.product-wrapper').find('.product-image img'),
                    slectedImageUrl = selectedImage.attr('src');
                quickViewProduct($(this).attr('data-handle'));
                $('body').addClass('overlay-layer');

                animateQuickView(selectedImage, sliderFinalWidth, maxQuickWidth, 'open');

                //update the visible slider image in the quick view panel
                //you don't need to implement/use the updateQuickView if retrieving the quick view data with ajax
                updateQuickView(slectedImageUrl);
                setTimeout(function () {
                    $('.quickview-slider').addClass('is-visible-slide');
                }, 1700);
                setTimeout(function () {
                    jQuery('#form-quickview ul.data-opt1-quickview li:visible label').first().click();
                }, 1800);
            });

            jQuery(document).on('click', '#form-quickview ul.data-opt1-quickview li', function () {
                var v_opt1 = jQuery(this).find('span').html();
                jQuery('#form-quickview select[data-option=option1]').val(v_opt1).change();
                if (jQuery('#form-quickview ul.data-opt2-quickview li:visible').length > 0) {
                    jQuery('#form-quickview ul.data-opt2-quickview li').hide();
                    jQuery('#form-quickview ul.data-opt2-quickview li.' + slug(v_opt1)).show();
                    jQuery('#form-quickview ul.data-opt2-quickview li:visible label')[0].click();
                }
            });
            jQuery(document).on('click', '#form-quickview ul.data-opt2-quickview li', function () {
                var v_opt1 = slug(jQuery('#form-quickview select[data-option=option1]').val());
                var v_opt2 = jQuery(this).find('span').html();
                var both_v_opt = v_opt1 + '-' + slug(v_opt2);
                jQuery('#form-quickview select[data-option=option2]').val(v_opt2).change();
                if (jQuery('#form-quickview ul.data-opt3-quickview li:visible').length > 0) {
                    jQuery('#form-quickview ul.data-opt3-quickview li').hide();
                    jQuery('#form-quickview ul.data-opt3-quickview li.' + both_v_opt).show();
                    jQuery('#form-quickview ul.data-opt3-quickview li:visible label')[0].click();
                }
            });
            jQuery(document).on('click', '#form-quickview ul.data-opt3-quickview li', function () {
                var v_opt3 = $(this).find('span').html();
                jQuery('#form-quickview select[data-option=option3]').val(v_opt3).change();
            });

            $('.wrapper-quickview').on('click', '.product-thumb a', function () {
                item = $('.wrapper-quickview');
                item.find('.quickview-image img').attr('src', $(this).attr('data-image'));
                item.find('.product-thumb a').removeClass('active');
                $(this).addClass('active');
                return false;
            });
            //close the quick view panel
            $('body').on('click', function (event) {
                if ($(event.target).is('.quickview-close') || $(event.target).is('body.overlay-layer')) {
                    $('#quickview-sliderproduct .quickview-slider').hide();
                    closeQuickView(sliderFinalWidth, maxQuickWidth);
                }
            });
            $(document).on("click", ".quickview-close a", function () {
                $('#quickview-sliderproduct .quickview-slider').hide();
                closeQuickView(sliderFinalWidth, maxQuickWidth);
            });
            $(document).keyup(function (event) {
                //check if user has pressed 'Esc'
                if (event.which == '27') {
                    $('#quickview-sliderproduct .quickview-slider').hide();
                    closeQuickView(sliderFinalWidth, maxQuickWidth);
                }
            });

            //center quick-view on window resize
            $(window).on('resize', function () {
                if ($('.wrapper-quickview').hasClass('is-visible')) {
                    window.requestAnimationFrame(resizeQuickView);
                }
            });

            function updateQuickView(url) {
                $('.wrapper-quickview .quickview-image').find('img').attr('src', Haravan.resizeImage(destroyResize(url), 'large'));
            }

            function resizeQuickView() {
                var quickViewLeft = ($(window).width() - $('.wrapper-quickview').width()) / 2,
                    quickViewTop = ($(window).height() - $('.wrapper-quickview').height()) / 2;
                $('.wrapper-quickview').css({
                    "top": quickViewTop,
                    "left": quickViewLeft,
                });
            }

            function closeQuickView(finalWidth, maxQuickWidth) {
                var close = $('.quickview-close'),
                    activeSliderUrl = close.parents('.wrapper-quickview').find('.quickview-image img').attr('src'),
                    selectedImage = $('.product-wrapper').find('.image-selected').find('img');
                //update the image in the gallery
                if (!$('.wrapper-quickview').hasClass('velocity-animating') && $('.wrapper-quickview').hasClass('is-visible-info')) {
                    selectedImage.attr('src');
                    animateQuickView(selectedImage, finalWidth, maxQuickWidth, 'close');
                } else {
                    closeNoAnimation(selectedImage, finalWidth, maxQuickWidth);
                }
            }

            function animateQuickView(image, finalWidth, maxQuickWidth, animationType) {
                //store some image data (width, top position, ...)
                //store window data to calculate quick view panel position
                var parentListItem = image.parents('.product-image'),
                    topSelected = image.offset().top - $(window).scrollTop(),
                    leftSelected = image.offset().left,
                    widthSelected = image.width(),
                    heightSelected = image.height(),
                    windowWidth = $(window).width(),
                    windowHeight = $(window).height(),
                    finalLeft = (windowWidth - finalWidth) / 2,
                    finalHeight = finalWidth * heightSelected / widthSelected,
                    finalTop = (windowHeight - finalHeight) / 2,
                    quickViewWidth = (windowWidth * .8 < maxQuickWidth) ? windowWidth * .8 : maxQuickWidth,
                    quickViewLeft = (windowWidth - quickViewWidth) / 2;
                if (animationType == 'open') {
                    //hide the image in the gallery
                    parentListItem.addClass('image-selected');
                    //place the quick view over the image gallery and give it the dimension of the gallery image
                    $('.wrapper-quickview > div').eq(0).addClass('col-md-5');
                    $('.wrapper-quickview > div').eq(1).addClass('col-md-7');
                    $('.wrapper-quickview').css({
                        "top": topSelected,
                        "left": leftSelected,
                        "width": widthSelected,
                    }).velocity({
                        //animate the quick view: animate its width and center it in the viewport
                        //during this animation, only the slider image is visible
                        'top': finalTop + 'px',
                        'left': finalLeft + 'px',
                        'width': finalWidth + 'px',
                    }, 1000, [400, 20], function () {
                        //animate the quick view: animate its width to the final value
                        $('.wrapper-quickview').addClass('animate-width').velocity({
                            'left': quickViewLeft + 'px',
                            'width': quickViewWidth + 'px',
                        }, 300, 'ease', function () {
                            //show quick view content
                            $('.wrapper-quickview').addClass('is-visible-info');
                        });
                    }).addClass('is-visible');
                } else {
                    $('.wrapper-quickview > div').eq(0).removeClass('col-md-5').addClass('col-md-12');
                    $('.wrapper-quickview > div').eq(1).removeClass('col-md-7');
                    //close the quick view reverting the animation
                    parentListItem.removeClass('image-selected');
                    $('.wrapper-quickview').removeClass('is-visible-info').velocity({
                        'top': finalTop + 'px',
                        'left': finalLeft + 'px',
                        'width': finalWidth + 'px',
                    }, 300, 'ease', function () {
                        $('body').removeClass('overlay-layer');
                        $('.wrapper-quickview').removeClass('animate-width').velocity({
                            "top": topSelected,
                            "left": leftSelected,
                            "width": widthSelected,
                        }, 500, 'ease', function () {
                            $('.wrapper-quickview').removeClass('is-visible');
                        });
                    });
                }
            }

            function closeNoAnimation(image, finalWidth, maxQuickWidth) {
                var parentListItem = image.parent('.product-image'),
                    topSelected = image.offset().top - $(window).scrollTop(),
                    leftSelected = image.offset().left,
                    widthSelected = image.width();
                //close the quick view reverting the animation
                $('body').removeClass('overlay-layer');
                parentListItem.removeClass('image-selected');
                $('.wrapper-quickview').velocity("stop").removeClass('is-visible-info animate-width is-visible').css({
                    "top": topSelected,
                    "left": leftSelected,
                    "width": widthSelected,
                });
            }
        });
    </script>
    <div class="back-to-top">
        <a href="javascript:void(0);">
            <svg class="ico-back-top div-user-control control-4">
                <use xlink:href="#ico-scrollUp-bottom"></use>
            </svg>
        </a>
    </div>
    {{-- <style>
        @media (max-width: 767px) {
    .toggle-mb-content {
        display: initial;
    }
}
    </style> --}}
</div>
