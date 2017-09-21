package com.livestock.model;

import java.util.Date;

/**
 * TbAlarminfo entity. @author MyEclipse Persistence Tools
 */

public class TbAlarminfo implements java.io.Serializable {

	// Fields

	private Integer alarmId;
	private TbFarm tbFarm;
	private String alarmContent;
	private Date alarmTime;

	// Constructors

	/** default constructor */
	public TbAlarminfo() {
	}

	/** full constructor */
	public TbAlarminfo(TbFarm tbFarm, String alarmContent, Date alarmTime) {
		this.tbFarm = tbFarm;
		this.alarmContent = alarmContent;
		this.alarmTime = alarmTime;
	}

	// Property accessors

	public Integer getAlarmId() {
		return this.alarmId;
	}

	public void setAlarmId(Integer alarmId) {
		this.alarmId = alarmId;
	}

	public TbFarm getTbFarm() {
		return this.tbFarm;
	}

	public void setTbFarm(TbFarm tbFarm) {
		this.tbFarm = tbFarm;
	}

	public String getAlarmContent() {
		return this.alarmContent;
	}

	public void setAlarmContent(String alarmContent) {
		this.alarmContent = alarmContent;
	}

	public Date getAlarmTime() {
		return this.alarmTime;
	}

	public void setAlarmTime(Date alarmTime) {
		this.alarmTime = alarmTime;
	}

}