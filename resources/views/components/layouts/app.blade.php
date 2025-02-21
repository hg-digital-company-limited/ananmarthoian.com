<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/icon.png">
    <meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large" />

    <meta name="description"
        content="Hàng ngàn khóa học share miễn phí. Khóa học nào bạn cần,  Khóa Học Miễn Phi đều chia sẻ. Trải nghiệm học tập online thú vị. Nhận khóa học nhanh, uy tín, chất lượng." />
    <link rel="canonical" href="{{ url()->current() }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta property="og:site_name" content="KhoaHocMienPhi.Site" />
    <meta property="og:image" content="{{ asset('/banner.png') }}" />
    <meta property="og:image:secure_url" content="{{ asset('/banner.png') }}" />
    <meta property="og:image:width" content="512" />
    <meta property="og:image:width" content="512" />
    <meta property="og:image:height" content="512" />
    <meta property="og:image:type" content="image/png" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:description"
        content="Hàng ngàn khóa học share miễn phí. Khóa học nào bạn cần, Khóa Học Miễn Phi đều chia sẻ. Trải nghiệm học tập online thú vị. Nhận khóa học nhanh, uy tín, chất lượng." />
    <meta name="google-site-verification" content="hQbtvAv7RIf2mqMUt47LDbSFfMxiAALhXoZt4o9sxWA" />

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
