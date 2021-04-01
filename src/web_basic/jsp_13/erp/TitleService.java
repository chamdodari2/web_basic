package web_basic.jsp_13.erp;
//스윙에서 했던 방법 말고 이렇게 연결하는 방법도 있당
import java.sql.Connection;
import java.util.List;

import web_basic.jsp_13.JndiDS;

public class TitleService {
	
	private Connection con = JndiDS.getConnection();
	private TitleDaoImpl dao = TitleDaoImpl.getInstance();
	
	public TitleService() {
		dao.setCon(con);  //이렇게 해서 JndiDS에 보내준당
	}

	public List<Title> showTitles(){
		return dao.selectTitleByAll();
	}
	
	public void addTitle(Title title) {
		dao.insertTitle(title);
	}
}
