package com.livestock.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TbDrug entity. @author MyEclipse Persistence Tools
 */

public class TbDrug implements java.io.Serializable {

	// Fields

	private String drugName;
	private String drugUse;
	private String remark4;
	private Set tbDrugpurchases = new HashSet(0);
	private Set tbDrugconsumes = new HashSet(0);

	// Constructors

	/** default constructor */
	public TbDrug() {
	}

	/** minimal constructor */
	public TbDrug(String drugName, String drugUse) {
		this.drugName = drugName;
		this.drugUse = drugUse;
	}

	/** full constructor */
	public TbDrug(String drugName, String drugUse, String remark4,
			Set tbDrugpurchases, Set tbDrugconsumes) {
		this.drugName = drugName;
		this.drugUse = drugUse;
		this.remark4 = remark4;
		this.tbDrugpurchases = tbDrugpurchases;
		this.tbDrugconsumes = tbDrugconsumes;
	}

	// Property accessors

	public String getDrugName() {
		return this.drugName;
	}

	public void setDrugName(String drugName) {
		this.drugName = drugName;
	}

	public String getDrugUse() {
		return this.drugUse;
	}

	public void setDrugUse(String drugUse) {
		this.drugUse = drugUse;
	}

	public String getRemark4() {
		return this.remark4;
	}

	public void setRemark4(String remark4) {
		this.remark4 = remark4;
	}

	public Set getTbDrugpurchases() {
		return this.tbDrugpurchases;
	}

	public void setTbDrugpurchases(Set tbDrugpurchases) {
		this.tbDrugpurchases = tbDrugpurchases;
	}

	public Set getTbDrugconsumes() {
		return this.tbDrugconsumes;
	}

	public void setTbDrugconsumes(Set tbDrugconsumes) {
		this.tbDrugconsumes = tbDrugconsumes;
	}

}