<?php

namespace App\Models;

use App\Traits\HasCreator;
use Dcat\Admin\Traits\HasDateTimeFormatter;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @method static where(string $key, string $value)
 * @property int hardware_id
 * @property int device_id
 */
class HardwareTrack extends Model
{
    use HasDateTimeFormatter;
    use SoftDeletes;
    use HasCreator;

    protected $table = 'hardware_tracks';

    protected static function boot()
    {
        parent::boot();
        self::hasCreator();
    }

    public function hardware(): HasOne
    {
        return $this->hasOne(HardwareRecord::class, 'id', 'hardware_id');
    }

    public function device(): HasOne
    {
        return $this->hasOne(DeviceRecord::class, 'id', 'device_id');
    }
}
