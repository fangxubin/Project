package com.livestock.model;

import java.util.Date;

/**
 * TbPicture entity. @author MyEclipse Persistence Tools
 */

public class TbPicture implements java.io.Serializable {

	// Fields

	private Integer picId;
	private String picTitle;
	private float picSize;
	private float picWidth;
	private float picHeight;
	private String picType;
	private String picPreviewPath;
	private String picPath;
	private Date picUploadDate;

	// Constructors

	/** default constructor */
	public TbPicture() {
	}

	/** full constructor */
	public TbPicture(String picTitle, float picSize, float picWidth,
			float picHeight, String picType, String picPreviewPath,
			String picPath, Date picUploadDate) {
		this.picTitle = picTitle;
		this.picSize = picSize;
		this.picWidth = picWidth;
		this.picHeight = picHeight;
		this.picType = picType;
		this.picPreviewPath = picPreviewPath;
		this.picPath = picPath;
		this.picUploadDate = picUploadDate;
	}

	// Property accessors

	public Integer getPicId() {
		return this.picId;
	}

	public void setPicId(Integer picId) {
		this.picId = picId;
	}

	public String getPicTitle() {
		return this.picTitle;
	}

	public void setPicTitle(String picTitle) {
		this.picTitle = picTitle;
	}

	public float getPicSize() {
		return this.picSize;
	}

	public void setPicSize(float picSize) {
		this.picSize = picSize;
	}

	public float getPicWidth() {
		return this.picWidth;
	}

	public void setPicWidth(float picWidth) {
		this.picWidth = picWidth;
	}

	public float getPicHeight() {
		return this.picHeight;
	}

	public void setPicHeight(float picHeight) {
		this.picHeight = picHeight;
	}

	public String getPicType() {
		return this.picType;
	}

	public void setPicType(String picType) {
		this.picType = picType;
	}

	public String getPicPreviewPath() {
		return this.picPreviewPath;
	}

	public void setPicPreviewPath(String picPreviewPath) {
		this.picPreviewPath = picPreviewPath;
	}

	public String getPicPath() {
		return this.picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}

	public Date getPicUploadDate() {
		return this.picUploadDate;
	}

	public void setPicUploadDate(Date picUploadDate) {
		this.picUploadDate = picUploadDate;
	}

}