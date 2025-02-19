<?php

namespace App\Livewire;

use App\Models\Category;
use App\Models\Product;
use Livewire\Component;

class Home extends Component
{
    public $categories;
    public $top10product;
    public $newproduct;
    public $randomproduct;
    public $products;

    public function mount()
    {
        $this->categories = Category::all();
        $this->top10product = Product::orderBy('sold', 'desc')->take(10)->get();
        $this->newproduct = Product::orderBy('created_at', 'desc')->take(10)->get();
        $this->randomproduct = Product::inRandomOrder()->take(10)->get();
        $this->products = Product::all();
    }
    public function render()
    {
        return view('livewire.home');
    }
}
