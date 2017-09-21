package com.livestock.model;

import java.util.Date;

/**
 * TbDrugpurchase entity. @author MyEclipse Persistence Tools
 */

public class TbDrugpurchase implements java.io.Serializable {

	// Fields

	private Integer dpId;
	private TbDrug tbDrug;
	private Integer purchaseQuantity;
	private Date purchaseTime;

	// Constructors

	/** default constructor */
	public TbDrugpurchase() {
	}

	/** full constructor */
	public TbDrugpurchase(TbDrug tbDrug, Integer purchaseQuantity,
			Date purchaseTime) {
		this.tbDrug = tbDrug;
		this.purchaseQuantity = purchaseQuantity;
		this.purchaseTime = purchaseTime;
	}

	// Property accessors

	public Integer getDpId() {
		return this.dpId;
	}

	public void setDpId(Integer dpId) {
		this.dpId = dpId;
	}

	public TbDrug getTbDrug() {
		return this.tbDrug;
	}

	public void setTbDrug(TbDrug tbDrug) {
		this.tbDrug = tbDrug;
	}

	public Integer getPurchaseQuantity() {
		return this.purchaseQuantity;
	}

	public void setPurchaseQuantity(Integer purchaseQuantity) {
		this.purchaseQuantity = purchaseQuantity;
	}

	public Date getPurchaseTime() {
		return this.purchaseTime;
	}

	public void setPurchaseTime(Date purchaseTime) {
		this.purchaseTime = purchaseTime;
	}

}