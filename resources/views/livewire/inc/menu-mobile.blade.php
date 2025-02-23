<nav id="menu-mobile" class="hidden">
    <ul>
        <li onclick="window.location.href='/'">
            <a href="/" class="site-nav-link">
                <span>Home</span>
            </a>
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
        <li onclick="window.location.href='/blogs'">
            <a href="/blogs" class="site-nav-link">
                <span>News</span>
            </a>
        </li>
    </ul>
</nav>
