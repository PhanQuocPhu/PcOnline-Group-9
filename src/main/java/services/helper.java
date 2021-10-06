package services;

import com.github.slugify.Slugify;

public class helper {
    public static String createSlug(String string) {
        Slugify slg = new Slugify().withLowerCase(false);
        String Slug = slg.slugify(string);
        return Slug;
    }
}
