package com.livestock.model;

import java.util.Date;

/**
 * TbDate entity. @author MyEclipse Persistence Tools
 */

public class TbDate implements java.io.Serializable {

	// Fields

	private Integer farmdateId;
	private TbFarm tbFarm;
	private Integer co2;
	private Integer h2s;
	private Integer nh3;
	private Integer farmTemperature;
	private Integer farmHumidity;
	private Integer illumination;
	private Integer airPressure;
	private Integer ventilation;
	private Date datetime;

	// Constructors

	/** default constructor */
	public TbDate() {
	}

	/** full constructor */
	public TbDate(TbFarm tbFarm, Integer co2, Integer h2s, Integer nh3,
			Integer farmTemperature, Integer farmHumidity,
			Integer illumination, Integer airPressure, Integer ventilation,
			Date datetime) {
		this.tbFarm = tbFarm;
		this.co2 = co2;
		this.h2s = h2s;
		this.nh3 = nh3;
		this.farmTemperature = farmTemperature;
		this.farmHumidity = farmHumidity;
		this.illumination = illumination;
		this.airPressure = airPressure;
		this.ventilation = ventilation;
		this.datetime = datetime;
	}

	// Property accessors

	public Integer getFarmdateId() {
		return this.farmdateId;
	}

	public void setFarmdateId(Integer farmdateId) {
		this.farmdateId = farmdateId;
	}

	public TbFarm getTbFarm() {
		return this.tbFarm;
	}

	public void setTbFarm(TbFarm tbFarm) {
		this.tbFarm = tbFarm;
	}

	public Integer getCo2() {
		return this.co2;
	}

	public void setCo2(Integer co2) {
		this.co2 = co2;
	}

	public Integer getH2s() {
		return this.h2s;
	}

	public void setH2s(Integer h2s) {
		this.h2s = h2s;
	}

	public Integer getNh3() {
		return this.nh3;
	}

	public void setNh3(Integer nh3) {
		this.nh3 = nh3;
	}

	public Integer getFarmTemperature() {
		return this.farmTemperature;
	}

	public void setFarmTemperature(Integer farmTemperature) {
		this.farmTemperature = farmTemperature;
	}

	public Integer getFarmHumidity() {
		return this.farmHumidity;
	}

	public void setFarmHumidity(Integer farmHumidity) {
		this.farmHumidity = farmHumidity;
	}

	public Integer getIllumination() {
		return this.illumination;
	}

	public void setIllumination(Integer illumination) {
		this.illumination = illumination;
	}

	public Integer getAirPressure() {
		return this.airPressure;
	}

	public void setAirPressure(Integer airPressure) {
		this.airPressure = airPressure;
	}

	public Integer getVentilation() {
		return this.ventilation;
	}

	public void setVentilation(Integer ventilation) {
		this.ventilation = ventilation;
	}

	public Date getDatetime() {
		return this.datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

}