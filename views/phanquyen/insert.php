<?php
require_once ('models/quyen.php');
require_once ('models/phanquyen.php');
require_once ('models/nhanvien.php');
//load nhan vien
$list = [];
$db =DB::getInstance();
$reg = $db->query('select * from nhanvien');
foreach ($reg->fetchAll() as $item){
    $list[] =new NhanVien($item['Id'],$item['TenNV'],$item['DienThoai'],$item['Email'],$item['DiaChi'],$item['TaiKhoan'],$item['MatKhau'],$item['IsActive']);
}
$data =array('nhanvien'=> $list);
//end load nhan vien
//load nhan vien
$list1 = [];
$db1 =DB::getInstance();
$reg1 = $db1->query('select * from quyen');
foreach ($reg1->fetchAll() as $item1){
    $list1[] =new Quyen($item1['Id'],$item1['TenQuyen']);
}
$data1 =array('nhanvien'=> $list);
//end load nhan vien
?>
<form method="post" name="create-sp">
    <div class="form-group ml-5">

        <div class="col-md-4 mb-3">
            <label for="validationDefault02">Chọn người dùng</label>
            <select class="form-control" id="lsp_ma" name="nv">
                <?php foreach ($list as $item) {
                    echo "<option value=".$item->Id.">".$item->TaiKhoan ."</option>";
                } ?>
            </select>
        </div>
        <div class="col-md-4 mb-3">
            <label for="validationDefault02">Chọn quyền</label>
            <select class="form-control" id="lsp_m" name="quyen">
                <?php foreach ($list1 as $item) {
                    echo "<option value=".$item->Id.">".$item->TenQuyen ."</option>";
                } ?>
            </select>
        </div>
        <button type="submit" name="create-sp" class=" mt-2 btn-danger btn">Thêm</button>


    </div>
</form>
<?php
if(isset($_POST['create-sp'])){
    $nv =  $_POST['nv'];
    $quyen =  $_POST['quyen'];
    $list3 = [];
    $db3 = DB::getInstance();
    $reg3 = $db3->query('SELECT ds.Id ,nv.TaiKhoan ,q.TenQuyen FROM danhsachquyen ds JOIN nhanvien nv JOIN quyen q ON ds.IdNV = nv.Id AND ds.IdQuyen = q.Id where ds.IdNV='.$nv.' ANd ds.IdQuyen='.$quyen);
    foreach ($reg3->fetchAll() as $item3) {
        $list3[] = new PhanQuyen($item3['Id'], $item3['TaiKhoan'], $item3['TenQuyen']);
    }
    $data3 =array('phanquyen'=> $list3);
    //echo print_r($list3);
    //echo "<br>".print_r($data3);
 //   echo "<br>".print_r($list3[0]->Id);
    if (isset($list3[0]->Id)){
        echo "<h1 class='text-center text-danger'>Người dùng đã có quyền này</h1>";
    }
    else {
        PhanQuyen::add($nv,$quyen);
    }
}

?>

