package services;

import com.github.slugify.Slugify;

import java.io.File;
import java.sql.Timestamp;
import java.util.Arrays;

public class helper {
    public static String createSlug(String string) {
        Slugify slg = new Slugify();
        String Slug = slg.slugify(string);
        return Slug;
    }

    public static Timestamp getCurrentTimeStamp() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Timestamp(today.getTime());
    }

}
