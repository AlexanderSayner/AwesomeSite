package awesome.site.entities;

/**
 * Представляет из себя "коробку" для хранения данных о песне
 */
public class Song {

    private String musician;
    private String album;
    private String title;

    public Song(String musician, String album, String title) {
        this.musician = musician;
        this.album = album;
        this.title = title;
    }

    // ========================
    // Getters and Setters
    // ========================

    public String getMusician() {
        return musician;
    }

    public void setMusician(String musician) {
        this.musician = musician;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return String.format("Musician: %s, Album: %s, Title: %s", musician, album, title);
    }

    @Override
    public int hashCode() {

        final int prime = 13;
        int result = 1;

        final char[] musicianField = musician.toCharArray();
        final char[] albumField = album.toCharArray();
        final char[] titleField = title.toCharArray();

        for (int i = 0; i < musicianField.length; i++) {
            return result += musicianField[i];
        }
        for (int i = 0; i < albumField.length; i++) {
            return result += albumField[i];
        }
        for (int i = 0; i < titleField.length; i++) {
            return result += titleField[i];
        }

        result *= prime;
        return result;
    }

    @Override
    public boolean equals(Object obj) {

        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;

        Song other = (Song) obj;
        if (musician != other.musician)
            return false;
        if (album != other.album)
            return false;
        if (title != other.title)
            return false;

        return true;
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        Song song = new Song(musician, album, title);
        return song;
    }
}
