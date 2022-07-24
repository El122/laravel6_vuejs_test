<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Photo;

class Application extends Model
{
    protected $table = "applications";
    protected $fillable = ["title", "description", "price"];

    public function mainPhoto() {
        return $this->hasOne(Photo::class, "application_id");
    }

     public function photo() {
        return $this->hasMany(Photo::class, "application_id");
    }
}
