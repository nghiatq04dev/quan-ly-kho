<style>
    .doanhthuMain h3{
        text-align: center;
        color: #5a5c69;
    }
    .doanhthu{
        display: grid;
        grid-template-columns: repeat(5,1fr);
        background-color: white;
        padding: 20px;
        margin-bottom: 20px;
    }
    .doanhthu .box-doanhthu{
        padding: 10px;
    }
    .doanhthu p{
        font-weight: bold;
    }
</style>
<div class="doanhthuMain">
<h3>Thống kê</h3>
<div class="card shadow mb-4">
    <div class="card-header py-3"><h6 class="m-0 font-weight-bold text-primary">Tổng thống kê</h6></div>
</div>
<div class="doanhthu">
    <div class="box-doanhthu">
        <p>Đơn bán</p>
        <span><?= $data['tongSoDonBan'] ?> đơn</span>
    </div>
    <div class="box-doanhthu">
        <p>Đơn mua</p>
        <span><?= $data['tongSoDonMua'] ?> đơn</span>
    </div>
    <div class="box-doanhthu">
        <p>Khách hàng</p>
        <span><?= $data['tongSoKhachHang'] ?> khách hàng</span>
    </div>
    <div class="box-doanhthu">
        <p>Nhà cung cấp</p>
        <span><?= $data['tongSoNhaCungCap'] ?> nhà cung cấp</span>
    </div>
    <div class="box-doanhthu">
        <p>Doanh thu</p>
        <span><?= number_format($data['tongTienDonBan']) ?> VNĐ</span>
    </div>
</div>
</div>