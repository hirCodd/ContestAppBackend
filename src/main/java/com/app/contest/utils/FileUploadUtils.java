package com.app.contest.utils;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class FileUploadUtils {
    public static String fileUpload(MultipartFile file, String fileDir) {
        //取文件名和文件后缀
        String fileName = file.getOriginalFilename();
        assert fileName != null;
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        //生成文件名称通用方法
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");;
        //生成图片名称为:时间+uuid
        String newName = simpleDateFormat.format(new Date())
                .concat("_")
                .concat(String.valueOf(UUID.randomUUID()))
                .concat(suffixName);
        //用byte数组写数据
        byte[] bytes;
        try {
            bytes = file.getBytes();
            Path path = Paths.get(fileDir.concat(newName));
            Files.write(path, bytes);
            return newName;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    public static Boolean deleteImg(String fileName, String fileDir) {
        Path path = Paths.get(fileDir.concat(fileName));
        File file = path.toFile();
        boolean flag = false;
        if (file.exists()) {
            flag = file.delete();
        }
        return flag;
    }
}
