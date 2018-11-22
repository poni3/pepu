package com.spring.board.filUpload;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
 
@Controller
@RequestMapping(value = "/upload")
public class UploadController
{
	@Autowired 
  private FileSystemResource fsResource;
 
  @RequestMapping(method = RequestMethod.GET)
  public String getUploadForm(Model model)
  {
    model.addAttribute(new UploadItem());
    return "upload/uploadForm";
  }
 
  @RequestMapping(method = RequestMethod.POST)
  @Transactional
  public String create(UploadItem uploadItem, BindingResult result) {
    if (result.hasErrors()) {
      for(ObjectError error : result.getAllErrors()) {
        System.err.println("Error: " + error.getCode() +  " - " + error.getDefaultMessage());
      }
      return "payoff/payoffList";
    }
 
    if(!uploadItem.getFileData().isEmpty()){
        String filename = uploadItem.getFileData().getOriginalFilename();
        String imgExt = filename.substring(filename.lastIndexOf(".")+1, filename.length());
 
        //upload 가능한 파일 타입 지정
        if(imgExt.equalsIgnoreCase("JPG") ){
            byte[] bytes = uploadItem.getFileData().getBytes();
            try{
                 File lOutFile = new File(uploadItem.getReceipt_path() +"\\" + uploadItem.getReceipt_m_uid() + "_" + uploadItem.getReceipt_no() + "_receipt.jpg");
                 FileOutputStream lFileOutputStream = new FileOutputStream(lOutFile);
                 lFileOutputStream.write(bytes);
                 lFileOutputStream.close();
            }catch(IOException ie){
                //Exception 처리
                System.err.println("File writing error! ");
            }
            System.err.println("File upload success! ");
        }else{
            System.err.println("File type error! ");
        }
    }
 
    // Some type of file processing...
    System.err.println("-------------------------------------------");
    System.err.println("Test upload: " + uploadItem.getReceipt_path() +"\\" + uploadItem.getReceipt_m_uid() + "_" + uploadItem.getReceipt_no() + "_receipt.");
    System.err.println("Test upload: " + uploadItem.getFileData().getOriginalFilename());
    System.err.println("-------------------------------------------");
 
    return "redirect:/payoffList";
  }
 
}