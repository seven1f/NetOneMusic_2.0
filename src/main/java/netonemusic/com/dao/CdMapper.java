package netonemusic.com.dao;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import netonemusic.com.entity.Cd;

public interface CdMapper {
    int deleteByPrimaryKey(Integer cdId);

    int insert(Cd record);

    int insertSelective(Cd record);

    Cd selectByPrimaryKey(Integer cdId);

    int updateByPrimaryKeySelective(Cd record);

    int updateByPrimaryKey(Cd record);

    List<Cd> findAllBySingerId(@Param("singerId")Integer singerId);//歌手专辑

}