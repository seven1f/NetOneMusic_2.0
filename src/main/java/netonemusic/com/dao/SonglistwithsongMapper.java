package netonemusic.com.dao;
import java.util.List;

import netonemusic.com.entity.Songlistwithsong;
import org.apache.ibatis.annotations.Param;

public interface SonglistwithsongMapper {
    int deleteByPrimaryKey(Integer slSongId);

    int insert(Songlistwithsong record);

    int insertSelective(Songlistwithsong record);

    Songlistwithsong selectByPrimaryKey(Integer slSongId);

    int updateByPrimaryKeySelective(Songlistwithsong record);

    int updateByPrimaryKey(Songlistwithsong record);

    //查询歌单与歌曲关系（歌单中是否存在某歌曲）
     List<Songlistwithsong> selectBySonglistIdAndSongId(@Param("songlistId")Integer songlistId,@Param("songId")Integer songId);




}