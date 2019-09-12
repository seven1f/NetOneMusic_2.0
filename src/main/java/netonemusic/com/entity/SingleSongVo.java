package netonemusic.com.entity;

public class SingleSongVo {
    private Song song;
    String cdName;
    String cdUrl;
    String singerName;

    public Song getSong() {
        return song;
    }

    public void setSong(Song song) {
        this.song = song;
    }

    public String getCdName() {
        return cdName;
    }

    public void setCdName(String cdName) {
        this.cdName = cdName;
    }

    public String getCdUrl() {
        return cdUrl;
    }

    public void setCdUrl(String cdUrl) {
        this.cdUrl = cdUrl;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    @Override
    public String toString() {
        return "SingleSongVo{" +
                "song=" + song +
                ", cdName='" + cdName + '\'' +
                ", cdUrl='" + cdUrl + '\'' +
                ", singerName='" + singerName + '\'' +
                '}';
    }
}
