<?php

namespace App\Livewire\Inc;

use App\Models\Classification;
use Livewire\Component;

class MenuMobile extends Component
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
        return view('livewire.inc.menu-mobile', [
            'classifications' => $this->classifications, // Truyền phân loại vào view
        ]);
    }
}
