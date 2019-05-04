<?php

namespace TCG\Voyager\Models;


use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Category extends Model
{
    use Translatable;

    use Resizable;

    protected $translatable = ['slug', 'name'];

    protected $table = 'categories';

    protected $fillable = ['slug', 'name'];



    public function parentId()
    {
        return $this->belongsTo(self::class);
    }

}
