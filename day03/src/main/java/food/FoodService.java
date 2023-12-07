package food;

import java.util.ArrayList;
import java.util.List;

public class FoodService {
	
	private ArrayList<FoodDTO> list = new ArrayList<>();
	
	// FoodDTO객체를 list에 담는 함수
	public int add(FoodDTO dto) {
		int row = 0;
		row += list.add(dto) ? 1 : 0;
		return row;
	}
	
	// 리스트를 반환하는 함수
	public List<FoodDTO> getList() {
		return list;
	}
}
