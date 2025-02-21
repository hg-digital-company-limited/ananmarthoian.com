<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    // Khai báo các thuộc tính có thể gán hàng loạt
    protected $fillable = [
        'name',
        'slug',
        'price',
        'image',
        'category_id',
        'description',
        'is_stock',
        'sold',
    ];

    // Khai báo quan hệ với Category
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
