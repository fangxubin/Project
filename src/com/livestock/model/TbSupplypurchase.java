package com.livestock.model;

import java.util.Date;

/**
 * TbSupplypurchase entity. @author MyEclipse Persistence Tools
 */

public class TbSupplypurchase implements java.io.Serializable {

	// Fields

	private Integer spId;
	private String supplyName;
	private Integer purchaseQuantity3;
	private Date purchaseTime3;

	// Constructors

	/** default constructor */
	public TbSupplypurchase() {
	}

	/** full constructor */
	public TbSupplypurchase(String supplyName, Integer purchaseQuantity3,
			Date purchaseTime3) {
		this.supplyName = supplyName;
		this.purchaseQuantity3 = purchaseQuantity3;
		this.purchaseTime3 = purchaseTime3;
	}

	// Property accessors

	public Integer getSpId() {
		return this.spId;
	}

	public void setSpId(Integer spId) {
		this.spId = spId;
	}

	public String getSupplyName() {
		return this.supplyName;
	}

	public void setSupplyName(String supplyName) {
		this.supplyName = supplyName;
	}

	public Integer getPurchaseQuantity3() {
		return this.purchaseQuantity3;
	}

	public void setPurchaseQuantity3(Integer purchaseQuantity3) {
		this.purchaseQuantity3 = purchaseQuantity3;
	}

	public Date getPurchaseTime3() {
		return this.purchaseTime3;
	}

	public void setPurchaseTime3(Date purchaseTime3) {
		this.purchaseTime3 = purchaseTime3;
	}

}