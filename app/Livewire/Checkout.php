<?php

namespace App\Livewire;

use Livewire\Component;
use App\Helpers\CartManagement; // Nhập lớp CartManagement
use Illuminate\Support\Facades\Auth; // Thêm để kiểm tra trạng thái đăng nhập
use Illuminate\Support\Facades\Redirect; // Thêm để chuyển hướng
class Checkout extends Component
{
    public $cartItems = []; // Thuộc tính để lưu giỏ hàng
    public $user; // Thuộc tính để lưu thông tin người dùng

    public function mount()
    {
        $this->cartItems = CartManagement::getCartItemsFromCookie(); // Lấy giỏ hàng từ cookie
        $this->user = Auth::user(); // Lấy thông tin người dùng đã đăng nhập
    }
    public function logout()
    {
        Auth::logout(); // Đăng xuất người dùng
        return Redirect::to('/login'); // Chuyển hướng đến trang đăng nhập
    }
    public function calculateSubtotal()
    {
        return CartManagement::calculateGrandTotal($this->cartItems);
    }

    public function render()
    {
        return view('livewire.checkout', [
            'cartItems' => $this->cartItems, // Truyền giỏ hàng vào view
            'subtotal' => $this->calculateSubtotal(), // Tính toán tổng số tiền
            'user' => $this->user, // Truyền thông tin người dùng vào view
        ]);
    }
}
