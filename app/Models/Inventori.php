<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Inventori extends Model
{
     /**
    * The attributes that aren't mass assignable.
    *
    * @var array
    */
    protected $guarded = [];
    protected $table = 'product';
}
