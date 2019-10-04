package zhao.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhao.mapper.SfileMapper;
import zhao.pojo.Sfile;
import zhao.pojo.SfileExample;

@Service
public class SfileServiceImpl implements SfileService {

	@Autowired
	private SfileMapper sfileMapper;
	@Override
	public List<Sfile> selectByExample(SfileExample example) {
		// TODO Auto-generated method stub
		return sfileMapper.selectByExample(example);
	}
	@Override
	public int setFilePath(Sfile sfile) {
		// TODO Auto-generated method stub
		return  sfileMapper.insertSelective(sfile);
	}
	
	@Override
	public int updateDawnloadCount(Sfile sfile) {
		// TODO Auto-generated method stub
		return sfileMapper.updateByPrimaryKey(sfile);
	}
	@Override
	public Sfile selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return sfileMapper.selectByPrimaryKey(id);
	}
	
	
	
}
