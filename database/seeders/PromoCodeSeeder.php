<?php

namespace Database\Seeders;

use App\Models\PromoCode;
use Illuminate\Database\Seeder;

class PromoCodeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        PromoCode::create([
            'code' => 'KONSERBARU',
            'type' => 'percent',
            'value' => 10.00,
            'max_uses' => 100,
            'expiry_date' => now()->addMonths(6),
            'is_active' => true,
        ]);

        PromoCode::create([
            'code' => 'VIPDISCOUNT',
            'type' => 'fixed',
            'value' => 50000.00,
            'max_uses' => 50,
            'expiry_date' => now()->addMonths(3),
            'is_active' => true,
        ]);

        PromoCode::create([
            'code' => 'FESTIVALMEGADEAL',
            'type' => 'percent',
            'value' => 20.00,
            'max_uses' => 20,
            'expiry_date' => now()->addWeeks(2),
            'is_active' => true,
        ]);
    }
}
