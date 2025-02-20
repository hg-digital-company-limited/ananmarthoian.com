<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class Account extends Component
{
    public $user; // Thuộc tính để lưu thông tin người dùng

    public function mount()
    {
        $this->user = Auth::user(); // Lấy thông tin người dùng đã đăng nhập
    }

    public function logout()
    {
        Auth::logout(); // Đăng xuất người dùng
        return redirect()->route('home'); // Chuyển hướng đến trang chính sau khi đăng xuất
    }

    public function render()
    {
        return view('livewire.account');
    }
}
