<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    // Define role constants
    const ROLE_USER = 0;
    const ROLE_ADMIN = 1;

    protected $fillable = [
        'first_name',
        'middle_name',
        'last_name',
        'email',
        'password',
        'profile_picture',
        'role'
    ];

    // Optional: Add a cast to ensure role is always an integer
    protected $casts = [
        'role' => 'integer'
    ];
}
