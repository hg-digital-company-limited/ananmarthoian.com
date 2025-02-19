<?php

use App\Http\Controllers\CourseSuggestController;
use App\Http\Controllers\SitemapController;
use App\Livewire\ForgotPassword;
use App\Livewire\GetCourse;
use App\Livewire\Home;
use App\Livewire\Login;
use App\Livewire\Product;
use App\Livewire\Register;
use App\Livewire\Shop;
use Illuminate\Support\Facades\Route;

 Route::get('/', Home::class);
Route::get('/get-course', GetCourse::class);
Route::get('/login', Login::class);
Route::get('/register', Register::class);
Route::get('/shop', Shop::class);
Route::get('/product/{slug}', Product::class);
Route::get('/forgot-password', ForgotPassword::class);
Route::post('/api/search-course-suggest', [CourseSuggestController::class, 'search']);
Route::get('/sitemap.xml', [
    SitemapController::class,
    'generateSitemap'
]);
Route::get('/views', [
    SitemapController::class,
    'getVisitCounts'
]);
