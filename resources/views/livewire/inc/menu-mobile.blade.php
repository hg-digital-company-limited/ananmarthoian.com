<nav id="menu-mobile" class="hidden">
    <ul>
        <li  class="has-children">
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
        </li>
        @foreach($classifications as $classification)
            <li class="has-children">
                <a href="javascript:void(0)" class="site-nav-link">
                    <span>{{ $classification->name }}</span>
                </a>
                <ul class="child">
                    @foreach($classification->categories as $category)
                        <li>
                            <a tabindex="-1" href="/shop?cat={{ $category->id }}">
                                {{ $category->name }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </li>
        @endforeach
    </ul>
</nav>
