<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained()->onDelete('cascade'); // Khóa ngoại đến bảng orders
            $table->foreignId('product_id')->constrained()->onDelete('cascade'); // Khóa ngoại đến bảng products
            $table->integer('quantity'); // Số lượng sản phẩm
            $table->decimal('price', 30, 2); // Giá sản phẩm
            $table->decimal('total', 30, 2); // Thêm cột total
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_items');
    }
}
