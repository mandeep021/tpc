<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommunityFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $users = User::all()->random(); //or whatever
        return [
            'title' => $this->faker->sentence,
            'content' => $this->faker->text,
            'user_id' => $users->id,
            'status' => 1
        ];
    }
}
