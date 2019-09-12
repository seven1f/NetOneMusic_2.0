package netonemusic.com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import netonemusic.com.dao.SingerMapper;
import netonemusic.com.entity.*;
import netonemusic.com.service.CdService;
import netonemusic.com.service.SingerService;
import netonemusic.com.service.SongService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SingerController {
    @Autowired
    private SingerService singerService;
    @Autowired
    private SingerMapper singerMapper;
    @Autowired
    private SongService songService;
    @Autowired
    private CdService cdService;

    @RequestMapping("/singer")//访问歌手页
    public String singer(HttpServletRequest request){
        List<Singer> ruzhuSinger=singerService.findAllBySingerStatus(1);
        List<Singer> singers=singerService.findAll();
        request.getSession().setAttribute("ruzhuSinger",ruzhuSinger);
        request.getSession().setAttribute("singers",singers);
        return "singer";
    }

    @RequestMapping("/singlesinger")//访问单个歌手页面
    public String singer(@Param("singerId") Integer singerId,HttpServletRequest request){
        //歌手基本信息
        Singer singleSinger=singerService.selectByPrimaryKey(singerId);
        request.getSession().setAttribute("singlesinger",singleSinger);
        singleSinger.setAccessCount(singleSinger.getAccessCount()+100);
        singerService.updateByPrimaryKeySelective(singleSinger);//增加热度
        System.out.println(singleSinger);
        //歌手热门歌曲50首
        List<Song> songs=songService.findSingerSong(singerId);
        ArrayList<SongVo> singersong=new ArrayList<>();
        for (Song song:songs) {
            //设置前端展示的歌曲详单
            SongVo sv=new SongVo();
            String cdName=cdService.selectByPrimaryKey(song.getCdId()).getCdName();
            String singerName=singerService.selectByPrimaryKey(song.getSingerId()).getSingerName();
            sv.setSong(song);sv.setCdName(cdName);sv.setSingerName(singerName);
            singersong.add(sv);
        }
        request.getSession().setAttribute("singersong",singersong);
        System.out.println(singersong);
        return "singlesinger";
    }

    @RequestMapping("/followSinger")//关注歌手
    @ResponseBody
    public Msg followSinger(Integer singerId, HttpServletRequest request){
        System.out.println("dofollow");
        User user=(User) request.getSession().getAttribute("user");
        System.out.println(singerService.findBySingerAndUserId(user.getUserId(),singerId));
        if((singerService.findBySingerAndUserId(user.getUserId(),singerId))==null||
            (singerService.findBySingerAndUserId(user.getUserId(),singerId)).size()==0){
            UserwithSinger us=new UserwithSinger();
            us.setUserId(user.getUserId());
            us.setSingerId(singerId);
            singerMapper.followSinger(us);
            List<Singer> singers=singerService.findMySinger(user.getUserId());
            request.getSession().setAttribute("mysinger",singers);
            return Msg.success();
        }else {
            return Msg.fail();
        }
    }

    @RequestMapping("/findsingerbutype")//按类型查找歌手
    public String findsingerbutype(String singerType,ModelMap modelMap){
        System.out.println("findsingerbutype"+";    type:"+singerType);
        List<Singer> singers=singerService.findBySingerTypeOrderByAccessCountDesc(singerType);
        modelMap.addAttribute("singers2",singers);
        return "singer2";
    }

}
