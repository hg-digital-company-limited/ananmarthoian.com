<?php

namespace App\Filament\Resources\ShopeeResource\Pages;

use App\Filament\Resources\ShopeeResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditShopee extends EditRecord
{
    protected static string $resource = ShopeeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
