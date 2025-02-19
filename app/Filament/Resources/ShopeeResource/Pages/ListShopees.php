<?php

namespace App\Filament\Resources\ShopeeResource\Pages;
use Illuminate\Support\Collection;

use App\Filament\Resources\ShopeeResource;
use App\Models\Shopee;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListShopees extends ListRecords
{
    protected static string $resource = ShopeeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            \EightyNine\ExcelImport\ExcelImportAction::make()
            ->processCollectionUsing(function (string $modelClass, Collection $collection) {
                foreach ($collection as $item) {
                    // Convert item to array
                    $itemArray = $item->toArray();
                    // Create product
                    Shopee::create(array_merge($itemArray, [
                        'link' => $itemArray['link'],
                    ]));
                }
            }),
            Actions\CreateAction::make(),
        ];
    }
}
