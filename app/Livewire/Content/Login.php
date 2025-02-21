<?php

namespace App\Livewire\Content;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class Login extends Component
{
    use LivewireAlert; // Include the LivewireAlert trait

    public $email; // Thuộc tính để lưu email
    public $password; // Thuộc tính để lưu mật khẩu

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
            // Đăng nhập thất bại, hiển thị thông báo lỗi
            $this->alert('error', 'Đăng nhập không thành công. Vui lòng kiểm tra lại thông tin.');
        }
    }

    public function sendResetLink()
    {
        $this->resetErrorBag();

        // Validate email
        $this->validate([
            'email' => 'required|email|exists:users,email',
        ]);

        // Send the password reset link
        $status = Password::sendResetLink(['email' => $this->email]);

        if ($status == Password::RESET_LINK_SENT) {
            $this->alert('success', 'Đã gửi liên kết đặt lại mật khẩu vào email của bạn.');
        } else {
            $this->alert('error', 'Có lỗi xảy ra. Vui lòng thử lại.');
        }

        // Reset the email field
        $this->email = '';
    }

    public function render()
    {
        return view('livewire.content.login');
    }
}
