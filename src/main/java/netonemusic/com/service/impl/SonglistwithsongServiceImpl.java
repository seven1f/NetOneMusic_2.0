package netonemusic.com.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import netonemusic.com.entity.Songlistwithsong;
import netonemusic.com.dao.SonglistwithsongMapper;
import netonemusic.com.service.SonglistwithsongService;

import java.util.List;

@Service
public class SonglistwithsongServiceImpl implements SonglistwithsongService{

    @Resource
    private SonglistwithsongMapper songlistwithsongMapper;

    @Override
    public int deleteByPrimaryKey(Integer slSongId) {
        return songlistwithsongMapper.deleteByPrimaryKey(slSongId);
    }

    @Override
    public int insert(Songlistwithsong record) {
        return songlistwithsongMapper.insert(record);
    }

    @Override
    public int insertSelective(Songlistwithsong record) {
        return songlistwithsongMapper.insertSelective(record);
    }

    @Override
    public Songlistwithsong selectByPrimaryKey(Integer slSongId) {
        return songlistwithsongMapper.selectByPrimaryKey(slSongId);
    }

    @Override
    public int updateByPrimaryKeySelective(Songlistwithsong record) {
        return songlistwithsongMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Songlistwithsong record) {
        return songlistwithsongMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Songlistwithsong> selectBySonglistIdAndSongId(Integer songlistId, Integer songId) {
        return songlistwithsongMapper.selectBySonglistIdAndSongId(songlistId,songId);
    }


}
