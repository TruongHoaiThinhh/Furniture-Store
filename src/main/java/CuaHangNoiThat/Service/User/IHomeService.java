package CuaHangNoiThat.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CuaHangNoiThat.Dto.ProductsDto;
import CuaHangNoiThat.Entity.Categorys;
import CuaHangNoiThat.Entity.Menus;
import CuaHangNoiThat.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<Menus> GetDataMenus();
	public List<ProductsDto> GetDataProducts();
}
