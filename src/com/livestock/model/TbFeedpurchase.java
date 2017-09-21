package com.livestock.model;

import java.util.Date;

/**
 * TbFeedpurchase entity. @author MyEclipse Persistence Tools
 */

public class TbFeedpurchase implements java.io.Serializable {

	// Fields

	private Integer fpId;
	private TbFeed tbFeed;
	private Integer purchaseQuantity2;
	private Date purchaseTime2;

	// Constructors

	/** default constructor */
	public TbFeedpurchase() {
	}

	/** full constructor */
	public TbFeedpurchase(TbFeed tbFeed, Integer purchaseQuantity2,
			Date purchaseTime2) {
		this.tbFeed = tbFeed;
		this.purchaseQuantity2 = purchaseQuantity2;
		this.purchaseTime2 = purchaseTime2;
	}

	// Property accessors

	public Integer getFpId() {
		return this.fpId;
	}

	public void setFpId(Integer fpId) {
		this.fpId = fpId;
	}

	public TbFeed getTbFeed() {
		return this.tbFeed;
	}

	public void setTbFeed(TbFeed tbFeed) {
		this.tbFeed = tbFeed;
	}

	public Integer getPurchaseQuantity2() {
		return this.purchaseQuantity2;
	}

	public void setPurchaseQuantity2(Integer purchaseQuantity2) {
		this.purchaseQuantity2 = purchaseQuantity2;
	}

	public Date getPurchaseTime2() {
		return this.purchaseTime2;
	}

	public void setPurchaseTime2(Date purchaseTime2) {
		this.purchaseTime2 = purchaseTime2;
	}

}