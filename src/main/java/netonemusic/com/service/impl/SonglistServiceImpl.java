package netonemusic.com.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import netonemusic.com.entity.Songlist;
import netonemusic.com.dao.SonglistMapper;
import netonemusic.com.service.SonglistService;

import java.util.List;

@Service
public class SonglistServiceImpl implements SonglistService {

    @Resource
    private SonglistMapper songlistMapper;

    @Override
    public int deleteByPrimaryKey(Integer songlistId) {
        return songlistMapper.deleteByPrimaryKey(songlistId);
    }

    @Override
    public int insert(Songlist record) {
        return songlistMapper.insert(record);
    }

    @Override
    public int insertSelective(Songlist record) {
        return songlistMapper.insertSelective(record);
    }

    @Override
    public Songlist selectByPrimaryKey(Integer songlistId) {
        return songlistMapper.selectByPrimaryKey(songlistId);
    }

    @Override
    public int updateByPrimaryKeySelective(Songlist record) {
        return songlistMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Songlist record) {
        return songlistMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Songlist> findAll() {
        return songlistMapper.findAll();
    }

    @Override
    public List<Songlist> findAllByUserId(String userId){
        return songlistMapper.findAllByUserId(userId);
    }//某人创建的歌单

    @Override
    public List<Songlist> findAllCollection(String userId){
        return songlistMapper.findAllCollection(userId);
    }//某人收藏的歌单

    @Override
    public List<Songlist> searchSonglist(String Keyword) {
        return songlistMapper.searchSonglist(Keyword);
    }

    @Override
    public Songlist findBySonglistNameAndUserId(String songlistName, String userId) {
        return songlistMapper.findBySonglistNameAndUserId(songlistName,userId);
    }

    @Override
    public int deleteBySonglistIdAndUserId(Integer songlistId, String userId) {
        return songlistMapper.deleteBySonglistIdAndUserId(songlistId,userId);
    }

    @Override
    public int deleteMyCollectionBySonglistIdAndUserId(Integer songlistId, String userId) {
        return deleteMyCollectionBySonglistIdAndUserId(songlistId,userId);
    }


}



