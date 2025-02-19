<?php

namespace App\Livewire;

use App\Models\Category;
use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;

class Shop extends Component
{
    use WithPagination;

    public $search = ''; // Thêm thuộc tính tìm kiếm
    public $category = ''; // Thêm thuộc tính để lưu giá trị danh mục
    public $categoryName = ''; // Thêm thuộc tính để lưu giá trị danh mục
    public $categoryInfo; // Thêm thuộc tính để lưu thông tin danh mục

    public function mount()
    {
        // Lấy giá trị tìm kiếm, sắp xếp và danh mục từ tham số URL
        $this->search = request()->query('keyword', '');
        $this->category = request()->query('cat', ''); // Lấy ID danh mục từ URL
        if ($this->category) {
            $this->categoryInfo = Category::find($this->category);
        }
    }

    public function render()
    {
        $categories = Category::all();
        $products = Product::when($this->search, function($query) {
                if (strlen($this->search) >= 30) {
                    $query->where('name', 'like', '%' . $this->search . '%');
                } else {
                    $searchTerms = explode(' ', $this->search);
                    foreach ($searchTerms as $term) {
                        if (strlen($term) >= 2) {
                            $query->orWhere('name', 'like', '%' . $term . '%');
                        }
                    }
                }
            })
            ->when($this->category, function($query) {
                $query->where('category_id', $this->category); // Sử dụng category_id để lọc sản phẩm
            })
            ->paginate(20)
            ->appends(['keyword' => $this->search, 'cat' => $this->category]); // Giữ lại giá trị tìm kiếm và danh mục trong phân trang

        $totalProducts = Product::when($this->search, function($query) {
                if (strlen($this->search) >= 30) {
                    $query->where('name', 'like', '%' . $this->search . '%');
                } else {
                    $searchTerms = explode(' ', $this->search);
                    foreach ($searchTerms as $term) {
                        if (strlen($term) >= 2) {
                            $query->orWhere('name', 'like', '%' . $term . '%');
                        }
                    }
                }
            })
            ->when($this->category, function($query) {
                $query->where('category_id', $this->category); // Sử dụng category_id để đếm sản phẩm
            })
            ->count();

        return view('livewire.shop', [
            'products' => $products,
            'categories' => $categories,
            'totalProducts' => $totalProducts,
        ]);
    }
}
