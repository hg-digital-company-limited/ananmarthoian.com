<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CategoryResource\Pages;
use App\Filament\Resources\CategoryResource\RelationManagers;
use App\Models\Category;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;
class CategoryResource extends Resource
{
    protected static ?string $model = Category::class;
    protected static ?string $navigationLabel = 'Danh Mục';
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
                    ->label('Tên'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\TextInput::make('slug')
                    ->required()
                    ->dehydrated()
                    ->unique(Category::class, ignoreRecord: true)
                    ->maxLength(255)
                    ->label('Đường dẫn'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\FileUpload::make('image_link')
                    ->image()
                    ->label('Hình ảnh'), // Tùy chỉnh nhãn hiển thị
                Forms\Components\Select::make('classification_id') // Thêm trường phân loại
                    ->label('Phân loại') // Tùy chỉnh nhãn hiển thị
                    ->relationship('classification', 'name') // Kết nối với mối quan hệ và tên hiển thị
                    ->required(), // Nếu cần thiết, có thể bỏ qua nếu không bắt buộc
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->sortable()
                    ->label('ID'), // Tùy chỉnh nhãn hiển thị
                    Tables\Columns\TextColumn::make('name')
                    ->url(fn($record) => url('/shop?cat=' . $record->id))
                    ->label('Tên') // Tùy chỉnh nhãn hiển thị
                    ->sortable() // Nếu bạn muốn cho phép sắp xếp
                    ->searchable(), // Nếu bạn muốn cho phép tìm kiếm
                Tables\Columns\TextColumn::make('slug')
                    ->searchable()
                    ->label('Đường dẫn'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\ImageColumn::make('image_link')
                    ->label('Hình ảnh'), // Tùy chỉnh nhãn hiển thị
                Tables\Columns\TextColumn::make('classification.name') // Thêm cột phân loại
                    ->label('Phân loại') // Tùy chỉnh nhãn hiển thị
                    ->searchable(), // Tìm kiếm theo tên phân loại
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
            'index' => Pages\ListCategories::route('/'),
            'create' => Pages\CreateCategory::route('/create'),
            'edit' => Pages\EditCategory::route('/{record}/edit'),
        ];
    }
}
