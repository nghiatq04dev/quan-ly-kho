<?php 
class DoanhThu {
    public function TongSoDonMua(){
        $db = DB::getInstance();
        $stmt = $db->query("SELECT COUNT(*) AS total FROM donmua");
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $total = $result['total'];
        return $total;
    }
    public function TongSoDonBan(){
        $db = DB::getInstance();
        $stmt = $db->query("SELECT COUNT(*) AS total FROM donban");
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $total = $result['total'];
        return $total;
    }
    public function TongSoKhachHang(){
        $db = DB::getInstance();
        $stmt = $db->query("SELECT COUNT(*) AS total FROM khachhang");
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $total = $result['total'];
        return $total;
    }
    public function TongSoNhaCungCap(){
        $db = DB::getInstance();
        $stmt = $db->query("SELECT COUNT(*) AS total FROM nhacungcap");
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $total = $result['total'];
        return $total;
    }
    public function TongTienDonBan(){
        $db = DB::getInstance();
        $stmt = $db->query("SELECT SUM(Tong) AS total FROM donban");
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $total = $result['total'];
        return $total;
    }
}
