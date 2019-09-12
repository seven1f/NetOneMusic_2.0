package netonemusic.com.entity;

public class Songlistwithsong {
    private Integer slSongId;

    private Integer songlistId;

    private Integer songId;

    private Integer commentCount;

    public Integer getSlSongId() {
        return slSongId;
    }

    public void setSlSongId(Integer slSongId) {
        this.slSongId = slSongId;
    }

    public Integer getSonglistId() {
        return songlistId;
    }

    public void setSonglistId(Integer songlistId) {
        this.songlistId = songlistId;
    }

    public Integer getSongId() {
        return songId;
    }

    public void setSongId(Integer songId) {
        this.songId = songId;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    @Override
    public String toString() {
        return "Songlistwithsong{" +
                "slSongId=" + slSongId +
                ", songlistId=" + songlistId +
                ", songId=" + songId +
                ", commentCount=" + commentCount +
                '}';
    }
}