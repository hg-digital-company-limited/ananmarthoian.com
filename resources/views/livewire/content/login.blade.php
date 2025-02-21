<section class="layout-account">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div id="login" class="userbox">
                    <h1>Đăng nhập</h1>



                    <form wire:submit.prevent="login" accept-charset='UTF-8' id='customer_login'>
                        <div class="input-group input-account mb15">
                            <label class="input-group-addon">
                                <i class="icon-envelope"></i>
                            </label>
                            <input required type="email" wire:model="email" placeholder="Email" class="form-control" />
                        </div>

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon">
                                <i class="icon-shield"></i>
                            </label>
                            <input required type="password" wire:model="password" placeholder="Mật khẩu" class="form-control" size="16" />
                        </div>

                        <div class="action_bottom mb15">
                            <input class="btn btn-signin" type="submit" value="Đăng nhập" />
                        </div>
                        <div class="req_pass">
                            <a href="#" onclick="showRecoverPasswordForm();return false;">Quên mật khẩu?</a> hoặc <a href="/register" title="Đăng ký">Đăng ký</a>
                        </div>
                    </form>
                </div>

                <div id="recover-password" style="display:none;" class="userbox">
                    <h1>Quên mật khẩu</h1>



                    <form wire:submit.prevent="sendResetLink">
                        <div class="input-group input-account mb15">
                            <label class="input-group-addon">
                                <i class="icon-envelope"></i>
                            </label>
                            <input type="email" wire:model="email" placeholder="Email" class="form-control" size="30" required />
                        </div>

                        <div class="action_bottom mb15">
                            <input class="btn" type="submit" value="Gửi liên kết đặt lại mật khẩu" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
