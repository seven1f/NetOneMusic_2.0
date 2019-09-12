package netonemusic.com.entity;

import java.util.Date;

public class Cd {
    private Integer cdId;

    private String cdName;

    /**
    * 专辑封面
    */
    private String coverUrl;

    private Integer songCount;

    private Date publishDate;

    private Integer singerId;

    private String cdIntroduce;

    private Integer commentCount;

    public Integer getCdId() {
        return cdId;
    }

    public void setCdId(Integer cdId) {
        this.cdId = cdId;
    }

    public String getCdName() {
        return cdName;
    }

    public void setCdName(String cdName) {
        this.cdName = cdName;
    }

    public String getCoverUrl() {
        return coverUrl;
    }

    public void setCoverUrl(String coverUrl) {
        this.coverUrl = coverUrl;
    }

    public Integer getSongCount() {
        return songCount;
    }

    public void setSongCount(Integer songCount) {
        this.songCount = songCount;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public Integer getSingerId() {
        return singerId;
    }

    public void setSingerId(Integer singerId) {
        this.singerId = singerId;
    }

    public String getCdIntroduce() {
        return cdIntroduce;
    }

    public void setCdIntroduce(String cdIntroduce) {
        this.cdIntroduce = cdIntroduce;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }
}