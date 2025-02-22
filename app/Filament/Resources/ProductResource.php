<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Filament\Resources\ProductResource\RelationManagers;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;
    protected static ?string $navigationLabel = 'Sản Phẩm';
    protected static ?string $navigationGroup = 'Quản lý chung';
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->live(onBlur: true)
                    ->afterStateUpdated(
                        fn(string $operation, $state, Forms\Set $set) =>
                        $operation === 'create' ? $set('slug', Str::slug($state)) : null
                    )
                    ->maxLength(255)
                    ->label('Tên sản phẩm'), // Việt hóa nhãn
                Forms\Components\TextInput::make('slug')
                    ->dehydrated()
                    ->unique(Product::class, ignoreRecord: true)
                    ->required()
                    ->maxLength(255)
                    ->label('Slug'), // Việt hóa nhãn
                Forms\Components\Select::make('is_stock')
                    ->options([
                        '1' => 'Còn hàng',
                        '0' => 'Hết hàng',
                    ])
                    ->default('1')
                    ->required()
                    ->label('Tình trạng hàng'), // Việt hóa nhãn
                Forms\Components\TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->prefix('₫')
                    ->label('Giá'), // Việt hóa nhãn
                Forms\Components\FileUpload::make('image')
                    ->image()
                    ->label('Hình ảnh'), // Việt hóa nhãn
                Forms\Components\TextInput::make('sold')
                    ->default(0)
                    ->required()
                    ->maxLength(255)
                    ->label('Số lượng đã bán'), // Việt hóa nhãn
                Forms\Components\RichEditor::make('description')
                    ->label('Mô tả'), // Việt hóa nhãn
                Forms\Components\Select::make('category_id')
                    ->relationship('category', 'name')
                    ->required()
                    ->label('Danh mục') // Việt hóa nhãn
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image')
                    ->label('Hình ảnh'), // Việt hóa nhãn
                Tables\Columns\TextColumn::make('name')
                    ->url(fn($record) => route('product.show', $record->slug))
                    ->searchable()
                    ->label('Tên sản phẩm'), // Việt hóa nhãn
                Tables\Columns\TextColumn::make('slug')
                    ->searchable()
                    ->label('Slug'), // Việt hóa nhãn
                Tables\Columns\TextColumn::make('price')
                    ->money('VND')
                    ->sortable()
                    ->label('Giá'), // Việt hóa nhãn
                Tables\Columns\TextColumn::make('category.name')
                    ->sortable()
                    ->label('Danh mục'), // Việt hóa nhãn
                Tables\Columns\TextColumn::make('sold')
                    ->numeric()
                    ->sortable()
                    ->label('Số lượng đã bán'), // Việt hóa nhãn
                    Tables\Columns\TextColumn::make('is_stock')
                    ->badge()
                    ->color(fn(string $state): string => match ($state) {
                        '1' => 'success',
                        '0' => 'danger',
                    })
                    ->sortable()
                    ->label('Tình trạng hàng') // Việt hóa nhãn
                    ->formatStateUsing(fn(string $state): string => $state === '1' ? 'Còn hàng' : 'Hết hàng'), // Hiển thị tình trạng hàng
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('Ngày tạo'), // Việt hóa nhãn
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('Ngày cập nhật'), // Việt hóa nhãn
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->label('Xem'), // Việt hóa nhãn
                    Tables\Actions\EditAction::make()
                        ->label('Chỉnh sửa'), // Việt hóa nhãn
                    Tables\Actions\DeleteAction::make()
                        ->label('Xóa'), // Việt hóa nhãn
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->label('Xóa hàng loạt'), // Việt hóa nhãn
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
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}
