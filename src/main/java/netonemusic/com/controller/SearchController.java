package netonemusic.com.controller;

import netonemusic.com.entity.*;
import netonemusic.com.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SearchController {

    @Autowired
    private SingerService singerService;
    @Autowired
    private SongService songService;
    @Autowired
    private UserService userService;
    @Autowired
    private CdService cdService;
    @Autowired
    private SonglistService songlistService;


    @RequestMapping("/search")//搜索模块
    public String search(@RequestParam("Keyword")String Keyword, HttpServletRequest request, ModelMap modelMap){
        System.out.println(1);
        System.out.println(Keyword);
        List<Song> songs=songService.searchSong(Keyword);
        List<Singer> singers=singerService.searchSinger(Keyword);
        List<Songlist> songlists=songlistService.searchSonglist(Keyword);
        List<User> users=userService.searchUser(Keyword);

        List<SongVo> songVos=new ArrayList<>();
        for(Song song:songs){
            SongVo sv=new SongVo();
            String cdName=cdService.selectByPrimaryKey(song.getCdId()).getCdName();
            String singerName=singerService.selectByPrimaryKey(song.getSingerId()).getSingerName();
            sv.setSong(song);sv.setCdName(cdName);sv.setSingerName(singerName);
            songVos.add(sv);
        }

        List<SonglistVo> songlistVos=new ArrayList<>();
        for(Songlist songlist:songlists){
            SonglistVo songlistVo=new SonglistVo();
            songlistVo.setSonglist(songlist);
            songlistVo.setUserName(userService.selectByPrimaryKey(songlist.getUserId()).getUserName());
            songlistVos.add(songlistVo);
        }

        modelMap.addAttribute("Keyword",Keyword);
        request.getSession().setAttribute("searchSong",songVos);//搜索的歌曲
        request.getSession().setAttribute("searchSinger",singers);//搜索的歌手
        request.getSession().setAttribute("searchSonglist",songlistVos);//搜索的歌单
        request.getSession().setAttribute("searchUser",users);//搜索的用户
        System.out.println(singers);
        System.out.println(songlistVos);
        System.out.println(users);

        return "search";
    }
}
