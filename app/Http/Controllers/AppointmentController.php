<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Appointment;
use Illuminate\Support\Facades\Log;

class AppointmentController extends Controller
{
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|string|max:15',
            'pet' => 'required|string|max:50',
            'breed' => 'required|string|max:50',
            'treatment' => 'required|string|max:50',
            'petName' => 'required|string|max:50',
            'time' => 'required|string|max:5',
            'date' => 'required|date',
        ]);

        $appointment = Appointment::create($validatedData);

        return response()->json($appointment, 201);
    }
    public function index()
    {
        // Fetch all appointments from the database
        $appointments = Appointment::all();
        
        // Return the appointments as JSON response
        return response()->json($appointments);
    }

    public function update(Request $request, $id)
    {
        try {
            $appointment = Appointment::findOrFail($id);
            
            // Log the request data for debugging
            Log::info('Appointment update request:', [
                'id' => $id,
                'request_data' => $request->all()
            ]);

            if ($request->has('doctor_id')) {
                $appointment->doctor_id = $request->doctor_id;
            }
            
            if ($request->has('status')) {
                $appointment->status = $request->status;
            }
            
            $appointment->save();
            
            // Log successful update
            Log::info('Appointment updated successfully:', [
                'id' => $id,
                'appointment' => $appointment
            ]);
            
            return response()->json([
                'message' => 'Appointment updated successfully',
                'appointment' => $appointment
            ]);
            
        } catch (\Exception $e) {
            // Log the error
            Log::error('Failed to update appointment:', [
                'id' => $id,
                'error' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);
            
            return response()->json([
                'error' => 'Failed to update appointment',
                'message' => $e->getMessage()
            ], 500);
        }
    }
}
