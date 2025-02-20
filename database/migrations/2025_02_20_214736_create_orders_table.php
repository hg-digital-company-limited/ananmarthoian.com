<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id(); // Tạo cột id tự tăng
            $table->foreignId('user_id')->constrained()->onDelete('cascade'); // Tạo cột user_id với khóa ngoại
            $table->string('address'); // Tạo cột address
            $table->string('phone'); // Tạo cột phone
            $table->string('full_name'); // Tạo cột full_name
            $table->string('status'); // Tạo cột status
            $table->decimal('total', 10, 2); // Tạo cột total với 10 số, 2 số thập phân
            $table->timestamps(); // Tạo cột created_at và updated_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders'); // Xóa bảng orders
    }
}
