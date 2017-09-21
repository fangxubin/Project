package com.livestock.model;

/**
 * TbSupply entity. @author MyEclipse Persistence Tools
 */

public class TbSupply implements java.io.Serializable {

	// Fields

	private String supplyName;
	private String supplyUse;
	private String remark6;

	// Constructors

	/** default constructor */
	public TbSupply() {
	}

	/** minimal constructor */
	public TbSupply(String supplyName, String supplyUse) {
		this.supplyName = supplyName;
		this.supplyUse = supplyUse;
	}

	/** full constructor */
	public TbSupply(String supplyName, String supplyUse, String remark6) {
		this.supplyName = supplyName;
		this.supplyUse = supplyUse;
		this.remark6 = remark6;
	}

	// Property accessors

	public String getSupplyName() {
		return this.supplyName;
	}

	public void setSupplyName(String supplyName) {
		this.supplyName = supplyName;
	}

	public String getSupplyUse() {
		return this.supplyUse;
	}

	public void setSupplyUse(String supplyUse) {
		this.supplyUse = supplyUse;
	}

	public String getRemark6() {
		return this.remark6;
	}

	public void setRemark6(String remark6) {
		this.remark6 = remark6;
	}

}