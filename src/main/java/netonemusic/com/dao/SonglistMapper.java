package netonemusic.com.dao;
import org.apache.ibatis.annotations.Param;

import netonemusic.com.entity.Songlist;import java.util.List;

public interface SonglistMapper {
    int deleteByPrimaryKey(Integer songlistId);

    int insert(Songlist record);

    int insertSelective(Songlist record);

    Songlist selectByPrimaryKey(Integer songlistId);

    int updateByPrimaryKeySelective(Songlist record);

    int updateByPrimaryKey(Songlist record);

    List<Songlist> findAll();

    List<Songlist> findAllByUserId(@Param("userId")String userId);//某人创建的歌单

    List<Songlist> findAllCollection(@Param("userId")String userId);//某人收藏的歌单

    List<Songlist> searchSonglist(String Keyword);//查询页面歌单信息

    Songlist findBySonglistNameAndUserId(@Param("songlistName")String songlistName,@Param("userId")String userId);//查询我喜欢的音乐

    int deleteBySonglistIdAndUserId(@Param("songlistId")Integer songlistId,@Param("userId")String userId);//刪除個人創建歌單

    int deleteMyCollectionBySonglistIdAndUserId(@Param("songlistId")Integer songlistId,@Param("userId")String userId);//删除收藏的歌单


}