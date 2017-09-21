package com.livestock.model;

import java.util.Date;

/**
 * TbDrugconsume entity. @author MyEclipse Persistence Tools
 */

public class TbDrugconsume implements java.io.Serializable {

	// Fields

	private Integer dcId;
	private TbDrug tbDrug;
	private Integer consumeQuantity;
	private Date consumeTime;

	// Constructors

	/** default constructor */
	public TbDrugconsume() {
	}

	/** full constructor */
	public TbDrugconsume(Integer dcId, TbDrug tbDrug, Integer consumeQuantity,
			Date consumeTime) {
		this.dcId = dcId;
		this.tbDrug = tbDrug;
		this.consumeQuantity = consumeQuantity;
		this.consumeTime = consumeTime;
	}

	// Property accessors

	public Integer getDcId() {
		return this.dcId;
	}

	public void setDcId(Integer dcId) {
		this.dcId = dcId;
	}

	public TbDrug getTbDrug() {
		return this.tbDrug;
	}

	public void setTbDrug(TbDrug tbDrug) {
		this.tbDrug = tbDrug;
	}

	public Integer getConsumeQuantity() {
		return this.consumeQuantity;
	}

	public void setConsumeQuantity(Integer consumeQuantity) {
		this.consumeQuantity = consumeQuantity;
	}

	public Date getConsumeTime() {
		return this.consumeTime;
	}

	public void setConsumeTime(Date consumeTime) {
		this.consumeTime = consumeTime;
	}

}