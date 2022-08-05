package CuaHangNoiThat.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CuaHangNoiThat.Controller.User.BaseController;

@Controller
public class AdminController extends BaseController{

	@RequestMapping(value = "admindangnhap")
	public ModelAndView Index() {
		_mvShare.setViewName("admin/admin");
		return _mvShare;
	}
	
	}


