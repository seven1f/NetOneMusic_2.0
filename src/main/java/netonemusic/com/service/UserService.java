package netonemusic.com.service;

import netonemusic.com.entity.User;

import java.util.List;

public interface UserService{

    int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> searchUser(String Keyword);//查询页面用户信息
}
