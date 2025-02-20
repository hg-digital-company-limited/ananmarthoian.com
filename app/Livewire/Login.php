<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class Login extends Component
{
    public $email; // Thuộc tính để lưu email
    public $password; // Thuộc tính để lưu mật khẩu
    public $errorMessage; // Thuộc tính để lưu thông báo lỗi

    public function login()
    {
        $credentials = [
            'email' => $this->email,
            'password' => $this->password,
        ];

        if (Auth::attempt($credentials)) {
            // Đăng nhập thành công, chuyển hướng đến trang mong muốn
            return redirect()->route('home'); // Thay đổi route nếu cần
        } else {
            // Đăng nhập thất bại, lưu thông báo lỗi
            $this->errorMessage = 'Đăng nhập không thành công. Vui lòng kiểm tra lại thông tin.';
        }
    }

    public function render()
    {
        return view('livewire.login', [
            'errorMessage' => $this->errorMessage, // Truyền thông báo lỗi vào view
        ]);
    }
}
