<?php

use App\Http\Controllers\SitemapController;
use App\Livewire\Account;
use App\Livewire\Addresses;
use App\Livewire\Blog;
use App\Livewire\BlogDetail;
use App\Livewire\Cart;
use App\Livewire\Checkout;
use App\Livewire\ForgotPassword;
use App\Livewire\Home;
use App\Livewire\Login;
use App\Livewire\Order;
use App\Livewire\Product;
use App\Livewire\Register;
use App\Livewire\ResetPassword;
use App\Livewire\Shop;
use App\Livewire\Thankyou;
use Illuminate\Support\Facades\Route;

 Route::get('/', Home::class)->name('home');
Route::get('/login', Login::class)->name('login');
Route::get('/register', Register::class);
Route::get('/shop', Shop::class);
Route::get('/product/{slug}', Product::class);
Route::get('/forgot-password', ForgotPassword::class);
Route::get('/account', Account::class)->name('account');
Route::get('/account/addresses', Addresses::class)->name('addresses');
Route::get('/account/order/{id}', Order::class)->name('order');
Route::get('/cart', Cart::class)->name('cart');
Route::get('/checkout', Checkout::class);
Route::get('/thankyou/{id}', Thankyou::class);
Route::get('/blogs', Blog::class);
Route::get('/blog/{slug}', BlogDetail::class);
Route::get('/reset-password', ResetPassword::class)->name('password.reset');
Route::get('/sitemap.xml', [
    SitemapController::class,
    'generateSitemap'
]);
Route::get('/views', [
    SitemapController::class,
    'getVisitCounts'
]);
