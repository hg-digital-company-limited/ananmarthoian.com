<?php

namespace App\Livewire;

use App\Helpers\CartManagement;
use App\Models\Category;
use App\Models\Product;
use App\Models\Blog; // Thêm dòng này
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
class Home extends Component
{
    use LivewireAlert;
    public $newestProducts;
    public $bestSellingProducts;
    public $latestBlogs; // Thêm biến này để chứa blog
    public function mount()
    {
        // Lấy 6 sản phẩm mới nhất
        $this->newestProducts = Product::orderBy('created_at', 'desc')->take(10)->get();

        // Lấy 6 sản phẩm bán chạy nhất
        $this->bestSellingProducts = Product::orderBy('sold', 'desc')->take(10)->get();

        // Lấy 6 bài viết mới nhất
        $this->latestBlogs = Blog::orderBy('created_at', 'desc')->get();
    }
    public function render()
    {
        return view('livewire.home', [
            'newestProducts' => $this->newestProducts,
            'bestSellingProducts' => $this->bestSellingProducts,
            'latestBlogs' => $this->latestBlogs, // Truyền biến blog vào view
        ]);
    }
}
