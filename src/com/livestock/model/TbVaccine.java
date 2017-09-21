package com.livestock.model;

import java.util.Date;

/**
 * TbVaccine entity. @author MyEclipse Persistence Tools
 */

public class TbVaccine implements java.io.Serializable {

	// Fields

	private Integer vaccineId;
	private TbLivestock tbLivestock;
	private String livestockType;
	private String vaccineType;
	private Date injectionTime;
	private String injectionPerson;
	private String remark3;

	// Constructors

	/** default constructor */
	public TbVaccine() {
	}

	/** minimal constructor */
	public TbVaccine(TbLivestock tbLivestock, String livestockType,
			String vaccineType, Date injectionTime, String injectionPerson) {
		this.tbLivestock = tbLivestock;
		this.livestockType = livestockType;
		this.vaccineType = vaccineType;
		this.injectionTime = injectionTime;
		this.injectionPerson = injectionPerson;
	}

	/** full constructor */
	public TbVaccine(TbLivestock tbLivestock, String livestockType,
			String vaccineType, Date injectionTime, String injectionPerson,
			String remark3) {
		this.tbLivestock = tbLivestock;
		this.livestockType = livestockType;
		this.vaccineType = vaccineType;
		this.injectionTime = injectionTime;
		this.injectionPerson = injectionPerson;
		this.remark3 = remark3;
	}

	// Property accessors

	public Integer getVaccineId() {
		return this.vaccineId;
	}

	public void setVaccineId(Integer vaccineId) {
		this.vaccineId = vaccineId;
	}

	public TbLivestock getTbLivestock() {
		return this.tbLivestock;
	}

	public void setTbLivestock(TbLivestock tbLivestock) {
		this.tbLivestock = tbLivestock;
	}

	public String getLivestockType() {
		return this.livestockType;
	}

	public void setLivestockType(String livestockType) {
		this.livestockType = livestockType;
	}

	public String getVaccineType() {
		return this.vaccineType;
	}

	public void setVaccineType(String vaccineType) {
		this.vaccineType = vaccineType;
	}

	public Date getInjectionTime() {
		return this.injectionTime;
	}

	public void setInjectionTime(Date injectionTime) {
		this.injectionTime = injectionTime;
	}

	public String getInjectionPerson() {
		return this.injectionPerson;
	}

	public void setInjectionPerson(String injectionPerson) {
		this.injectionPerson = injectionPerson;
	}

	public String getRemark3() {
		return this.remark3;
	}

	public void setRemark3(String remark3) {
		this.remark3 = remark3;
	}

}