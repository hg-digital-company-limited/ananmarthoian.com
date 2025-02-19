<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Tên sản phẩm
            $table->string('slug')->unique(); // Slug sản phẩm
            $table->decimal('discount_price', 10, 2)->nullable(); // Giá giảm (nếu có)
            $table->decimal('price', 10, 2); // Giá sản phẩm
            $table->string('image')->nullable(); // Đường dẫn ảnh
            $table->integer('downloads')->default(0); // Lượt mua
            $table->foreignId('category_id')->constrained()->onDelete('cascade'); // Danh mục
            $table->string('demo_link')->nullable(); // Link demo
            $table->timestamps(); // Thời gian tạo và cập nhật
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
