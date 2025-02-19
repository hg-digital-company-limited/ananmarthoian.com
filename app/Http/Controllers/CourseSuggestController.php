<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class CourseSuggestController extends Controller
{
    public function search(Request $request)
    {

        // Retrieve the keyword from the request
        $keyword = $request->input('keyword');

        // Retrieve courses from the database where the course name contains the keyword
        $filteredCourses = Product::where('name', 'LIKE', '%' . $keyword . '%')->get();

        // Return the filtered courses as JSON
        return response()->json($filteredCourses);
    }
}
