package vn.iotstar.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.iotstar.entity.Product;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductModel {
	private Integer id;	
    private String name;
    private String desciption;
	private String desciption1;
	private String desciption2;
    private Double price;
    private Double promotionaprice;
    private Integer quantity;
    private Integer sold;
    private Boolean isselling;
    private String listimage;
    private MultipartFile listImageFile;
	private String listimage1;
	private MultipartFile listImageFile1;
	private String listimage2;
	private MultipartFile listImageFile2;
    private Integer categoryid;
    private Integer storeid;
    private Integer rating =3;
    private String trademark;
    private Date createat;
    private Date updateat;
    private int sldanhgia;
    
    private Boolean isEdit = false;
    
}
