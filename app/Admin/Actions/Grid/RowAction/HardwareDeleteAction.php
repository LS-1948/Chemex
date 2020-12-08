<?php

namespace App\Admin\Actions\Grid\RowAction;

use App\Models\HardwareRecord;
use App\Models\HardwareTrack;
use Dcat\Admin\Actions\Response;
use Dcat\Admin\Admin;
use Dcat\Admin\Grid\RowAction;

class HardwareDeleteAction extends RowAction
{
    protected $title = '🔨 删除硬件';

    /**
     * 处理动作逻辑
     * @return Response
     */
    public function handle(): Response
    {
        if (!Admin::user()->can('hardware.delete')) {
            return $this->response()
                ->error('你没有权限执行此操作！')
                ->refresh();
        }

        $hardware = HardwareRecord::where('id', $this->getKey())->first();
        if (empty($hardware)) {
            return $this->response()
                ->error('没有此硬件记录！');
        }

        $hardware_tracks = HardwareTrack::where('hardware_id', $hardware->id)
            ->get();

        foreach ($hardware_tracks as $hardware_track) {
            $hardware_track->delete();
        }

        $hardware->delete();

        return $this->response()
            ->success('成功删除硬件: ' . $hardware->name)
            ->refresh();
    }

    /**
     * 对话框
     * @return string[]
     */
    public function confirm(): array
    {
        return ['确认删除？', '删除的同时将会解除所有与之关联的归属关系'];
    }
}
