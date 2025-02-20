<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class Addresses extends Component
{
    public $user;
    public $full_name;
    public $address;
    public $phone;

    public function mount()
    {
        $this->user = Auth::user();

        // Khởi tạo dữ liệu từ người dùng
        $this->full_name = $this->user->full_name;
        $this->address = $this->user->address;
        $this->phone = $this->user->phone;
    }

    public function updateUserInfo()
    {
        $this->validate([
            'full_name' => 'required|string|max:255',
            'address' => 'required|string|max:255',
            'phone' => 'required|string|max:15', // Thay đổi quy tắc theo yêu cầu
        ]);

        // Cập nhật thông tin người dùng
        $this->user->update([
            'full_name' => $this->full_name,
            'address' => $this->address,
            'phone' => $this->phone,
        ]);
        return redirect()->route('addresses'); // Thay 'account' bằng route bạn muốn chuyển
    }

    public function render()
    {
        return view('livewire.addresses');
    }
}
