<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Order as OrderModel;
class Order extends Component
{
    public $order;
    public function mount($id)
    {
        $this->order = OrderModel::where('user_id', auth()->user()->id)->where('id', $id)->first();
        if (!$this->order) {
            return redirect()->route('account');
        }
    }
    public function render()
    {
        return view('livewire.order');
    }
}
