<section class="layout-account">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div id="register" class="userbox">
                    <h1>Đặt lại mật khẩu</h1>




                    <form wire:submit.prevent="resetPassword">
                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-login icon-shield"></i></label>
                            <input required type="password" wire:model="password" placeholder="Mật khẩu mới"
                                class="form-control" size="30" />
                        </div>

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-login icon-shield"></i></label>
                            <input required type="password" wire:model="password_confirmation"
                                placeholder="Xác nhận mật khẩu" class="form-control" size="30" />
                        </div>

                        <div class="action_bottom mb15">
                            <input class="btn btn-signin" type="submit" value="Đặt lại mật khẩu" />
                        </div>

                        <div class="req_pass">
                            <a class="come-back" href="/login">Quay về</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
