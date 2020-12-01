<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class product extends Model
{
  protected  $table = "products";
  protected $fillable = ['image',"sale",'product_id','tittle','gia','mota','phanloai','soluong'];
}
