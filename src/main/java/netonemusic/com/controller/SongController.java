package netonemusic.com.controller;

import netonemusic.com.entity.*;
import netonemusic.com.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SongController {

    @Autowired
    private SongService songService;
    @Autowired
    private SingerService singerService;
    @Autowired
    private CdService cdService;
    @Autowired
    private SonglistwithsongService songlistwithsongService;

    @RequestMapping("/singlesong")//单曲页面
    public String singlesong(Integer songId, HttpServletRequest request){
        Song song=songService.selectByPrimaryKey(songId);
        SingleSongVo singleSongVo=new SingleSongVo();
        singleSongVo.setSong(song);
        singleSongVo.setSingerName(singerService.selectByPrimaryKey(song.getSingerId()).getSingerName());
        singleSongVo.setCdName(cdService.selectByPrimaryKey(song.getCdId()).getCdName());
        singleSongVo.setCdUrl(cdService.selectByPrimaryKey(song.getCdId()).getCoverUrl());
        System.out.println(singleSongVo);
        request.getSession().setAttribute("singlesong",singleSongVo);
        return "singlesong";
    }

    @RequestMapping("/addSong")//收藏某首歌曲到歌单
    @ResponseBody
    public Msg addSong(Songlistwithsong songlistwithsong,HttpServletRequest request){
        System.out.println(songlistwithsong);
        if(songlistwithsongService.selectBySonglistIdAndSongId(songlistwithsong.getSonglistId(),songlistwithsong.getSongId())==null||
                songlistwithsongService.selectBySonglistIdAndSongId(songlistwithsong.getSonglistId(),songlistwithsong.getSongId()).size()==0){
            songlistwithsongService.insertSelective(songlistwithsong);
            System.out.println(2);
            return Msg.success();
        }else {
            System.out.println(1);
            System.out.println(songlistwithsongService.selectBySonglistIdAndSongId(songlistwithsong.getSonglistId(),songlistwithsong.getSongId()));
            return Msg.fail();
        }
    }

    @RequestMapping("/deleteSong")//ajax删除歌单中的歌曲
    @ResponseBody
    public Msg deleteSong(Integer songId,HttpServletRequest request){
        System.out.println("dodeletesong");
        Integer songlistId=((SonglistVo)request.getSession().getAttribute("playlist")).getSonglist().getSonglistId();
        System.out.println(songlistId);
        if(songService.deleteBySonglistIdAndSongId(songlistId,songId)==1){
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
            System.out.println(songVos);
            return Msg.success().add("songVos",songVos);
        }else
            return Msg.fail();
    }

    @RequestMapping("/listenlist")
    @ResponseBody
    public String listenlist(@Param("songId")Integer songId,HttpServletRequest request){//正在播放歌单列表
        return "index";
    }
}
