package model;

public class SoLuongDaBan {
	  private int productID;
	  private int soLuongBanRa;

    public SoLuongDaBan() {
    }

    public SoLuongDaBan(int productID, int soLuongBanRa) {
        this.productID = productID;
        this.soLuongBanRa = soLuongBanRa;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getSoLuongBanRa() {
        return soLuongBanRa;
    }

    public void setSoLuongBanRa(int soLuongBanRa) {
        this.soLuongBanRa = soLuongBanRa;
    }

    @Override
    public String toString() {
        return "SoLuongDaBan{" + "productID=" + productID + ", soLuongBanRa=" + soLuongBanRa + '}';
    }
          
          
	
}
