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

        <title>Đăng ký tài khoản - KhoaHocMienPhi.Site</title>

        </script>
    </head>

    <body class="darkmode">

        <div class="form-wraper">
            <iconify-icon icon="ooui:previous-ltr" class="back-btn" onclick="history.back()"></iconify-icon>
            <div class="form-logo">
                <a href="/">
                    <img src="/icon.png" alt="khoahocmienphi" style="width: 100px;">
                </a>
            </div>
            <p class="headline">Đăng ký tài khoản </p>
            <div class="sign-wraper">
                <form   id="register-form">
                    <input type="hidden" name="_token" value="hGlyyh45XkHAaTuhXGF5vdL9Ib42ESNVIWyyFYHw">
                    <div class="label-textbox-comp">
                        <p class="label-textbox-comp-label">Họ tên</p>
                        <input type="text" class="textbox-comp" name="name" id="name" placeholder="Nhập tên của bạn" required>
                        <p class="label-textbox-comp-error">Thông báo lỗi</p>
                    </div>
                    <div class="label-textbox-comp">
                        <p class="label-textbox-comp-label">Email</p>
                        <input type="text" class="textbox-comp" name="email" id="email" placeholder="Nhập email" required>
                        <p class="label-textbox-comp-error">Thông báo lỗi</p>
                    </div>
                    <div class="label-textbox-comp">
                        <p class="label-textbox-comp-label">Mật khẩu</p>
                        <input type="password" class="textbox-comp" name="password" id="password"
                            placeholder="Nhập mật khẩu" required>
                        <p class="label-textbox-comp-error">Thông báo lỗi</p>
                    </div>
                    <div class="label-textbox-comp">
                        <p class="label-textbox-comp-label">Nhập lại mật khẩu</p>
                        <input type="password" class="textbox-comp" name="password_confirm" id="password_confirm"
                            placeholder="Nhập lại mật khẩu" required>
                        <p class="label-textbox-comp-error">Thông báo lỗi</p>
                    </div>

                    <a  class="btn-primary full-width-btn add-cart-btn" onclick="register()">Đăng ký</a>
                    <script>
                        function register() {
                            if (document.getElementById('name').value == '' || document.getElementById('email').value == '' || document.getElementById('password').value == '' || document.getElementById('password_confirm').value == '') {
                                alert('Vui lòng nhập đầy đủ thông tin');
                            } else {
                                setTimeout(() => {
                                    alert('Đăng ký tài khoản thành công');
                                }, 1000);
                            }
                        }
                    </script>
                </form>
            </div>
            <p class="btn-noborder">Bạn đã có tài khoản?&nbsp;<a href="/login"><em>Đăng nhập</em></a></p>
        </div>

        <script src="/asset/js/validation.js"></script>
        <script>
            validator({
                form: "#register-form",
                errorSelector: ".label-textbox-comp-error",
                rules: [
                    validator.isRequired('#name'),
                    validator.isRequired("#email"),
                    validator.isEmail('#email'),
                    validator.isRequired("#password"),
                    validator.minLength('#password', 6),
                    validator.isRequired("#password_confirm"),
                    validator.minLength('#password_confirm', 6),
                    validator.isConfirmed("#password_confirm", "#password")
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
