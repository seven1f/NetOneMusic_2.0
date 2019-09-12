package netonemusic.com.entity;

import java.util.Date;

public class Songlist {
    private Integer songlistId;

    private String userId;

    private String songlistName;

    private String songlistType;

    private String songlistIntroduce;

    private Date creationDate;

    private String songlistUrl;

    private Integer commentCount;

    private Integer collectionCount;

    private String songlistTags;

    public Integer getSonglistId() {
        return songlistId;
    }

    public void setSonglistId(Integer songlistId) {
        this.songlistId = songlistId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getSonglistName() {
        return songlistName;
    }

    public void setSonglistName(String songlistName) {
        this.songlistName = songlistName;
    }

    public String getSonglistType() {
        return songlistType;
    }

    public void setSonglistType(String songlistType) {
        this.songlistType = songlistType;
    }

    public String getSonglistIntroduce() {
        return songlistIntroduce;
    }

    public void setSonglistIntroduce(String songlistIntroduce) {
        this.songlistIntroduce = songlistIntroduce;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public String getSonglistUrl() {
        return songlistUrl;
    }

    public void setSonglistUrl(String songlistUrl) {
        this.songlistUrl = songlistUrl;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    public Integer getCollectionCount() {
        return collectionCount;
    }

    public void setCollectionCount(Integer collectionCount) {
        this.collectionCount = collectionCount;
    }

    public String getSonglistTags() {
        return songlistTags;
    }

    public void setSonglistTags(String songlistTags) {
        this.songlistTags = songlistTags;
    }
}