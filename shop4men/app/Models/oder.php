<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class oder extends Model
{
    protected $table = 'oders';
     protected $fillable = ['name','check','idOder','address','email','phone','total','oder'];
}
