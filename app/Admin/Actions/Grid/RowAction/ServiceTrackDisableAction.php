<?php

namespace App\Admin\Actions\Grid\RowAction;

use App\Models\ServiceTrack;
use Dcat\Admin\Actions\Response;
use Dcat\Admin\Admin;
use Dcat\Admin\Grid\RowAction;

class ServiceTrackDisableAction extends RowAction
{
    /**
     * @return string
     */
    protected $title = '🔗 解除归属';

    /**
     * Handle the action request.
     *
     * @return Response
     */
    public function handle(): Response
    {
        if (!Admin::user()->can('service.track.disable')) {
            return $this->response()
                ->error('你没有权限执行此操作！')
                ->refresh();
        }

        $service_track = ServiceTrack::where('id', $this->getKey())->first();

        if (empty($service_track)) {
            return $this->response()
                ->error('找不到此服务归属记录！');
        }

        $service_track->delete();

        return $this->response()
            ->success('服务归属解除成功！')
            ->refresh();
    }

    /**
     * @return string|array|void
     */
    public function confirm()
    {
        return ['确认解除与此设备的关联？'];
    }
}
