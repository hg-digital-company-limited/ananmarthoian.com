<?php
namespace Database\Seeders;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        // Lấy tất cả danh mục
        $categories = Category::all();

        foreach ($categories as $category) {
            // Tạo 25 sản phẩm cho mỗi danh mục
            for ($i = 0; $i < 25; $i++) {
                Product::create([
                    'name' => $faker->name, // Tạo tên sản phẩm ngẫu nhiên
                    'slug' => $faker->slug, // Tạo slug ngẫu nhiên
                    'price' => $faker->randomFloat(2, 10, 1000), // Tạo giá ngẫu nhiên
                    'image' => '01JMF24FBRTVE0WQN4JBTV6PN1.png', // Tạo URL hình ảnh ngẫu nhiên
                    'category_id' => $category->id, // Gán ID danh mục
                    'is_stock' => 1, // Tạo ngẫu nhiên trạng thái còn hàng
                    'sold' => $faker->numberBetween(0, 100), // Tạo số lượng đã bán ngẫu nhiên
                ]);
            }
        }
    }
}
