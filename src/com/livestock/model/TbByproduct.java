package com.livestock.model;

import java.util.Date;

/**
 * TbByproduct entity. @author MyEclipse Persistence Tools
 */

public class TbByproduct implements java.io.Serializable {

	// Fields

	private Integer byproductId;
	private String byproductName;
	private Integer byproductQuantity;
	private Date staticsTime;

	// Constructors

	/** default constructor */
	public TbByproduct() {
	}

	/** full constructor */
	public TbByproduct(String byproductName, Integer byproductQuantity,
			Date staticsTime) {
		this.byproductName = byproductName;
		this.byproductQuantity = byproductQuantity;
		this.staticsTime = staticsTime;
	}

	// Property accessors

	public Integer getByproductId() {
		return this.byproductId;
	}

	public void setByproductId(Integer byproductId) {
		this.byproductId = byproductId;
	}

	public String getByproductName() {
		return this.byproductName;
	}

	public void setByproductName(String byproductName) {
		this.byproductName = byproductName;
	}

	public Integer getByproductQuantity() {
		return this.byproductQuantity;
	}

	public void setByproductQuantity(Integer byproductQuantity) {
		this.byproductQuantity = byproductQuantity;
	}

	public Date getStaticsTime() {
		return this.staticsTime;
	}

	public void setStaticsTime(Date staticsTime) {
		this.staticsTime = staticsTime;
	}

}