<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    // Đặt tên bảng nếu khác với quy tắc đặt tên mặc định
    protected $table = 'settings';

    // Các thuộc tính có thể gán đại chúng
    protected $fillable = [
        'shopee',
        'is_shopee',
        'ads_google',
        'is_ads_google',
        'link4m',
        'is_link4m',
    ];

    // Nếu bạn có các thuộc tính datetime, bạn có thể chỉ định chúng
    public $timestamps = true;

    // Có thể thêm các phương thức tùy chỉnh ở đây
}
