<?php

namespace App\Livewire\Content\Cart;

use App\Helpers\CartManagement;
use Livewire\Component;

class Cart extends Component
{
    public $cartItems;
    public $totalPrice;
    public $totalQuantity;
    public function mount($cartItems, $totalPrice, $totalQuantity)
    {
        $this->cartItems = $cartItems;
        $this->totalPrice = $totalPrice;
        $this->totalQuantity = $totalQuantity;
    }
    public function incrementQuantity($productId)
    {
        $this->cartItems = CartManagement::incrementQuantityToCartItem($productId);
        $this->calculateTotals();
    }

    public function decrementQuantity($productId)
    {
        $this->cartItems = CartManagement::decrementQuantityToCartItem($productId);
        $this->calculateTotals();
    }

    public function removeItem($productId)
    {
        $this->cartItems = CartManagement::removeCartItem($productId);
        $this->calculateTotals();
        return redirect()->route('cart'); // Đảm bảo bạn đã định nghĩa route này
    }

    public function calculateTotals()
    {
        $this->totalPrice = array_reduce($this->cartItems, function ($carry, $item) {
            return $carry + ($item['price'] * $item['quantity']);
        }, 0);

        $this->totalQuantity = array_reduce($this->cartItems, function ($carry, $item) {
            return $carry + $item['quantity'];
        }, 0);
    }

    public function render()
    {
        return view('livewire.content.cart.cart',['cartItems' => $this->cartItems, 'totalPrice' => $this->totalPrice, 'totalQuantity' => $this->totalQuantity]);
    }
}
