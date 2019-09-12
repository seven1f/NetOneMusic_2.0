package netonemusic.com.entity;

import java.util.Date;

public class Singer {
    private Integer singerId;

    private String singerName;

    private String singerArea;

    private String singerSex;

    private Date singerBirthday;

    private String singerAvatar;

    private Integer singerStatus;

    private String singerIntroduce;

    /**
     * 热度
     */
    private Integer accessCount;

    private String singerType;

    public Integer getSingerId() {
        return singerId;
    }

    public void setSingerId(Integer singerId) {
        this.singerId = singerId;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    public String getSingerArea() {
        return singerArea;
    }

    public void setSingerArea(String singerArea) {
        this.singerArea = singerArea;
    }

    public String getSingerSex() {
        return singerSex;
    }

    public void setSingerSex(String singerSex) {
        this.singerSex = singerSex;
    }

    public Date getSingerBirthday() {
        return singerBirthday;
    }

    public void setSingerBirthday(Date singerBirthday) {
        this.singerBirthday = singerBirthday;
    }

    public String getSingerAvatar() {
        return singerAvatar;
    }

    public void setSingerAvatar(String singerAvatar) {
        this.singerAvatar = singerAvatar;
    }

    public Integer getSingerStatus() {
        return singerStatus;
    }

    public void setSingerStatus(Integer singerStatus) {
        this.singerStatus = singerStatus;
    }

    public String getSingerIntroduce() {
        return singerIntroduce;
    }

    public void setSingerIntroduce(String singerIntroduce) {
        this.singerIntroduce = singerIntroduce;
    }

    public Integer getAccessCount() {
        return accessCount;
    }

    public void setAccessCount(Integer accessCount) {
        this.accessCount = accessCount;
    }

    public String getSingerType() {
        return singerType;
    }

    public void setSingerType(String singerType) {
        this.singerType = singerType;
    }
}