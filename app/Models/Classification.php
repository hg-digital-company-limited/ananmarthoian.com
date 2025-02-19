<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Classification extends Model
{
    use HasFactory;

    protected $fillable = ['name']; // Các cột có thể được gán hàng loạt
    public function categories()
    {
        return $this->hasMany(Category::class); // Mối quan hệ một - nhiều
    }
}
