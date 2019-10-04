package zhao.service;

import java.util.List;

import zhao.pojo.Sfile;
import zhao.pojo.SfileExample;

public interface SfileService {

	List<Sfile> selectByExample(SfileExample example);

	int setFilePath(Sfile sfile);
	
	
	int updateDawnloadCount(Sfile sfile);
	
	Sfile selectByPrimaryKey(int id);

;
}
