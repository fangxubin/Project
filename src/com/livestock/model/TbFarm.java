package com.livestock.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TbFarm entity. @author MyEclipse Persistence Tools
 */

public class TbFarm implements java.io.Serializable {

	// Fields

	private Integer farmId;
	private String pic;
	private String farmName;
	private Set tbLivestocks = new HashSet(0);
	private Set tbAlarminfos = new HashSet(0);
	private Set tbRemotecontrols = new HashSet(0);
	private Set tbEquipments = new HashSet(0);
	private Set tbDates = new HashSet(0);

	// Constructors

	/** default constructor */
	public TbFarm() {
	}

	/** minimal constructor */
	public TbFarm(Integer farmId, String pic) {
		this.farmId = farmId;
		this.pic = pic;
	}

	/** full constructor */
	public TbFarm(Integer farmId, String pic, String farmName,
			Set tbLivestocks, Set tbAlarminfos, Set tbRemotecontrols,
			Set tbEquipments, Set tbDates) {
		this.farmId = farmId;
		this.pic = pic;
		this.farmName = farmName;
		this.tbLivestocks = tbLivestocks;
		this.tbAlarminfos = tbAlarminfos;
		this.tbRemotecontrols = tbRemotecontrols;
		this.tbEquipments = tbEquipments;
		this.tbDates = tbDates;
	}

	// Property accessors

	public Integer getFarmId() {
		return this.farmId;
	}

	public void setFarmId(Integer farmId) {
		this.farmId = farmId;
	}

	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getFarmName() {
		return this.farmName;
	}

	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}

	public Set getTbLivestocks() {
		return this.tbLivestocks;
	}

	public void setTbLivestocks(Set tbLivestocks) {
		this.tbLivestocks = tbLivestocks;
	}

	public Set getTbAlarminfos() {
		return this.tbAlarminfos;
	}

	public void setTbAlarminfos(Set tbAlarminfos) {
		this.tbAlarminfos = tbAlarminfos;
	}

	public Set getTbRemotecontrols() {
		return this.tbRemotecontrols;
	}

	public void setTbRemotecontrols(Set tbRemotecontrols) {
		this.tbRemotecontrols = tbRemotecontrols;
	}

	public Set getTbEquipments() {
		return this.tbEquipments;
	}

	public void setTbEquipments(Set tbEquipments) {
		this.tbEquipments = tbEquipments;
	}

	public Set getTbDates() {
		return this.tbDates;
	}

	public void setTbDates(Set tbDates) {
		this.tbDates = tbDates;
	}

}