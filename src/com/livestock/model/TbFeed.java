package com.livestock.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TbFeed entity. @author MyEclipse Persistence Tools
 */

public class TbFeed implements java.io.Serializable {

	// Fields

	private String feedName;
	private String feedUse;
	private String remark5;
	private Set tbFeedpurchases = new HashSet(0);
	private Set tbFeedconsumes = new HashSet(0);

	// Constructors

	/** default constructor */
	public TbFeed() {
	}

	/** minimal constructor */
	public TbFeed(String feedName, String feedUse) {
		this.feedName = feedName;
		this.feedUse = feedUse;
	}

	/** full constructor */
	public TbFeed(String feedName, String feedUse, String remark5,
			Set tbFeedpurchases, Set tbFeedconsumes) {
		this.feedName = feedName;
		this.feedUse = feedUse;
		this.remark5 = remark5;
		this.tbFeedpurchases = tbFeedpurchases;
		this.tbFeedconsumes = tbFeedconsumes;
	}

	// Property accessors

	public String getFeedName() {
		return this.feedName;
	}

	public void setFeedName(String feedName) {
		this.feedName = feedName;
	}

	public String getFeedUse() {
		return this.feedUse;
	}

	public void setFeedUse(String feedUse) {
		this.feedUse = feedUse;
	}

	public String getRemark5() {
		return this.remark5;
	}

	public void setRemark5(String remark5) {
		this.remark5 = remark5;
	}

	public Set getTbFeedpurchases() {
		return this.tbFeedpurchases;
	}

	public void setTbFeedpurchases(Set tbFeedpurchases) {
		this.tbFeedpurchases = tbFeedpurchases;
	}

	public Set getTbFeedconsumes() {
		return this.tbFeedconsumes;
	}

	public void setTbFeedconsumes(Set tbFeedconsumes) {
		this.tbFeedconsumes = tbFeedconsumes;
	}

}