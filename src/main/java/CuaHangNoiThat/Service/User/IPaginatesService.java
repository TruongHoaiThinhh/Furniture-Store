package CuaHangNoiThat.Service.User;

import org.springframework.stereotype.Service;

import CuaHangNoiThat.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
	
}
