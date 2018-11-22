package com.spring.board.filUpload;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UploadItem {
    private String name;
    private String Receipt_m_uid;
    private String Receipt_no;
    private String Receipt_path;
    private CommonsMultipartFile fileData;

    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getReceipt_m_uid() {
		return Receipt_m_uid;
	}
	public void setReceipt_m_uid(String receipt_m_uid) {
		Receipt_m_uid = receipt_m_uid;
	}
	public String getReceipt_no() {
		return Receipt_no;
	}
	public void setReceipt_no(String receipt_no) {
		Receipt_no = receipt_no;
	}
	public String getReceipt_path() {
		return Receipt_path;
	}
	public void setReceipt_path(String receipt_path) {
		Receipt_path = receipt_path;
	}
	public CommonsMultipartFile getFileData() {
		return fileData;
	}
	public void setFileData(CommonsMultipartFile fileData) {
		this.fileData = fileData;
	}
 

}
