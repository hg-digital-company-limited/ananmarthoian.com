<?php

namespace App\Livewire\Inc;

use App\Models\Classification;
use Livewire\Component;
use App\Helpers\CartManagement;
use Illuminate\Support\Facades\Auth;
class Header extends Component
{
    public $classifications; // Thuộc tính để lưu phân loại
    public $cartItems = []; // Thuộc tính để lưu giỏ hàng
    public $totalPrice = 0; // Thuộc tính để lưu tổng tiền

    public function mount()
    {
        // Lấy tất cả phân loại
        $this->classifications = Classification::with('categories')->get();
        // Lấy giỏ hàng từ cookie
        $this->cartItems = CartManagement::getCartItemsFromCookie();
        $this->calculateTotal();
    }

    public function calculateTotal()
    {
        $this->totalPrice = array_reduce($this->cartItems, function ($carry, $item) {
            return $carry + ($item['price'] * $item['quantity']);
        }, 0);
    }

    public function render()
    {
        return view('livewire.inc.header', [
            'classifications' => $this->classifications, // Truyền phân loại vào view
            'cartItems' => $this->cartItems, // Truyền giỏ hàng vào view
            'totalPrice' => $this->totalPrice, // Truyền tổng tiền vào view
            'isAuthenticated' => Auth::check(),
        ]);
    }
}
