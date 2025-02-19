<?php

namespace App\Livewire;

use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;

class Login extends Component
{
    use LivewireAlert;

    public function login()
    {
        $this->alert('error', 'Đăng nhập tài khoản để đặt hàng');
    }
    public function render()
    {
        return view('livewire.login');
    }
}
