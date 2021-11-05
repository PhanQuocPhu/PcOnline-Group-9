package services;

import com.github.slugify.Slugify;
import org.apache.commons.lang3.RandomStringUtils;

import java.io.File;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Random;

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
    public static String randString(int length) {
        String generatedString = RandomStringUtils.randomAlphanumeric(length);
        return generatedString;
    }
}
