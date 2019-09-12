package netonemusic.com.service.impl;

import netonemusic.com.entity.UserwithSinger;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import netonemusic.com.entity.Singer;
import netonemusic.com.dao.SingerMapper;
import netonemusic.com.service.SingerService;

import java.util.List;

@Service
public class SingerServiceImpl implements SingerService {

    @Resource
    private SingerMapper singerMapper;

    @Override
    public int deleteByPrimaryKey(Integer singerId) {
        return singerMapper.deleteByPrimaryKey(singerId);
    }

    @Override
    public int insert(Singer record) {
        return singerMapper.insert(record);
    }

    @Override
    public int insertSelective(Singer record) {
        return singerMapper.insertSelective(record);
    }

    @Override
    public Singer selectByPrimaryKey(Integer singerId) {
        return singerMapper.selectByPrimaryKey(singerId);
    }

    @Override
    public int updateByPrimaryKeySelective(Singer record) {
        return singerMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Singer record) {
        return singerMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Singer> findAll() {
        return singerMapper.findAll();
    }

    @Override
    public List<Singer> findFirst10OrderByAccessCountDesc() {
        return singerMapper.findFirst10OrderByAccessCountDesc();
    }

    @Override
    public List<Singer> findAllBySingerStatus(Integer singerStatus) {
        return singerMapper.findAllBySingerStatus(singerStatus);
    }

    @Override
    public List<Singer> searchSinger(String Keyword) {
        return singerMapper.searchSinger(Keyword);
    }

    @Override
    public List<Singer> findMySinger(String userId) {
        return singerMapper.findMySinger(userId);
    }

    @Override
    public int followSinger(UserwithSinger userwithSinger) {
        return singerMapper.followSinger(userwithSinger);
    }

    @Override
    public List<UserwithSinger> findBySingerAndUserId(String userId, Integer singerId) {
        return singerMapper.findBySingerAndUserId(userId, singerId);
    }

    @Override
    public List<Singer> findBySingerTypeOrderByAccessCountDesc(String singerType) {
        return singerMapper.findBySingerTypeOrderByAccessCountDesc(singerType);
    }

//    @Override
//    public List<Singer> findBySingerStatusOrderByAccessCountDesc(Integer singerStatus) {
//        return findBySingerStatusOrderByAccessCountDesc(singerStatus);
//    }


}



