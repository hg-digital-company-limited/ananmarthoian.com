<?php

namespace App\Livewire\Content\Product;

use Livewire\Component;
use App\Models\Product;
class Image extends Component
{
    public $product;
    public function mount($product)
    {
        $this->product = $product;
    }
    public function render()
    {
        return view('livewire.content.product.image');
    }
}
