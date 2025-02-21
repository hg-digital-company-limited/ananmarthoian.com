<?php

namespace App\Livewire;

use App\Models\Order;
use Livewire\Component;

class Thankyou extends Component
{
    public $order;
    public function mount($id)
    {
        $this->order = Order::where('user_id', auth()->user()->id)->where('id', $id)->first();
        if (!$this->order) {
            return redirect()->route('home');
        }
    }
    public function render()
    {
        return view('livewire.thankyou');
    }
}
