package com.etrans.util;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadHelper {
	private static String strPath;
	private String fileName;
	
	public static Map<String,String> saveFile(String savePath,MultipartFile attach) {
		Map<String,String> outMap=new HashMap<String, String>();
		String flag="fail";
		String msg="";
		String urlPath =null; 
		if(!attach.isEmpty()){
		String oldFileName = attach.getOriginalFilename();//原文件名
		String prefix=FilenameUtils.getExtension(oldFileName);//原文件后缀     
		int filesize = 500000;
        if(attach.getSize() >  filesize){//上传大小不得超过 500k
        	msg= " * 上传大小不得超过 500k";
        }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
        		|| prefix.equalsIgnoreCase("jpeg") || prefix.equalsIgnoreCase("pneg")){//上传图片格式不正确
        	String fileName = System.currentTimeMillis()+RandomUtils.nextInt(100000, 999999)+"_Personal.jpg";  
            File targetFile = new File(savePath, fileName);  
            if(!targetFile.exists()){  
                targetFile.mkdirs();  
            }  
            //保存  
            try {  
            	attach.transferTo(targetFile);  
            	flag="success";
            } catch (Exception e) {  
                e.printStackTrace();  
                msg= " * 上传失败！";
            }  
            urlPath = "uploads/"+fileName;
        }else{
        	msg=" * 上传图片格式不正确";
        }
		}else msg="上传文件名为空";
        outMap.put("msg",msg);
        outMap.put("flag",flag);
        outMap.put("url",urlPath);
		return outMap;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public static String getStrPath() {
		return strPath;
	}

	public static void setStrPath(String strPath) {
		UploadHelper.strPath = strPath;
	}
	
}
