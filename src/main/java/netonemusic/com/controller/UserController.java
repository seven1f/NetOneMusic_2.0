package netonemusic.com.controller;

import netonemusic.com.entity.*;
import netonemusic.com.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private SongService songService;
    @Autowired
    private CdService cdService;
    @Autowired
    private SingerService singerService;
    @Autowired
    private SonglistService songlistService;
    @Autowired
    private UserwithsonglistService userwithsonglistService;


    @RequestMapping("/login")//登入页
    @ResponseBody
    public User login(User user, HttpServletRequest request,ModelMap modelMap){
        System.out.println("dologin");
        System.out.println(user);
        User user1=userService.selectByPrimaryKey(user.getUserId());
        System.out.println(user1);
        if(user1.getUserPassword().equals(user.getUserPassword())){
            request.getSession().setAttribute("user",user1);
            List<Songlist> songlists=songlistService.findAllByUserId(user.getUserId());//创建的歌单
            List<Songlist> songlists1=songlistService.findAllCollection(user.getUserId());//收藏的歌单
            List<Singer> singers=singerService.findMySinger(user.getUserId());  //订阅的歌手

            //mymusic初始化进入展示我喜欢的音乐歌单
            Songlist songlist=songlistService.findBySonglistNameAndUserId("我喜欢的音乐",user.getUserId());
            SonglistVo songlistVo=new SonglistVo();
            //设置前端展示对象songlistVo
            songlistVo.setSonglist(songlist);
            songlistVo.setUserAvatar((userService.selectByPrimaryKey(songlist.getUserId())).getUserAvatar());
            songlistVo.setUserName((userService.selectByPrimaryKey(songlist.getUserId())).getUserName());
            List<Song> songs=songService.findListSong(songlist.getSonglistId());
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


            request.getSession().setAttribute("playSongs",songVos);
            request.getSession().setAttribute("playlist",songlistVo);
            request.getSession().setAttribute("mycreateSl",songlists);
            request.getSession().setAttribute("mycollectioneSl",songlists1);
            request.getSession().setAttribute("mysinger",singers);

            System.out.println("success");
            return user1;
        }else {
            System.out.println("fail");
            return null;
        }
    }

    @RequestMapping("/loginout")//退出登录
    public String loginout(HttpServletRequest request){
        request.getSession().invalidate();
        return "index";
    }

    @RequestMapping("/register")//注册
    @ResponseBody
    public User register(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println(user);
        if(userService.selectByPrimaryKey(user.getUserId())!=null){
            System.out.println("已有账号");
            return null;
        }else {
            user.setUserName("用户"+user.getUserId());
            user.setUserArea("未知");
            user.setUserSex("保密");
            System.out.println(1);
            System.out.println(user);
            userService.insertSelective(user);
            System.out.println(2);
            //创建默认歌单
            Songlist songlist=new Songlist();
            songlist.setSonglistName("我喜欢的音乐");
            songlist.setUserId(user.getUserId());
            songlistService.insertSelective(songlist);
            System.out.println(1);
            Userwithsonglist usl=new Userwithsonglist();//设置默认歌单关系
            usl.setSonglistId(songlist.getSonglistId());usl.setUserId(user.getUserId());
            userwithsonglistService.insert(usl);
            //用户session
            System.out.println(3);
            return user;
        }
    }

    @RequestMapping("/editInfo")//修改个人信息
    @ResponseBody
    public User editINfo(User user,HttpServletRequest request){
        System.out.println(user);
        User user1=(User) request.getSession().getAttribute("user");
        user.setUserId(user1.getUserId());
        System.out.println(user);
        int result=userService.updateByPrimaryKeySelective(user);
        System.out.println(result+"????????");
        if(result==1){
            return user;
        }else return null;
    }

    @RequestMapping("/homepage")//跳转个人主页
    public String homepage(@Param("userId") String userId, HttpServletRequest request){
        if("myself".equals(userId)) {
            String myuserId=((User)request.getSession().getAttribute("user")).getUserId();
            userId=myuserId;
        }
        List<Song> songs=songService.findMySongRank(userId);
        User user=userService.selectByPrimaryKey(userId);
        ArrayList<SongVo> songVos=new ArrayList<>();
        //个人听歌排行榜
        for (Song song:songs) {
            //设置前端展示的歌曲详单
            SongVo sv=new SongVo();
            String cdName=cdService.selectByPrimaryKey(song.getCdId()).getCdName();
            String singerName=singerService.selectByPrimaryKey(song.getSingerId()).getSingerName();
            sv.setSong(song);sv.setCdName(cdName);sv.setSingerName(singerName);
            songVos.add(sv);
        }
        //创建的歌单
        List<Songlist> songlistsCreat=songlistService.findAllByUserId(userId);
        //收藏的歌单
        List<Songlist> songlistCollection=songlistService.findAllCollection(userId);
        System.out.println(user);
        System.out.println(songs);
        request.getSession().setAttribute("somebody",user);
        request.getSession().setAttribute("mysongrank",songVos);
        request.getSession().setAttribute("songlistsCreat",songlistsCreat);
        request.getSession().setAttribute("songlistCollection",songlistCollection);
        return "homepage";
    }

    @RequestMapping("/mymusicplay")
    public String mymusicplay(Integer songlistId,ModelMap modelMap,HttpServletRequest request){
        Songlist songlist=songlistService.selectByPrimaryKey(songlistId);
        //歌单的基本信息
        SonglistVo songlistVo=new SonglistVo();
        //设置前端展示对象songlistVo
        songlistVo.setSonglist(songlist);
        songlistVo.setUserAvatar((userService.selectByPrimaryKey(songlist.getUserId())).getUserAvatar());
        songlistVo.setUserName((userService.selectByPrimaryKey(songlist.getUserId())).getUserName());
//        request.getSession().setAttribute("songlistVo",songlistVo);
        request.getSession().setAttribute("playlist",songlistVo);

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
//        request.getSession().setAttribute("songVos",songVos);
        request.getSession().setAttribute("playSongs",songVos);

        System.out.println(songs);
        System.out.println(songVos);

        System.out.println("domyMusic");
        return "myMusic";
    }


    @RequestMapping("/deleteMycreatSl")//ajax刪除创建的歌單
    @ResponseBody
    public Msg deleteMycreatSl(Integer songlistId,HttpServletRequest request){
        System.out.println("dodeletesonglist");
        User user=(User) request.getSession().getAttribute("user");
        if(songlistService.deleteBySonglistIdAndUserId(songlistId,user.getUserId())==1){
            List<Songlist> songlists=songlistService.findAllByUserId(user.getUserId());
            request.getSession().setAttribute("mycreateSl",songlists);
            return Msg.success().add("songlists",songlists);
        }else return Msg.fail();
    }


    @RequestMapping("/deleteMycollectioneSl")//ajax删除收藏的歌单
    @ResponseBody
    public Msg deleteMycollectioneSl(Integer songlistId,HttpServletRequest request){
        User user=(User)request.getSession().getAttribute("user");
        if(userwithsonglistService.deleteByUserIdAndSonglistId(user.getUserId(),songlistId)==1){
            List<Songlist> songlists=songlistService.findAllCollection(user.getUserId());
            request.getSession().setAttribute("mycollectioneSl",songlists);
            return Msg.success().add("songlists",songlists);
        }
        return Msg.fail();
    }


    @RequestMapping("/addsonglist")//ajax创建歌单
    @ResponseBody
    public Msg addsonglist(String songlistName,HttpServletRequest request){
        Songlist songlist=new Songlist();
        User user=(User) request.getSession().getAttribute("user");
        songlist.setUserId(user.getUserId());
        songlist.setSonglistName(songlistName);
        Date date=new Date();
        songlist.setCreationDate(date);
        songlistService.insertSelective(songlist);
        List<Songlist> songlists=songlistService.findAllByUserId(user.getUserId());
        request.getSession().setAttribute("mycreateSl",songlists);
        return Msg.success().add("songlists",songlists);
    }

    @RequestMapping("/collectionSonglist")//收藏歌单
        @ResponseBody
    public Msg collectionSonglist(Integer songlistId,HttpServletRequest request){
        User user=(User) request.getSession().getAttribute("user");
        Userwithsonglist us=new Userwithsonglist();
        us.setUserId(user.getUserId());
        us.setSonglistId(songlistId);
        if(userwithsonglistService.finByUserIdAndSonglistId(us)==null||userwithsonglistService.finByUserIdAndSonglistId(us).size()==0){
            userwithsonglistService.insertSelective(us);
            List<Songlist> mycollectioneSl=(ArrayList)request.getSession().getAttribute("mycollectioneSl");
            mycollectioneSl.add(songlistService.selectByPrimaryKey(songlistId));
            request.getSession().setAttribute("mycollectioneSl",mycollectioneSl);//更新收藏歌单
            return Msg.success();
        }else return Msg.fail();
    }


}
