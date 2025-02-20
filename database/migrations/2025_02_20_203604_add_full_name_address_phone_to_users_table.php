<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFullNameAddressPhoneToUsersTable extends Migration
{
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('full_name')->nullable(); // Thêm cột full_name
            $table->string('address')->nullable();   // Thêm cột address
            $table->string('phone')->nullable();     // Thêm cột phone
        });
    }

    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['full_name', 'address', 'phone']); // Xóa các cột khi rollback
        });
    }
}
