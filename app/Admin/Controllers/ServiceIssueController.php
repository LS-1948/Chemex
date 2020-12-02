<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Grid\RowAction\ServiceIssueFixAction;
use App\Admin\Grid\Displayers\RowActions;
use App\Admin\Repositories\ServiceIssue;
use App\Support\Data;
use Dcat\Admin\Admin;
use Dcat\Admin\Grid;
use Dcat\Admin\Http\Controllers\AdminController;
use Dcat\Admin\Show;
use Dcat\Admin\Widgets\Alert;

class ServiceIssueController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new ServiceIssue(['service']), function (Grid $grid) {

            $grid->model()->orderBy('status', 'ASC');

            $grid->column('id');
            $grid->column('service.name');
            $grid->column('issue');
            $grid->column('status')->using(Data::serviceIssueStatus());
            $grid->column('start');
            $grid->column('end');

            $grid->actions(function (RowActions $actions) {
                if ($this->status == 1 && Admin::user()->can('service.issue.fix')) {
                    $actions->append(new ServiceIssueFixAction());
                }
            });

            $grid->toolsWithOutline(false);

            $grid->disableCreateButton();
            $grid->disableRowSelector();
            $grid->disableBatchActions();
            $grid->disableViewButton();
            $grid->disableEditButton();
            $grid->disableDeleteButton();

        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new ServiceIssue(['service']), function (Show $show) {
            $show->field('id');
            $show->field('service.name');
            $show->field('issue');
            $show->field('status')->using(Data::serviceIssueStatus());
            $show->field('start');
            $show->field('end');
            $show->field('created_at');
            $show->field('updated_at');

            $show->disableDeleteButton();
            $show->disableEditButton();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Alert
     */
    protected function form()
    {
        return Data::unsupportedOperationWarning();
    }
}
