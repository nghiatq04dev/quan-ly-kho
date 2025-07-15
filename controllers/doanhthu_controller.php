<?php 
require_once ('controllers/base_controller.php');
require_once ('models/doanhthu.php');

class DoanhThuController extends BaseController
{
    private $doanhthuModel;
    function  __construct()
    {
        $this->folder = 'doanhthu';
        $this->doanhthuModel = new DoanhThu();
    }

    public function index()
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

        $this->render('index', $data);
    }
}

// class Doanhthu{
//     private $doanhthuModel;
//     public function __construct(){
//         $this->doanhthuModel = new DoanhThu();
//     }
//     public function TongSoDonMua(){
//         return $this->doanhthuModel->TongSoDonMua();
//     }
//     public function TongSoDonBan(){
//         return $this->doanhthuModel->TongSoDonBan();
//     }
//     public function TongSoKhachHang(){
//         return $this->doanhthuModel->TongSoKhachHang();
//     }
//     public function TongSoNhaCungCap(){
//         return $this->doanhthuModel->TongSoNhaCungCap();
//     }
//     public function TongTienDonBan(){
//         return $this->doanhthuModel->TongTienDonBan();
//     }
// }