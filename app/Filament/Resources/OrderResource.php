<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OrderResource\Pages;
use App\Filament\Resources\OrderResource\RelationManagers;
use App\Models\Order;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class OrderResource extends Resource
{
    protected static ?string $model = Order::class;
    protected static ?string $navigationGroup = 'Quản lý đơn hàng';
    protected static ?string $navigationLabel = 'Đơn hàng';
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('user_id')
                    ->required()
                    ->numeric()
                    ->label('ID Người dùng'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('address')
                    ->required()
                    ->maxLength(255)
                    ->label('Địa chỉ'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('phone')
                    ->tel()
                    ->required()
                    ->maxLength(255)
                    ->label('Số điện thoại'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('full_name')
                    ->required()
                    ->maxLength(255)
                    ->label('Họ và Tên'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\Select::make('status')
                    ->required()
                    ->options([
                        'pending' => 'Chờ xác nhận',
                        'processing' => 'Đang xử lý',
                        'shipped' => 'Đã giao hàng',
                        'delivered' => 'Đã giao hàng',
                        'cancelled' => 'Đã hủy',
                    ])
                    ->label('Trạng thái'), // Tùy chỉnh nhãn hiển thị
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
                Tables\Columns\TextColumn::make('id')
                    ->numeric()
                    ->searchable()
                    ->sortable()
                    ->label('ID Đơn hàng'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('full_name')
                    ->searchable()
                    ->label('Họ và Tên'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('status')
                    ->searchable()
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'pending' => 'warning',
                        'processing' => 'info',
                        'shipped' => 'success',
                        'delivered' => 'success',
                        'cancelled' => 'danger',
                    })
                    ->label('Trạng thái'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('total')
                    ->numeric()
                    ->sortable()
                    ->money('VND')
                    ->label('Tổng số tiền'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
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
            'index' => Pages\ListOrders::route('/'),
            'create' => Pages\CreateOrder::route('/create'),
            'edit' => Pages\EditOrder::route('/{record}/edit'),
        ];
    }
}
