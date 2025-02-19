<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shopee extends Model
{
    use HasFactory;

    protected $table = 'shopee'; // Tên bảng

    protected $fillable = [
        'link', // Trường link
    ];
}
