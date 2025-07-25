<?php
class DonViTinh{

    public $Id;
    public $DonVi;

    function __construct($Id,$DonVi)
    {
        $this->Id = $Id;
        $this->DonVi= $DonVi;
    }
    static function all()
    {
        $list = [];
        $db =DB::getInstance();
        $reg = $db->query('select *from donvitinh');
        foreach ($reg->fetchAll() as $item){
            $list[] =new DonViTinh($item['Id'],$item['DonVi']);
        }
        return $list;
    }
    static function find($id)
    {
        $db = DB::getInstance();
        $req = $db->prepare('SELECT * FROM donvitinh WHERE Id = :id');
        $req->execute(array('id' => $id));

        $item = $req->fetch();
        if (isset($item['Id'])) {
            return new DonViTinh($item['Id'],$item['DonVi']);
        }
        return null;
    }
    static function add($ten)
    {
        $db =DB::getInstance();
        $reg =$db->query('INSERT INTO donvitinh(DonVi) VALUES ("'.$ten.'")');
        header('location:index.php?controller=donvitinh&action=index');
    }
    static function  update($id,$donvi)
    {
        $db = DB::getInstance();
        $reg =$db->query('UPDATE donvitinh SET DonVi ="'.$donvi.'" WHERE Id='.$id);
        header('location:index.php?controller=donvitinh&action=index');
    }
    static function delete($id)
    {
        $db =DB::getInstance();
        $reg =$db->query('DELETE FROM donvitinh WHERE Id='.$id);
        header('location:index.php?controller=donvitinh&action=index');
    }
}
