<?php

namespace App\Livewire\Content\Shop;

use App\Helpers\CartManagement;
use Livewire\Component;
use App\Models\Product as ProductModel;
use Jantinnerezo\LivewireAlert\LivewireAlert;
class Shop extends Component
{
    use LivewireAlert;
    public $product;
    protected $listeners = ['addToCart'];

    public function mount($product)
    {
        $this->product = $product;
    }
    public function addToCart($productId, $quantity)
    {
        $product = ProductModel::find($productId);
        if ($product) {
            if ($product->is_stock == 0) {
                $this->alert('error', 'Sản phẩm đã hết hàng!');
                return;
            }
            CartManagement::addItemToCart($productId, $quantity);
            $this->alert('success', 'Sản phẩm đã được thêm vào giỏ hàng!');
        }else{
            $this->alert('error', 'Sản phẩm không tồn tại!');
        }
    }
    public function render()
    {
        return view('livewire.content.shop.shop',['product' => $this->product]);
    }
}
