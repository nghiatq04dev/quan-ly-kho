<?php
require_once ('controllers/base_controller.php');
require_once ('models/sanpham.php');
require_once ('models/doanhthu.php');

class SanPhamController extends BaseController
{
    private $doanhthuModel;
    function __construct()
    {
        $this->doanhthuModel = new DoanhThu();
        $this->folder='sanpham';
    }
    public function index()
    {
        $sanpham = SanPham::all();
        $data =array('sanpham'=>$sanpham);
        $this->render('index',$data);
    }
    public function insert()
    {
        $this->render('insert');
    }
    public function edit()
    {
        $sanpham = SanPham::find($_GET['id']);
        $data = array('sanpham'=>$sanpham);
        $this->render('edit', $data);
    }






















    
    public function doanhthu()
    {
        $tongSoDonMua = $this->doanhthuModel->TongSoDonMua();
        $tongSoDonBan = $this->doanhthuModel->TongSoDonBan();
        $tongSoKhachHang = $this->doanhthuModel->TongSoKhachHang();
        $tongSoNhaCungCap = $this->doanhthuModel->TongSoNhaCungCap();
        $tongTienDonBan = $this->doanhthuModel->TongTienDonBan();

        $data = array(
            'tongSoDonMua' => $tongSoDonMua,
            'tongSoDonBan' => $tongSoDonBan,
            'tongSoKhachHang' => $tongSoKhachHang,
            'tongSoNhaCungCap' => $tongSoNhaCungCap,
            'tongTienDonBan' => $tongTienDonBan
        );

        $this->render('doanhthu', $data);
        return $data;
    }
}