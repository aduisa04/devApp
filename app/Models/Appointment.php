<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appointment extends Model
{
    use HasFactory;

    // Specify which fields are mass-assignable
    protected $fillable = [
        'doctor_id',
        'status',
        'name',
        'phone',
        'date',
        'time',
        'treatment',
        'clinic_id'
    ];

    public function doctor()
    {
        return $this->belongsTo(Doctor::class);
    }
}

