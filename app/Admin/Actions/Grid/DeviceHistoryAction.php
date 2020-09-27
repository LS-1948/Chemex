<?php

namespace App\Admin\Actions\Grid;

use App\Models\DeviceTrack;
use App\Models\HardwareTrack;
use App\Models\SoftwareTrack;
use Dcat\Admin\Grid\RowAction;
use Dcat\Admin\Widgets\Modal;

class DeviceHistoryAction extends RowAction
{
    /**
     * @return string
     */
    protected $title = '设备变动履历';

    public function render()
    {
        // 实例化表单类并传递自定义参数
        $id = $this->getKey();

        $data = [];

        // 处理设备使用者变动履历
        $device_tracks = DeviceTrack::withTrashed()
            ->where('device_id', $id)
            ->get();
        foreach ($device_tracks as $device_track) {
            $status = '关联了';
            $color = '';
            $single = [
                'type' => '用户',
                'name' => $device_track->staff->name . ' - ' . $device_track->staff->department->name,
                'status' => $status,
                'color' => $color,
                'datetime' => json_decode($device_track, true)['created_at']
            ];
            array_push($data, $single);
            if (!empty($device_track->deleted_at)) {
                $status = '解除了';
                $color = 'table-warning';
                $single = [
                    'type' => '用户',
                    'name' => $device_track->staff->name . ' - ' . $device_track->staff->department->name,
                    'status' => $status,
                    'color' => $color,
                    'datetime' => json_decode($device_track, true)['deleted_at']
                ];
                array_push($data, $single);
            }

        }

        // 处理设备硬件变动履历
        $hardware_tracks = HardwareTrack::withTrashed()
            ->where('device_id', $id)
            ->get();
        foreach ($hardware_tracks as $hardware_track) {
            $status = '关联了';
            $color = '';
            $single = [
                'type' => '硬件',
                'name' => $hardware_track->hardware->name . ' - ' . $hardware_track->hardware->specification,
                'status' => $status,
                'color' => $color,
                'datetime' => json_decode($hardware_track, true)['created_at']
            ];
            array_push($data, $single);
            if (!empty($hardware_track->deleted_at)) {
                $status = '解除了';
                $color = 'table-warning';
                $single = [
                    'type' => '硬件',
                    'name' => $hardware_track->hardware->name . ' - ' . $hardware_track->hardware->specification,
                    'status' => $status,
                    'color' => $color,
                    'datetime' => json_decode($hardware_track, true)['deleted_at']
                ];
                array_push($data, $single);
            }
        }

        // 处理设备软件变动履历
        $software_tracks = SoftwareTrack::withTrashed()
            ->where('device_id', $id)
            ->get();
        foreach ($software_tracks as $software_track) {
            $status = '关联了';
            $color = '';
            $single = [
                'type' => '软件',
                'name' => $software_track->software->name . ' ' . $software_track->software->version,
                'status' => $status,
                'color' => $color,
                'datetime' => json_decode($software_track, true)['created_at']
            ];
            array_push($data, $single);
            if (!empty($software_track->deleted_at)) {
                $status = '解除了';
                $color = 'table-warning';
                $single = [
                    'type' => '软件',
                    'name' => $software_track->software->name . ' ' . $software_track->software->version,
                    'status' => $status,
                    'color' => $color,
                    'datetime' => json_decode($software_track, true)['deleted_at']
                ];
                array_push($data, $single);
            }
        }

        $datetime = array_column($data, 'datetime');
        array_multisort($datetime, SORT_DESC, $data);

        return Modal::make()
            ->lg()
            ->title($this->getRow()->name . ' 的变动履历')
            ->body(view('device_history')->with('data', $data))
            ->button($this->title);
    }
}