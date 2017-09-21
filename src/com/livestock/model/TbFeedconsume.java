package com.livestock.model;

import java.util.Date;

/**
 * TbFeedconsume entity. @author MyEclipse Persistence Tools
 */

public class TbFeedconsume implements java.io.Serializable {

	// Fields

	private Integer fcId;
	private TbFeed tbFeed;
	private Integer consumeQuantity2;
	private Date consumeTime2;

	// Constructors

	/** default constructor */
	public TbFeedconsume() {
	}

	/** full constructor */
	public TbFeedconsume(TbFeed tbFeed, Integer consumeQuantity2,
			Date consumeTime2) {
		this.tbFeed = tbFeed;
		this.consumeQuantity2 = consumeQuantity2;
		this.consumeTime2 = consumeTime2;
	}

	// Property accessors

	public Integer getFcId() {
		return this.fcId;
	}

	public void setFcId(Integer fcId) {
		this.fcId = fcId;
	}

	public TbFeed getTbFeed() {
		return this.tbFeed;
	}

	public void setTbFeed(TbFeed tbFeed) {
		this.tbFeed = tbFeed;
	}

	public Integer getConsumeQuantity2() {
		return this.consumeQuantity2;
	}

	public void setConsumeQuantity2(Integer consumeQuantity2) {
		this.consumeQuantity2 = consumeQuantity2;
	}

	public Date getConsumeTime2() {
		return this.consumeTime2;
	}

	public void setConsumeTime2(Date consumeTime2) {
		this.consumeTime2 = consumeTime2;
	}

}