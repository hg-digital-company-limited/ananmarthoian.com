<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Blog as BlogModel;
class Blog extends Component
{
    public $blogs;
    public $newBlogs;
    public function mount()
    {
        $this->blogs = BlogModel::orderBy('created_at', 'desc')->get();
        $this->newBlogs = BlogModel::orderBy('created_at', 'desc')->take(5)->get();
    }
    public function render()
    {
        return view('livewire.blog', [
            'blogs' => $this->blogs
        ]);
    }
}
