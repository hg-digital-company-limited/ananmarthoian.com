<?php

namespace App\Livewire\Inc;

use App\Models\Classification;
use App\Models\Category;
use Livewire\Component;

class Header extends Component
{
    public $classifications; // Thuộc tính để lưu phân loại
    public $categories; // Thuộc tính để lưu danh mục

    public function mount()
    {
        // Lấy tất cả phân loại
        $this->classifications = Classification::with('categories')->get();
    }

    public function render()
    {
        return view('livewire.inc.header', [
            'classifications' => $this->classifications, // Truyền phân loại vào view
        ]);
    }
}
