package netonemusic.com.entity;

public class Userwithsonglist {
    private Integer userSonglistId;

    private String userId;

    private Integer songlistId;

    public Integer getUserSonglistId() {
        return userSonglistId;
    }

    public void setUserSonglistId(Integer userSonglistId) {
        this.userSonglistId = userSonglistId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getSonglistId() {
        return songlistId;
    }

    public void setSonglistId(Integer songlistId) {
        this.songlistId = songlistId;
    }
}