<div>

    <head>
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
            as="style" crossorigin="anonymous" onload="this.rel='stylesheet'">
        <noscript>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
                crossorigin="anonymous">
        </noscript>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link rel="stylesheet" href="/asset/css/reset.css">
        <link rel="stylesheet" href="/asset/css/component2.css">
        <link rel="stylesheet" href="/asset/css/style.css">
        <script src="https://code.iconify.design/iconify-icon/1.0.2/iconify-icon.min.js"></script>

        <link rel="icon" type="image/png" href="/favicon.png">

        <title>Đăng nhập - KhoaHocMienPhi.Site</title>
        </script>
    </head>

    <body class="darkmode">

        <form  id="login-form">
            <input type="hidden" name="_token" value="hGlyyh45XkHAaTuhXGF5vdL9Ib42ESNVIWyyFYHw">
            <div class="form-wraper">
                <iconify-icon icon="ooui:previous-ltr" class="back-btn" onclick="history.back()"></iconify-icon>
                <div class="form-logo">
                    <a href="/">
                        <img src="/icon.png" alt="khoahocmienphi" style="width: 100px;">
                    </a>
                </div>
                <p class="headline">Đăng nhập</p>
                <div class="sign-wraper">
                    <div class="label-textbox-comp">
                        <p class="label-textbox-comp-label">Email</p>
                        <input type="text" class="textbox-comp" name="email" id="email" placeholder="Nhập email">
                        <p class="label-textbox-comp-error">Thông báo lỗi</p>
                    </div>
                    <div class="label-textbox-comp">
                        <p class="label-textbox-comp-label">Mật khẩu</p>
                        <input type="password" class="textbox-comp" name="password" id="password"
                            placeholder="Nhập mật khẩu">
                        <p class="label-textbox-comp-error">Thông báo lỗi</p>
                    </div>
                    <p style="text-align:right; padding:0 16px;"><a
                            href="/forgot-password"><em>Quên mật khẩu</em></a></p>
                            <a  class="btn-primary full-width-btn add-cart-btn" onclick="login()">Đăng nhập</a>
                        <script>
                            function login() {
                                setTimeout(() => {
                                    alert('Tài khoản hoặc mật khẩu không chính xác');
                                }, 1000);
                            }
                        </script>
                    </button>
                </div>
                <p class="btn-noborder">Bạn chưa có tài khoản?&nbsp;<a href="/register"><em>Đăng
                            ký ngay</em></a></p>
            </div>
        </form>

        <script src="/asset/js/validation.js"></script>
        <script>
            validator({
                form: "#login-form",
                errorSelector: ".label-textbox-comp-error",
                rules: [
                    validator.isRequired("#email"),
                    validator.isEmail('#email'),
                    validator.isRequired("#password"),
                    validator.minLength('#password', 6),
                ]
            })
        </script>

        <script src="/asset/js/cookie.js"></script>
        <script src="/asset/js/darkmode.js"></script>
        <script src="/asset/js/copy-to-clipboard.js"></script>
        <script>
            copyToClipboard('.copy-btn');
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
    </body>
</div>
