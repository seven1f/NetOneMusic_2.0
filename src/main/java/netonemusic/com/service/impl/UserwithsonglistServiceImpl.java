package netonemusic.com.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import netonemusic.com.entity.Userwithsonglist;
import netonemusic.com.dao.UserwithsonglistMapper;
import netonemusic.com.service.UserwithsonglistService;

import java.util.List;

@Service
public class UserwithsonglistServiceImpl implements UserwithsonglistService{

    @Resource
    private UserwithsonglistMapper userwithsonglistMapper;

    @Override
    public int deleteByPrimaryKey(Integer userSonglistId) {
        return userwithsonglistMapper.deleteByPrimaryKey(userSonglistId);
    }

    @Override
    public int insert(Userwithsonglist record) {
        return userwithsonglistMapper.insert(record);
    }

    @Override
    public int insertSelective(Userwithsonglist record) {
        return userwithsonglistMapper.insertSelective(record);
    }

    @Override
    public Userwithsonglist selectByPrimaryKey(Integer userSonglistId) {
        return userwithsonglistMapper.selectByPrimaryKey(userSonglistId);
    }

    @Override
    public int updateByPrimaryKeySelective(Userwithsonglist record) {
        return userwithsonglistMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Userwithsonglist record) {
        return userwithsonglistMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Userwithsonglist> finByUserIdAndSonglistId(Userwithsonglist userwithsonglist) {
        return userwithsonglistMapper.finByUserIdAndSonglistId(userwithsonglist);
    }

    @Override
    public int deleteByUserIdAndSonglistId(String userId, Integer songlistId) {
        return userwithsonglistMapper.deleteByUserIdAndSonglistId(userId,songlistId);
    }

}
