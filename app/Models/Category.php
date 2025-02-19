<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    // Đặt tên bảng nếu khác với quy ước
    protected $table = 'categories';

    // Các trường có thể gán hàng loạt
    protected $fillable = [
        'name',
        'slug',
        'image_link',
        'classification_id',
    ];
    public function products()
    {
        return $this->hasMany(Product::class);
    }
    public function classification()
    {
        return $this->belongsTo(Classification::class); // Mối quan hệ nhiều - một
    }
}
