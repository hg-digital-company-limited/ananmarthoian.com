<nav id="menu-mobile" class="hidden">
    <ul>
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
