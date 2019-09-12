package netonemusic.com.controller;

import netonemusic.com.entity.Song;
import netonemusic.com.entity.SongVo;
import netonemusic.com.entity.Songlist;
import netonemusic.com.entity.SonglistVo;
import netonemusic.com.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SongListController {

    @Autowired
    private SonglistService songlistService;
    @Autowired
    private SongService songService;
    @Autowired
    private CdService cdService;
    @Autowired
    private SingerService singerService;
    @Autowired
    private UserService userService;

    @RequestMapping("/songlist")//跳转歌单展示页面
    public String songlist(HttpServletRequest request){
        List<Songlist> songlists=songlistService.findAll();
        //将每个用户的个人喜欢歌单排除
        List<Songlist> songlists1=new ArrayList<>();
        for(Songlist songlist:songlists){
            if(songlist.getSonglistName().equals("我喜欢的音乐")){
                continue;
            }else {
                songlists1.add(songlist);
            }
        }
        request.getSession().setAttribute("songlists",songlists1);
        return "musiclist";
    }

    @RequestMapping("/singlesonglist")//跳转单个歌单页面
    public String singlesonglist(@Param("songlistId") Integer songlistId,HttpServletRequest request){
        System.out.println("songistid="+songlistId);
        Songlist songlist=songlistService.selectByPrimaryKey(songlistId);
        //歌单的基本信息
        SonglistVo songlistVo=new SonglistVo();
        //设置前端展示对象songlistVo
        songlistVo.setSonglist(songlist);
        songlistVo.setUserAvatar((userService.selectByPrimaryKey(songlist.getUserId())).getUserAvatar());
        songlistVo.setUserName((userService.selectByPrimaryKey(songlist.getUserId())).getUserName());
        request.getSession().setAttribute("songlistVo",songlistVo);

        List<Song> songs=songService.findListSong(songlistId);
        ArrayList<SongVo> songVos=new ArrayList<>();
        //歌单显示歌曲的List
        for (Song song:songs) {
        //设置前端展示的歌曲详单
            SongVo sv=new SongVo();
            String cdName=cdService.selectByPrimaryKey(song.getCdId()).getCdName();
            String singerName=singerService.selectByPrimaryKey(song.getSingerId()).getSingerName();
            sv.setSong(song);sv.setCdName(cdName);sv.setSingerName(singerName);
            songVos.add(sv);
        }
        request.getSession().setAttribute("songVos",songVos);
        System.out.println(songs);
        System.out.println(songVos);
        return "singlelistmusic";
    }

    @RequestMapping("/rankinglist")//假排行榜
    public String rankinglist(HttpServletRequest request){
        List<Song> songs=songService.findFirst54rderByPlayCountDesc();
        ArrayList<SongVo> ranklist=new ArrayList<>();
        for (Song song:songs) {
            //设置前端展示的歌曲详单
            SongVo sv=new SongVo();
            String cdName=cdService.selectByPrimaryKey(song.getCdId()).getCdName();
            String singerName=singerService.selectByPrimaryKey(song.getSingerId()).getSingerName();
            sv.setSong(song);sv.setCdName(cdName);sv.setSingerName(singerName);
            ranklist.add(sv);
        }
        System.out.println(ranklist);
        request.getSession().setAttribute("ranklist",ranklist);
        return "rankinglist";
    }

}
