package com.livestock.model;

import java.util.Date;

/**
 * TbSupplyconsume entity. @author MyEclipse Persistence Tools
 */

public class TbSupplyconsume implements java.io.Serializable {

	// Fields

	private Integer scId;
	private String supplyName;
	private Integer consumeQuantity3;
	private Date consumeTime3;

	// Constructors

	/** default constructor */
	public TbSupplyconsume() {
	}

	/** full constructor */
	public TbSupplyconsume(String supplyName, Integer consumeQuantity3,
			Date consumeTime3) {
		this.supplyName = supplyName;
		this.consumeQuantity3 = consumeQuantity3;
		this.consumeTime3 = consumeTime3;
	}

	// Property accessors

	public Integer getScId() {
		return this.scId;
	}

	public void setScId(Integer scId) {
		this.scId = scId;
	}

	public String getSupplyName() {
		return this.supplyName;
	}

	public void setSupplyName(String supplyName) {
		this.supplyName = supplyName;
	}

	public Integer getConsumeQuantity3() {
		return this.consumeQuantity3;
	}

	public void setConsumeQuantity3(Integer consumeQuantity3) {
		this.consumeQuantity3 = consumeQuantity3;
	}

	public Date getConsumeTime3() {
		return this.consumeTime3;
	}

	public void setConsumeTime3(Date consumeTime3) {
		this.consumeTime3 = consumeTime3;
	}

}