<?php

namespace App\Filament\Resources\CategoryResource\Pages;

use App\Filament\Resources\CategoryResource;
use App\Models\Category;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Support\Collection;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class ListCategories extends ListRecords
{
    protected static string $resource = CategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            \EightyNine\ExcelImport\ExcelImportAction::make()
            ->processCollectionUsing(function (string $modelClass, Collection $collection) {
                foreach ($collection as $item) {
                    // Convert item to array
                    $itemArray = $item->toArray();

                    // Access the name property
                    $name = $itemArray['name'];

                    // Generate slug from name
                    $slug = Str::slug($name);

                    // If there is an image URL, download and store the image
                    $imageUrl = $itemArray['image_link'] ?? null; // Assuming 'image_url' is the key for the image URL
                    $imagePath = $this->downloadAndStoreImage($imageUrl);

                    // Create category with slug and image path
                    Category::create(array_merge($itemArray, [
                        'slug' => $slug,
                        'image_link' => $imagePath // Save the image path if applicable
                    ]));
                }
            }),
            Actions\CreateAction::make(),
        ];
    }

    private function downloadAndStoreImage(?string $url): ?string
    {
        if (!$url) {
            return null;
        }

        try {
            // Download image from URL
            $imageData = file_get_contents($url);

            if ($imageData !== false) {
                // Create a unique file name
                $fileName = Str::random(10) . '.' . pathinfo($url, PATHINFO_EXTENSION);

                // Save file to the public/storage/images directory
                $filePath = 'categories/' . $fileName;
                Storage::disk('public')->put($filePath, $imageData); // Use the 'public' disk

                return $filePath;
            }
        } catch (\Exception $e) {
            // Log error or handle exception
            \Log::error('Error downloading image: ' . $e->getMessage());
        }

        return null;
    }
}
