<?php

namespace App\Http\Controllers;

use App\Models\AccessHistory;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Spatie\Sitemap\Sitemap;
use App\Models\Product; // Đảm bảo bạn đã import model Product
use Spatie\Sitemap\Tags\Url;

class SitemapController extends Controller
{
    public function generateSitemap()
    {
        // Kiểm tra định dạng ngày hợp lệ

        // Tạo một sitemap mới
        $sitemap = Sitemap::create();

        // Lấy tất cả các sản phẩm được tạo ra vào ngày đã chỉ định
        $products = Product::all();

        // Thêm từng sản phẩm vào sitemap
        foreach ($products as $product) {
            $sitemap->add(Url::create('/product/' . $product->slug) // Giả sử bạn có một trường 'slug' trong model Product
                ->setLastModificationDate($product->updated_at) // Sử dụng ngày cập nhật của sản phẩm
                ->setChangeFrequency(Url::CHANGE_FREQUENCY_DAILY) // Tần suất thay đổi hàng ngày
                ->setPriority(0.8) // Độ ưu tiên
            );
        }

        // Ghi sitemap vào file với tên theo ngày
        $sitemap->writeToFile(public_path('sitemap.xml'));

        // Trả về sitemap dưới dạng XML
        return response()->file(public_path('sitemap.xml'));
    }
    public function getVisitCounts()
    {
        // Số lượt truy cập hôm nay
        $today = AccessHistory::whereDate('date', Carbon::today())->sum('visit_count');

        // Số lượt truy cập tuần này
        $week = AccessHistory::whereBetween('date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])->sum('visit_count');

        // Số lượt truy cập tháng này
        $month = AccessHistory::whereMonth('date', Carbon::now()->month)->sum('visit_count');

        // Số lượt truy cập năm này
        $year = AccessHistory::whereYear('date', Carbon::now()->year)->sum('visit_count');

        // Tổng số lượt truy cập
        $total = AccessHistory::sum('visit_count');

        // Trả về JSON
        return response()->json([
            'today' => $today,
            'week' => $week,
            'month' => $month,
            'year' => $year,
            'total' => $total,
        ]);
    }
}
