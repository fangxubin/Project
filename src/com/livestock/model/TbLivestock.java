package com.livestock.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TbLivestock entity. @author MyEclipse Persistence Tools
 */

public class TbLivestock implements java.io.Serializable {

	// Fields

	private Integer livestockId;
	private TbFarm tbFarm;
	private Integer rfid;
	private String livestockType;
	private Date birthday;
	private Date sellTime;
	private String remark;
	private Set tbTreatments = new HashSet(0);
	private Set tbVaccines = new HashSet(0);

	// Constructors

	/** default constructor */
	public TbLivestock() {
	}

	/** minimal constructor */
	public TbLivestock(TbFarm tbFarm, Integer rfid, String livestockType,
			Date birthday, Date sellTime) {
		this.tbFarm = tbFarm;
		this.rfid = rfid;
		this.livestockType = livestockType;
		this.birthday = birthday;
		this.sellTime = sellTime;
	}

	/** full constructor */
	public TbLivestock(TbFarm tbFarm, Integer rfid, String livestockType,
			Date birthday, Date sellTime, String remark, Set tbTreatments,
			Set tbVaccines) {
		this.tbFarm = tbFarm;
		this.rfid = rfid;
		this.livestockType = livestockType;
		this.birthday = birthday;
		this.sellTime = sellTime;
		this.remark = remark;
		this.tbTreatments = tbTreatments;
		this.tbVaccines = tbVaccines;
	}

	// Property accessors

	public Integer getLivestockId() {
		return this.livestockId;
	}

	public void setLivestockId(Integer livestockId) {
		this.livestockId = livestockId;
	}

	public TbFarm getTbFarm() {
		return this.tbFarm;
	}

	public void setTbFarm(TbFarm tbFarm) {
		this.tbFarm = tbFarm;
	}

	public Integer getRfid() {
		return this.rfid;
	}

	public void setRfid(Integer rfid) {
		this.rfid = rfid;
	}

	public String getLivestockType() {
		return this.livestockType;
	}

	public void setLivestockType(String livestockType) {
		this.livestockType = livestockType;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Date getSellTime() {
		return this.sellTime;
	}

	public void setSellTime(Date sellTime) {
		this.sellTime = sellTime;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set getTbTreatments() {
		return this.tbTreatments;
	}

	public void setTbTreatments(Set tbTreatments) {
		this.tbTreatments = tbTreatments;
	}

	public Set getTbVaccines() {
		return this.tbVaccines;
	}

	public void setTbVaccines(Set tbVaccines) {
		this.tbVaccines = tbVaccines;
	}

}