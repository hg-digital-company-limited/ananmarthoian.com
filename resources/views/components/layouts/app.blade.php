<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
    <link rel="shortcut icon" href="/favicon.ico" />
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
    <meta name="apple-mobile-web-app-title" content="AN AN" />
    <link rel="manifest" href="/site.webmanifest" />
    <meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large" />
    <meta name="description" content="Our family-shop has proudly been serving customers for 9 years. We are deeply grateful to our local customers, expats, and visiting tourists who have supported us. Your trust and loyalty mean the world to us!At An An alcohol shop, we take pride in offering a carefully curated selection of the finest imported wines and spirits from around the world.Our mission is to bring you high-quality, authentic products at competitive prices, ensuring that every sip is a memorable experience." />
    <meta name="twitter:description"
    content="Our family-shop has proudly been serving customers for 9 years. We are deeply grateful to our local customers, expats, and visiting tourists who have supported us. Your trust and loyalty mean the world to us!At An An alcohol shop, we take pride in offering a carefully curated selection of the finest imported wines and spirits from around the world.Our mission is to bring you high-quality, authentic products at competitive prices, ensuring that every sip is a memorable experience." />
        <link rel="canonical" href="{{ url()->current() }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta property="og:site_name" content="An An Mart Hội An" />
    <meta property="og:image" content="{{ asset('/banner.jpg') }}" />
    <meta property="og:image:secure_url" content="{{ asset('/banner.jpg') }}" />
    <meta property="og:image:width" content="512" />
    <meta property="og:image:height" content="512" />
    <meta property="og:image:type" content="image/png" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:description"
    content="Our family-shop has proudly been serving customers for 9 years. We are deeply grateful to our local customers, expats, and visiting tourists who have supported us. Your trust and loyalty mean the world to us!At An An alcohol shop, we take pride in offering a carefully curated selection of the finest imported wines and spirits from around the world.Our mission is to bring you high-quality, authentic products at competitive prices, ensuring that every sip is a memorable experience." />
    <meta name="google-site-verification" content="-vcm_RPnRBeEhqwvnW0R_3z20_UoGfA7bFZ3bfXf4bQ" />
</head>
@livewireStyles

<body>
    {{ $slot }}
</body>



@livewireScripts
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<x-livewire-alert::scripts />
<style>
    .swal2-container.swal2-top-end.swal2-backdrop-show {
    margin-top: 44px;
}
</style>
</html>
