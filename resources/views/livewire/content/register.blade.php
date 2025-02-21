<section class="layout-account">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div id="register" class="userbox">
                    <h1>Đăng ký</h1>
                    <form wire:submit.prevent="register">

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-userico"></i></label>
                            <input required type="text" wire:model="name" placeholder="Tên người dùng" class="form-control" size="30" />
                        </div>

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-userico"></i></label>
                            <input required type="text" wire:model="full_name" placeholder="Họ và tên" class="form-control" size="30" />
                        </div>

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-login icon-envelope"></i></label>
                            <input required type="email" wire:model="email" placeholder="Email" class="form-control" size="30" />
                        </div>

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-login icon-shield"></i></label>
                            <input required type="password" wire:model="password" placeholder="Mật khẩu" class="form-control" size="30" />
                        </div>

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-address"></i></label>
                            <input required type="text" wire:model="address" placeholder="Địa chỉ" class="form-control" size="30" />
                        </div>

                        <div class="input-group input-account mb15">
                            <label class="input-group-addon"><i class="icon-phone"></i></label>
                            <input required type="text" wire:model="phone" placeholder="Số điện thoại" class="form-control" size="30" />
                        </div>

                        <div class="action_bottom mb15">
                            <input class="btn" type="submit" value="Đăng ký" />
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
