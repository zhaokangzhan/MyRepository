package zhao.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zhao.pojo.Sfile;
import zhao.pojo.SfileExample;

public interface SfileMapper {
    int countByExample(SfileExample example);

    int deleteByExample(SfileExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Sfile record);

    int insertSelective(Sfile record);

    List<Sfile> selectByExample(SfileExample example);

    Sfile selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Sfile record, @Param("example") SfileExample example);

    int updateByExample(@Param("record") Sfile record, @Param("example") SfileExample example);

    int updateByPrimaryKeySelective(Sfile record);

    int updateByPrimaryKey(Sfile record);
}