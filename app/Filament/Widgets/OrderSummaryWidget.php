<?php

namespace App\Filament\Widgets;

use App\Models\Order;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class OrderSummaryWidget extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Số đơn hàng mới', Order::where('status', 'pending')->count())
            ->description('Số đơn hàng mới vừa được đặt')
            ->color('danger'), // Màu đỏ cho số đơn hàng mới
            Stat::make('Tổng số đơn hàng hôm nay', Order::whereDate('created_at', today())->count())
                ->description('Tổng số đơn hàng đã được đặt hôm nay')
                ->color('success'), // Màu xanh lá cho tổng số đơn hàng

            Stat::make('Tổng số sản phẩm đã bán hôm nay', Order::whereDate('created_at', today())
                ->with('orderItems')
                ->get()
                ->sum(fn($order) => $order->orderItems->sum('quantity')))
                ->description('Tổng số sản phẩm đã được bán hôm nay')
                ->color('info'), // Màu xanh dương cho tổng số sản phẩm

            Stat::make('Tổng doanh thu hôm nay', number_format(Order::whereDate('created_at', today())->sum('total'), 2) . ' VNĐ')
                ->description('Tổng doanh thu từ các đơn hàng hôm nay')
                ->color('warning'), // Màu vàng cho tổng doanh thu


        ];
    }
}
