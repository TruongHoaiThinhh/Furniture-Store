package CuaHangNoiThat.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CuaHangNoiThat.Dao.CategorysDao;
import CuaHangNoiThat.Dao.MenuDao;
import CuaHangNoiThat.Dao.ProductsDao;
import CuaHangNoiThat.Dao.SlidesDao;
import CuaHangNoiThat.Dto.ProductsDto;
import CuaHangNoiThat.Entity.Categorys;
import CuaHangNoiThat.Entity.Menus;
import CuaHangNoiThat.Entity.Slides;


@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private MenuDao menusDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}
	public List<Categorys> GetDataCategorys() {
		return categorysDao.GetDataCategorys();
	}
	
	public List<Menus> GetDataMenus() {
		return menusDao.GetDataMenus();
	}
	
	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		//listProducts.get(0).getId_color();
		return listProducts;
	}

}
