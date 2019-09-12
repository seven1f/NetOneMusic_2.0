package netonemusic.com.dao;
import org.apache.ibatis.annotations.Param;

import netonemusic.com.entity.Userwithsonglist;

import java.util.List;

public interface UserwithsonglistMapper {
    int deleteByPrimaryKey(Integer userSonglistId);

    int insert(Userwithsonglist record);

    int insertSelective(Userwithsonglist record);

    Userwithsonglist selectByPrimaryKey(Integer userSonglistId);

    int updateByPrimaryKeySelective(Userwithsonglist record);

    int updateByPrimaryKey(Userwithsonglist record);

    List<Userwithsonglist> finByUserIdAndSonglistId(Userwithsonglist userwithsonglist);//查询是否收藏歌单

    int deleteByUserIdAndSonglistId(@Param("userId")String userId,@Param("songlistId")Integer songlistId);//删除收藏的歌单


}