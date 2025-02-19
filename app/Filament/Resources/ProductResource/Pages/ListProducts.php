<?php

namespace App\Filament\Resources\ProductResource\Pages;

use App\Filament\Resources\ProductResource;
use App\Models\Category;
use App\Models\Product;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Support\Collection;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class ListProducts extends ListRecords
{
    protected static string $resource = ProductResource::class;

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

                        // Generate a unique slug
                        $slug = $this->generateUniqueSlug(Str::slug($name));

                        // If there is an image URL, download and store the image
                        $imageUrl = $itemArray['image'] ?? null; // Assuming 'image' is the key for the image URL
                        if ($imageUrl) {
                            $imagePath = $this->downloadAndStoreImage($imageUrl);
                        } else {
                            throw new \Exception('Image URL is required');
                        }

                        // Create product
                        Product::create(array_merge($itemArray, [
                            'name' => $name,
                            'slug' => $slug,
                            'discount_price' => $itemArray['discount_price'],
                            'price' => 0,
                            'image' => $imagePath,
                            'category_id' =>  189, // Use a specific category ID
                            'sold' => $itemArray['sold'],
                            'category_name' => $itemArray['category_name'],
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
                $filePath = 'products/' . $fileName;
                Storage::disk('public')->put($filePath, $imageData); // Use the 'public' disk

                return $filePath;
            }
        } catch (\Exception $e) {
            // Log error or handle exception
            \Log::error('Error downloading image: ' . $e->getMessage());
        }

        return null;
    }

    private function generateUniqueSlug(string $slug): string
    {
        $originalSlug = $slug;
        $counter = 1;

        // Check for existing slugs in the database
        while (Product::where('slug', $slug)->exists()) {
            $slug = $originalSlug . '-' . $counter;
            $counter++;
        }

        return $slug;
    }
}
