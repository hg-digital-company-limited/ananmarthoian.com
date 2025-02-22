<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OrderItemResource\Pages;
use App\Filament\Resources\OrderItemResource\RelationManagers;
use App\Models\OrderItem;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class OrderItemResource extends Resource
{
    protected static ?string $model = OrderItem::class;
    protected static ?string $navigationGroup = 'Quản lý đơn hàng';
    protected static ?string $navigationLabel = 'Chi tiết đơn hàng';
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('order_id')
                    ->required()
                    ->numeric()
                    ->label('ID Đơn hàng'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('product_id')
                    ->required()
                    ->numeric()
                    ->label('ID Sản phẩm'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('quantity')
                    ->required()
                    ->numeric()
                    ->label('Số lượng'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->prefix('$')
                    ->label('Giá'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('total')
                    ->required()
                    ->numeric()
                    ->label('Tổng số tiền'), // Tùy chỉnh nhãn hiển thị
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('order_id')
                    ->numeric()
                    ->sortable()
                    ->searchable()
                    ->label('ID Đơn hàng'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\ImageColumn::make('product.image')
                    ->url(fn($record) => route('product.show', $record->product->slug))
                    ->label('Ảnh sản phẩm'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('product.name')
                ->searchable()
                    ->url(fn($record) => route('product.show', $record->product->slug))
                    ->label('Tên sản phẩm'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('quantity')
                    ->numeric()
                    ->sortable()
                    ->label('Số lượng'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('price')
                    ->money('VND')
                    ->sortable()
                    ->label('Giá'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('total')
                    ->money('VND')
                    ->numeric()
                    ->sortable()
                    ->label('Tổng số tiền'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('Ngày tạo'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('Ngày cập nhật'), // Tùy chỉnh nhãn hiển thị
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->label('Xem'), // Tùy chỉnh nhãn hiển thị
                    Tables\Actions\EditAction::make()
                        ->label('Chỉnh sửa'), // Tùy chỉnh nhãn hiển thị
                    Tables\Actions\DeleteAction::make()
                        ->label('Xóa'), // Tùy chỉnh nhãn hiển thị
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->label('Xóa hàng loạt'), // Tùy chỉnh nhãn hiển thị
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }
    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListOrderItems::route('/'),
            'create' => Pages\CreateOrderItem::route('/create'),
            'edit' => Pages\EditOrderItem::route('/{record}/edit'),
        ];
    }
}
