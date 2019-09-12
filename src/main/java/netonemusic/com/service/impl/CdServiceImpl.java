package netonemusic.com.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import netonemusic.com.entity.Cd;
import netonemusic.com.dao.CdMapper;
import netonemusic.com.service.CdService;

import java.util.List;

@Service
public class CdServiceImpl implements CdService{

    @Resource
    private CdMapper cdMapper;

    @Override
    public int deleteByPrimaryKey(Integer cdId) {
        return cdMapper.deleteByPrimaryKey(cdId);
    }

    @Override
    public int insert(Cd record) {
        return cdMapper.insert(record);
    }

    @Override
    public int insertSelective(Cd record) {
        return cdMapper.insertSelective(record);
    }

    @Override
    public Cd selectByPrimaryKey(Integer cdId) {
        return cdMapper.selectByPrimaryKey(cdId);
    }

    @Override
    public int updateByPrimaryKeySelective(Cd record) {
        return cdMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Cd record) {
        return cdMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Cd> findAllBySingerId(Integer singerId) {
        return cdMapper.findAllBySingerId(singerId);
    }

}
