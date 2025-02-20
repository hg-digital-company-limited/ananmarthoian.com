<?php

namespace App\Livewire\Inc;

use Livewire\Component;
use App\Models\Classification; // Thêm import cho model Classification

class Footer extends Component
{
    public $classifications; // Thuộc tính để lưu danh sách phân loại

    public function mount()
    {
        $this->classifications = Classification::all(); // Lấy tất cả phân loại từ cơ sở dữ liệu
    }

    public function render()
    {
        return view('livewire.inc.footer', [
            'classifications' => $this->classifications, // Truyền danh sách phân loại vào view
        ]);
    }
}
