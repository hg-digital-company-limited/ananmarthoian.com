<?php

namespace App\Livewire;

use App\Helpers\SettingsHelper;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use App\Models\Product as ProductModel;
use Illuminate\Support\Str;

class Product extends Component
{
    use LivewireAlert;

    public $product; // To hold the product details
    public $relatedProducts; // To hold related products

    public function mount($slug)
    {
        // Fetch the product based on the slug
        $this->product = ProductModel::where('slug', $slug)->first();

        // Check if the product exists
        if (!$this->product) {
            $this->alert('error', 'Sản phẩm không tồn tại.');
            return;
        }

        // Fetch related products from the same category (randomly)
        $this->relatedProducts = ProductModel::where('category_id', $this->product->category_id)
            ->where('id', '!=', $this->product->id) // Exclude the current product
            ->inRandomOrder()
            ->limit(20)
            ->get();
    }

    public function render()
    {
        return view('livewire.product', [
            'product' => $this->product,
            'relatedProducts' => $this->relatedProducts,
        ]);
    }
}
