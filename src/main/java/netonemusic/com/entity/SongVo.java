package netonemusic.com.entity;

public class SongVo {

    private Song song;
    private String singerName;
    private String cdName;

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

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    @Override
    public String toString() {
        return "SongVo{" +
                "song=" + song +
                ", singerName='" + singerName + '\'' +
                ", cdName='" + cdName + '\'' +
                '}';
    }
}
