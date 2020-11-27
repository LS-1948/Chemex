<?php

namespace App\Admin\Actions\Grid\RowAction;

use App\Admin\Forms\ServiceIssueFixForm;
use Dcat\Admin\Admin;
use Dcat\Admin\Grid\RowAction;
use Dcat\Admin\Widgets\Modal;

class ServiceIssueFixAction extends RowAction
{
    /**
     * @return string
     */
    protected $title = '🔧 修复问题';

    public function render()
    {
        if (!Admin::user()->can('service.issue.fix')) {
            return '你没有权限执行此操作！';
        }

        // 实例化表单类并传递自定义参数
        $form = ServiceIssueFixForm::make()->payload(['id' => $this->getKey()]);

        return Modal::make()
            ->lg()
            ->title('处理服务程序异常')
            ->body($form)
            ->button($this->title);
    }
}
