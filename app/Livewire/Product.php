<?php

namespace App\Livewire;

use App\Helpers\SettingsHelper;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use App\Models\Product as ProductModel;
class Product extends Component
{
    use LivewireAlert;
    public $slug;
    public $product;
    public $relatedProduct;
    public function mount($slug)
    {
        $this->slug = $slug;
        $this->product = ProductModel::where('slug', $this->slug)->first();
        if (!$this->product) {
            abort(404);
        }
        $this->relatedProduct = ProductModel::where('category_name', $this->product->category_name)->get();
    }
    public function order()
    {
        if (SettingsHelper::getSetting('is_link4m')) {
            return redirect()->to(SettingsHelper::getSetting('link4m'));
        }
    }
    public function render()
    {
        return view('livewire.product');
    }
}
