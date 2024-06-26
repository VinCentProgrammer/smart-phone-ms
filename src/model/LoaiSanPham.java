package model;

public class LoaiSanPham {

    private String maLoai, tenLoai;

    public LoaiSanPham() {
        ;
    }

    public LoaiSanPham(String maLoai, String tenLoai) {
        this.maLoai = maLoai;
        this.tenLoai = tenLoai;
    }

    public LoaiSanPham(LoaiSanPham loai) {
        this.maLoai = loai.getMaLoai();
        this.tenLoai = loai.getTenLoai();
    }

    public String getMaLoai() {
        return maLoai;
    }

    public void setMaLoai(String maLoai) {
        this.maLoai = maLoai;
    }

    public String getTenLoai() {
        return tenLoai;
    }

    public void setTenLoai(String tenLoai) {
        this.tenLoai = tenLoai;
    }

}
