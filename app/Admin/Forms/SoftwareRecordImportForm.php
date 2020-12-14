<?php

namespace App\Admin\Forms;

use App\Models\HardwareCategory;
use App\Models\PurchasedChannel;
use App\Models\VendorRecord;
use Box\Spout\Common\Exception\IOException;
use Box\Spout\Common\Exception\UnsupportedTypeException;
use Dcat\Admin\Http\JsonResponse;
use Dcat\Admin\Widgets\Form;
use Dcat\EasyExcel\Excel;
use Exception;
use League\Flysystem\FileNotFoundException;

class SoftwareRecordImportForm extends Form
{
    /**
     * 处理表单提交逻辑
     * @param array $input
     * @return JsonResponse
     */
    public function handle(array $input): JsonResponse
    {
        $file = $input['file'];
        $file_path = public_path('uploads/' . $file);
        try {
            $rows = Excel::import($file_path)->first()->toArray();
            foreach ($rows as $row) {
                try {
                    if (!empty($row['名称']) && !empty($row['分类']) && !empty($row['制造商'] && !empty($row['规格']))) {
                        $category = HardwareCategory::where('name', $row['分类'])->first();
                        $vendor = VendorRecord::where('name', $row['制造商'])->first();
                        if (empty($category)) {
                            $category = new HardwareCategory();
                            $category->name = $row['分类'];
                            $category->save();
                        }
                        if (empty($vendor)) {
                            $vendor = new VendorRecord();
                            $vendor->name = $row['制造商'];
                            $vendor->save();
                        }
                        $hardware_records = new HardwareCategory();
                        $hardware_records->name = $row['名称'];
                        $hardware_records->category_id = $category->id;
                        $hardware_records->vendor_id = $vendor->id;
                        // 这里导入判断空值，不能使用 ?? null 或者 ?? '' 的方式，写入数据库的时候
                        // 会默认为插入''而不是null，这会导致像price这样的double也是插入''，就会报错
                        // 其实price应该插入null
                        if (!empty($row['序列号'])) {
                            $hardware_records->sn = $row['序列号'];
                        }
                        $hardware_records->specification = $row['规格'];
                        if (!empty($row['描述'])) {
                            $hardware_records->description = $row['描述'];
                        }
                        if (!empty($row['价格'])) {
                            $hardware_records->price = $row['价格'];
                        }
                        if (!empty($row['购入日期'])) {
                            $hardware_records->purchased = $row['购入日期'];
                        }
                        if (!empty($row['过保日期'])) {
                            $hardware_records->expired = $row['过保日期'];
                        }
                        if (!empty($row['购入途径'])) {
                            $purchased_channel = PurchasedChannel::where('name', $row['购入途径'])->first();
                            if (empty($purchased_channel)) {
                                $purchased_channel = new PurchasedChannel();
                                $purchased_channel->name = $row['购入途径'];
                                $purchased_channel->save();
                            }
                            $hardware_records->purchased_channel_id = $purchased_channel->id;
                        }
                        $hardware_records->save();
                    } else {
                        return $this->response()
                            ->error('缺少必要的字段！');
                    }
                } catch (Exception $exception) {
                    continue;
                }
            }
            $return = $this
                ->response()
                ->success('文件导入成功！')
                ->refresh();
        } catch (IOException $e) {
            $return = $this
                ->response()
                ->error('文件读写失败：' . $e->getMessage());
        } catch (UnsupportedTypeException $e) {
            $return = $this
                ->response()
                ->error('不支持的文件类型：' . $e->getMessage());
        } catch (FileNotFoundException $e) {
            $return = $this
                ->response()
                ->error('文件不存在：' . $e->getMessage());
        }

        return $return;
    }

    /**
     * 构造表单
     */
    public function form()
    {
        $this->file('file', '表格文件')
            ->accept('xls,xlsx,csv')
            ->autoUpload()
            ->required()
            ->help('导入支持xls、xlsx、csv文件，且表格头必须使用【名称，描述，分类，制造商，序列号，规格，价格，购入日期，过保日期，购入途径】。');
    }
}
