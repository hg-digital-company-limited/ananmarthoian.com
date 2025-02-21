<?php

namespace App\Livewire\Content;

use Livewire\Component;
use App\Helpers\CartManagement;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Product extends Component
{
    use LivewireAlert;
    public $product;
    public $relatedProducts;
    public $quantity = 1; // Default quantity

    public function mount($product, $relatedProducts)
    {
        $this->product = $product;
        $this->relatedProducts = $relatedProducts;
    }

    public function addToCart()
    {
        if ($this->product->is_stock == 0) {
            $this->alert('error', 'Sản phẩm đã hết hàng');
            return;
        }
        // Call the CartManagement helper to add the item to the cart
        $cartCount = CartManagement::addItemToCart($this->product->id, $this->quantity);

        // Optionally, show a success alert or message
        $this->alert('success', 'Đã thêm sản phẩm vào giỏ hàng');
    }
    public function buyNow()
    {
        $this->addToCart();
        return redirect()->route('cart');
    }

    public function decrementQuantity()
    {
        if ($this->quantity > 1) {
            $this->quantity--;
        }
    }
    public function incrementQuantity()
    {
        $this->quantity++;
    }
    public function render()
    {
        return view('livewire.content.product');
    }

}
