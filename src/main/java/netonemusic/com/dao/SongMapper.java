package netonemusic.com.dao;

import netonemusic.com.entity.Song;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SongMapper {
    int deleteByPrimaryKey(Integer songId);

    int insert(Song record);

    int insertSelective(Song record);

    Song selectByPrimaryKey(Integer songId);

    int updateByPrimaryKeySelective(Song record);

    int updateByPrimaryKey(Song record);

    List<Song> findListSong(Integer songlistId);//歌单歌曲

    List<Song> findFirst54rderByPlayCountDesc();//假排行榜

    List<Song> findMySongRank(String userId);//个人听歌排行

    List<Song> findSingerSong(Integer singerId);//歌手热门50首

    List<Song> searchSong(String Keyword);//查询页面单曲

    int deleteBySonglistIdAndSongId(@Param("songlistId") Integer songlistId,@Param("songId") Integer songId);//删除收藏歌单内的歌曲
}