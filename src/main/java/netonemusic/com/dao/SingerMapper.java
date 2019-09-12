package netonemusic.com.dao;

import netonemusic.com.entity.Singer;import netonemusic.com.entity.UserwithSinger;import org.apache.ibatis.annotations.Param;import java.util.List;

public interface SingerMapper {
    int deleteByPrimaryKey(Integer singerId);

    int insert(Singer record);

    int insertSelective(Singer record);

    Singer selectByPrimaryKey(Integer singerId);

    int updateByPrimaryKeySelective(Singer record);

    int updateByPrimaryKey(Singer record);

    List<Singer> findAll();

    List<Singer> findFirst10OrderByAccessCountDesc();

    List<Singer> findAllBySingerStatus(@Param("singerStatus") Integer singerStatus);//查询入驻歌手

    List<Singer> searchSinger(String Keyword);//查询页面歌手信息

    List<Singer> findMySinger(String userId);//查询我订阅的歌手

    int followSinger(UserwithSinger userwithSinger);//关注歌手

    List<UserwithSinger> findBySingerAndUserId(@Param("userId") String userId, @Param("singerId") Integer singerId);//查看是否订阅歌手

    List<Singer> findBySingerTypeOrderByAccessCountDesc(@Param("singerType")String singerType);//查看类型歌手singer2


}