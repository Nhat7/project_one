<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable;

class signInModel extends Model
{
    protected $table ='users';
    public $timestamp ='false';
}
