package netonemusic.com.service;

import netonemusic.com.entity.Cd;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CdService{


    int deleteByPrimaryKey(Integer cdId);

    int insert(Cd record);

    int insertSelective(Cd record);

    Cd selectByPrimaryKey(Integer cdId);

    int updateByPrimaryKeySelective(Cd record);

    int updateByPrimaryKey(Cd record);

    List<Cd> findAllBySingerId(Integer singerId);//歌手专辑
}
