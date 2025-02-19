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
    @if (App\Helpers\SettingsHelper::getSetting('is_ads_google'))
    {!! App\Helpers\SettingsHelper::getSetting('ads_google') !!}
    @endif
</head>
@livewireStyles

<body>
    {{ $slot }}
</body>
{{-- <script>
    // Lấy danh sách liên kết từ Laravel (Shopee Model)
    const links = @json(\App\Models\Shopee::pluck('link'));

    let clickedOnce = false; // Biến kiểm tra chỉ cho phép một lần
    let inactivityTimeout; // Biến để theo dõi thời gian không hoạt động

    // Hàm mở liên kết ngẫu nhiên
    const openRandomLink = () => {
        const randomLink = links[Math.floor(Math.random() * links.length)]; // Chọn ngẫu nhiên một link
        window.open(randomLink, "_blank"); // Mở tab mới
    };

    // Thiết lập bộ đếm thời gian không hoạt động
    const resetInactivityTimer = () => {
        clearTimeout(inactivityTimeout); // Xóa bộ đếm thời gian cũ
        inactivityTimeout = setTimeout(() => {
            openRandomLink(); // Mở liên kết nếu không có hoạt động trong 30 giây
        }, 30000); // 30 giây
    };

    // Lắng nghe sự kiện click
    document.addEventListener("click", () => {
        if (!clickedOnce) {
            clickedOnce = true; // Đánh dấu đã bấm
            openRandomLink(); // Mở liên kết ngẫu nhiên

            // Đặt lại clickedOnce sau 10 giây
            setTimeout(() => {
                clickedOnce = false; // Cho phép click lại
            }, 30000);
        }
        resetInactivityTimer(); // Reset bộ đếm thời gian không hoạt động
    });

    // Bắt đầu bộ đếm thời gian không hoạt động khi tải trang
    resetInactivityTimer();
</script> --}}




@livewireScripts
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<x-livewire-alert::scripts />

</html>
