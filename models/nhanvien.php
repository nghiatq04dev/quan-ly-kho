<?php
class NhanVien
{
    public $Id;
    public $TenNV;
    public $DienThoai;
    public $Email;
    public $DiaChi;
    public $TaiKhoan;
    public $MatKhau;
    public $IsActive;


    function  __construct($Id,$TenNV,$DienThoai,$Email,$DiaChi,$TaiKhoan,$MatKhau,$IsActive)
    {
        $this->Id = $Id;
        $this->TenNV = $TenNV;
        $this->DienThoai=$DienThoai;
        $this->Email= $Email;
        $this->DiaChi=$DiaChi;
        $this->TaiKhoan=$TaiKhoan;
        $this->MatKhau=$MatKhau;
        $this->IsActive=$IsActive;
    }
    static function all()
    {
        $list = [];
        $db =DB::getInstance();
        $reg = $db->query('select *from nhanvien');
        foreach ($reg->fetchAll() as $item){
            $list[] =new NhanVien($item['Id'],$item['TenNV'],$item['DienThoai'],$item['Email'],$item['DiaChi'],$item['TaiKhoan'],$item['MatKhau'],$item['IsActive']);
        }
        return $list;
    }
    static function find($id)
    {
        $db = DB::getInstance();
        $req = $db->prepare('SELECT * FROM nhanvien WHERE Id = :id');
        $req->execute(array('id' => $id));

        $item = $req->fetch();
        if (isset($item['Id'])) {
            return new NhanVien($item['Id'],$item['TenNV'],$item['DienThoai'],$item['Email'],$item['DiaChi'],$item['TaiKhoan'],$item['MatKhau'],$item['IsActive']);
        }
        return null;
    }
    static function add($ten,$dienthoai,$email,$diachi,$taikhoan,$matkhau,$isactive)
    {
        $matkhau=md5($matkhau);
        $db =DB::getInstance();
        $reg =$db->query('INSERT INTO nhanvien(TenNV,DienThoai,Email,DiaChi,TaiKhoan,MatKhau,IsActive) VALUES ("'.$ten.'","'.$dienthoai.'","'.$email.'","'.$diachi.'","'.$taikhoan.'","'.$matkhau.'","'.$isactive.'")');
        header('location:index.php?controller=nhanvien&action=index');
    }
    static function update($id,$ten,$dienthoai,$email,$diachi,$isactive)
    {
       // $matkhau=md5($matkhau);
        $db =DB::getInstance();
        $reg =$db->query('UPDATE nhanvien SET TenNV ="'.$ten.'",DienThoai="'.$dienthoai.'",Email="'.$email.'",DiaChi="'.$diachi.'",IsActive="'.$isactive.'" WHERE Id='.$id);
        header('location:index.php?controller=nhanvien&action=index');
    }
    static function delete($id)
    {
        $db =DB::getInstance();
        $reg =$db->query('DELETE FROM nhanvien WHERE Id='.$id);
        header('location:index.php?controller=nhanvien&action=index');
    }
    static function dangnhap($taikhoan, $matkhau)
    {
        $db = DB::getInstance();
        $matkhau_hash = md5($matkhau); // Tạm thời giữ lại MD5, nhưng tốt nhất là sử dụng password_hash trong thực tế.
        
        $req = $db->prepare('SELECT * FROM nhanvien WHERE TaiKhoan = :taikhoan AND MatKhau = :matkhau');
        $req->execute(array(':taikhoan' => $taikhoan, ':matkhau' => $matkhau_hash));
        
        $item = $req->fetch();
        
        if ($item) {
            return new NhanVien($item['Id'], $item['TenNV'], $item['DienThoai'], $item['Email'], $item['DiaChi'], $item['TaiKhoan'], $item['MatKhau'], $item['IsActive']);
        }
        
        return null;
    }

}
