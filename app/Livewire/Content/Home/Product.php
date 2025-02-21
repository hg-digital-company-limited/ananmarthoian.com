<?php

namespace App\Livewire\Content\Home;

use Livewire\Component;
use App\Helpers\CartManagement;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use App\Models\Product as ProductModel;
class Product extends Component
{
    use LivewireAlert;
    public $newestProducts;
    public $bestSellingProducts;
    public $latestBlogs;
    protected $listeners = ['addToCart'];
    public function mount($newestProducts, $bestSellingProducts, $latestBlogs)
    {
        $this->newestProducts = $newestProducts;
        $this->bestSellingProducts = $bestSellingProducts;
        $this->latestBlogs = $latestBlogs;
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
        return view('livewire.content.home.product');
    }
}
