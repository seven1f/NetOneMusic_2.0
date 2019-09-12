package netonemusic.com.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import netonemusic.com.entity.Song;
import netonemusic.com.dao.SongMapper;
import netonemusic.com.service.SongService;

import java.util.List;

@Service
public class SongServiceImpl implements SongService {

    @Resource
    private SongMapper songMapper;

    @Override
    public int deleteByPrimaryKey(Integer songId) {
        return songMapper.deleteByPrimaryKey(songId);
    }

    @Override
    public int insert(Song record) {
        return songMapper.insert(record);
    }

    @Override
    public int insertSelective(Song record) {
        return songMapper.insertSelective(record);
    }

    @Override
    public Song selectByPrimaryKey(Integer songId) {
        return songMapper.selectByPrimaryKey(songId);
    }

    @Override
    public int updateByPrimaryKeySelective(Song record) {
        return songMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Song record) {
        return songMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Song> findListSong(Integer songlistId) {
        return songMapper.findListSong(songlistId);
    }

    @Override
    public List<Song> findFirst54rderByPlayCountDesc() {
        return songMapper.findFirst54rderByPlayCountDesc();
    }

    @Override
    public List<Song> findMySongRank(String userId) {
        return songMapper.findMySongRank(userId);
    }

    @Override
    public List<Song> findSingerSong(Integer singerId) {
        return songMapper.findSingerSong(singerId);
    }

    @Override
    public List<Song> searchSong(String Keyword) {
        return songMapper.searchSong(Keyword);
    }

    @Override
    public int deleteBySonglistIdAndSongId(Integer songlistId, Integer songId) {
        return songMapper.deleteBySonglistIdAndSongId(songlistId,songId);
    }

}



