package com.livestock.model;

import java.util.Date;

/**
 * TbEquipment entity. @author MyEclipse Persistence Tools
 */

public class TbEquipment implements java.io.Serializable {

	// Fields

	private Integer equipmentId;
	private TbFarm tbFarm;
	private String equipmentName;
	private Date purchaseTime4;

	// Constructors

	/** default constructor */
	public TbEquipment() {
	}

	/** full constructor */
	public TbEquipment(TbFarm tbFarm, String equipmentName, Date purchaseTime4) {
		this.tbFarm = tbFarm;
		this.equipmentName = equipmentName;
		this.purchaseTime4 = purchaseTime4;
	}

	// Property accessors

	public Integer getEquipmentId() {
		return this.equipmentId;
	}

	public void setEquipmentId(Integer equipmentId) {
		this.equipmentId = equipmentId;
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

	public Date getPurchaseTime4() {
		return this.purchaseTime4;
	}

	public void setPurchaseTime4(Date purchaseTime4) {
		this.purchaseTime4 = purchaseTime4;
	}

}