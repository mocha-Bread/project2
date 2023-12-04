package kr.spring.entity;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Base64;

public class ImageDecoder {
    public static BufferedImage decodeBase64ToImage(String base64Image) {
        byte[] imageBytes = Base64.getDecoder().decode(base64Image);
        try {
            return ImageIO.read(new ByteArrayInputStream(imageBytes));
        } catch (IOException e) {
            throw new RuntimeException("Failed to decode image", e);
        }
    }
}
