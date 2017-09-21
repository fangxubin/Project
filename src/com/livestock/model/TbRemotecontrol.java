package com.livestock.model;

import java.util.Date;

/**
 * TbRemotecontrol entity. @author MyEclipse Persistence Tools
 */

public class TbRemotecontrol implements java.io.Serializable {

	// Fields

	private Integer controlId;
	private TbFarm tbFarm;
	private String equipmentName;
	private String status;
	private Date controlTime;

	// Constructors

	/** default constructor */
	public TbRemotecontrol() {
	}

	/** full constructor */
	public TbRemotecontrol(TbFarm tbFarm, String equipmentName, String status,
			Date controlTime) {
		this.tbFarm = tbFarm;
		this.equipmentName = equipmentName;
		this.status = status;
		this.controlTime = controlTime;
	}

	// Property accessors

	public Integer getControlId() {
		return this.controlId;
	}

	public void setControlId(Integer controlId) {
		this.controlId = controlId;
	}

	public TbFarm getTbFarm() {
		return this.tbFarm;
	}

	public void setTbFarm(TbFarm tbFarm) {
		this.tbFarm = tbFarm;
	}

	public String getEquipmentName() {
		return this.equipmentName;
	}

	public void setEquipmentName(String equipmentName) {
		this.equipmentName = equipmentName;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getControlTime() {
		return this.controlTime;
	}

	public void setControlTime(Date controlTime) {
		this.controlTime = controlTime;
	}

}