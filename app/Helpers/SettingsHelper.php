<?php

namespace App\Helpers;

use App\Models\Setting;

class SettingsHelper
{
    static public function getSetting($key)
    {
        return Setting::first()->$key;
    }
}
