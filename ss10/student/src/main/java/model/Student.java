package model;

public class Student {
    private int ma_hoc_vien;
    private String ten_hoc_vien;
    private int gioi_tinh;
    private double diem;

    public Student() {
    }

    public Student(int ma_hoc_vien, String ten_hoc_vien, int gioi_tinh, double diem) {
        this.ma_hoc_vien = ma_hoc_vien;
        this.ten_hoc_vien = ten_hoc_vien;
        this.gioi_tinh = gioi_tinh;
        this.diem = diem;
    }

    public int getMa_hoc_vien() {
        return ma_hoc_vien;
    }

    public void setMa_hoc_vien(int ma_hoc_vien) {
        this.ma_hoc_vien = ma_hoc_vien;
    }

    public String getTen_hoc_vien() {
        return ten_hoc_vien;
    }

    public void setTen_hoc_vien(String ten_hoc_vien) {
        this.ten_hoc_vien=ten_hoc_vien;
    }

    public int getGioi_tinh() {
        return gioi_tinh;
    }

    public void setGioi_tinh(int gioi_tinh) {
        this.gioi_tinh = gioi_tinh;
    }

    public double getDiem() {
        return diem;
    }

    public void setDiem(double diem) {
        this.diem = diem;
    }
}
