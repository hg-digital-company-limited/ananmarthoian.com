<?php

namespace App\Livewire;

use App\Helpers\SettingsHelper;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use App\Models\Product as ProductModel;
class Product extends Component
{
    use LivewireAlert;

    public function mount($slug)
    {
    }

    public function render()
    {
        return view('livewire.product');
    }
}
