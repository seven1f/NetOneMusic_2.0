package netonemusic.com.service;

import netonemusic.com.entity.Songlistwithsong;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SonglistwithsongService{


    int deleteByPrimaryKey(Integer slSongId);

    int insert(Songlistwithsong record);

    int insertSelective(Songlistwithsong record);

    Songlistwithsong selectByPrimaryKey(Integer slSongId);

    int updateByPrimaryKeySelective(Songlistwithsong record);

    int updateByPrimaryKey(Songlistwithsong record);

    //查询歌单与歌曲关系（歌单中是否存在某歌曲）
    List<Songlistwithsong> selectBySonglistIdAndSongId(Integer songlistId,Integer songId);

}
