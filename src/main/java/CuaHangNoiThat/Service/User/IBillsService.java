package CuaHangNoiThat.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import CuaHangNoiThat.Dto.CartDto;
import CuaHangNoiThat.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
