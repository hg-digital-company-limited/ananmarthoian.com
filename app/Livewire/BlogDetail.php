<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Blog;
class BlogDetail extends Component
{
    public $blog;
    public $newBlogs;
    public function mount($slug)
    {
        $this->blog = Blog::where('slug', $slug)->first();
        $this->newBlogs = Blog::orderBy('created_at', 'desc')->take(5)->get();
    }
    public function render()
    {
        return view('livewire.blog-detail', [
            'blog' => $this->blog
        ]);
    }
}
