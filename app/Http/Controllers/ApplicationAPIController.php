<?php

namespace App\Http\Controllers;

use App\Application;
use App\Photo;
use Illuminate\Http\Request;
use Throwable;

class ApplicationAPIController extends Controller
{
    public function get($id, Request $request)
    {
        try {
            $additionalFields = explode(",", $request->query("fields"));
            if(in_array("photos", $additionalFields)){
                unset($additionalFields[array_search('photos', $additionalFields)]);
                $applications = Application::with('photo')->select("id", "title", "price", ...$additionalFields)->find($id);
            } else {
                unset($additionalFields[array_search('photos', $additionalFields)]);
                $applications = Application::with('mainPhoto')->select("id", "title", "price", ...$additionalFields)->find($id);
            }

            return response()->json([
                "code" => 200,
                "data" =>  $applications,
            ]);
        } catch(Throwable $e) {
             return response()->json([
                "code" => 500,
                "message" => "Не удалось получить объявления"
            ]);
        }
    }

    public function getAll(Request $request)
    {
        try {
            $applications = Application::with('mainPhoto')->select("id", "title", "price")->get();

            return response()->json([
                "code" => 200,
                "data" =>  $applications
            ]);
        } catch(Throwable $e) {
             return response()->json([
                "code" => 500,
                "message" => "Не удалось получить объявления"
            ]);
        }
    }

    public function create(Request $request)
    {
        try {
            $applications = Application::create([
                "title" => $request->title,
                "description" => $request->description,
                "price" => $request->price,
            ]);

            foreach($request->photos as $photo) {
                Photo::create([
                    "application_id" => $applications->id,
                    "photo" => $photo
                ]);
            }

            return response()->json([
                "code" => 200,
                "data" =>  $applications->id
            ]);
        } catch(Throwable $e) {
            return response()->json([
                "code" => 500,
                "message" => "Не удалось сохранить объявление, повторите попытку позже"
            ]);
        }
    }
}
