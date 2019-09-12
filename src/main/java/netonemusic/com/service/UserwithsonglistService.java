package netonemusic.com.service;

import netonemusic.com.entity.Userwithsonglist;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserwithsonglistService{


    int deleteByPrimaryKey(Integer userSonglistId);

    int insert(Userwithsonglist record);

    int insertSelective(Userwithsonglist record);

    Userwithsonglist selectByPrimaryKey(Integer userSonglistId);

    int updateByPrimaryKeySelective(Userwithsonglist record);

    int updateByPrimaryKey(Userwithsonglist record);

    List<Userwithsonglist> finByUserIdAndSonglistId(Userwithsonglist userwithsonglist);//查询是否收藏歌单

    int deleteByUserIdAndSonglistId(String userId,Integer songlistId);//删除收藏的歌单

}
