package com.livestock.model;

import java.util.Date;

/**
 * TbTreatment entity. @author MyEclipse Persistence Tools
 */

public class TbTreatment implements java.io.Serializable {

	// Fields

	private Integer treatmentId;
	private TbLivestock tbLivestock;
	private String livestockType;
	private String disease;
	private String diseaseCause;
	private String diseaseDiscription;
	private String treatmentDiscription;
	private Date diseaseTime;
	private String remark2;

	// Constructors

	/** default constructor */
	public TbTreatment() {
	}

	/** minimal constructor */
	public TbTreatment(TbLivestock tbLivestock, String livestockType,
			String disease, String diseaseCause, String diseaseDiscription,
			String treatmentDiscription, Date diseaseTime) {
		this.tbLivestock = tbLivestock;
		this.livestockType = livestockType;
		this.disease = disease;
		this.diseaseCause = diseaseCause;
		this.diseaseDiscription = diseaseDiscription;
		this.treatmentDiscription = treatmentDiscription;
		this.diseaseTime = diseaseTime;
	}

	/** full constructor */
	public TbTreatment(TbLivestock tbLivestock, String livestockType,
			String disease, String diseaseCause, String diseaseDiscription,
			String treatmentDiscription, Date diseaseTime, String remark2) {
		this.tbLivestock = tbLivestock;
		this.livestockType = livestockType;
		this.disease = disease;
		this.diseaseCause = diseaseCause;
		this.diseaseDiscription = diseaseDiscription;
		this.treatmentDiscription = treatmentDiscription;
		this.diseaseTime = diseaseTime;
		this.remark2 = remark2;
	}

	// Property accessors

	public Integer getTreatmentId() {
		return this.treatmentId;
	}

	public void setTreatmentId(Integer treatmentId) {
		this.treatmentId = treatmentId;
	}

	public TbLivestock getTbLivestock() {
		return this.tbLivestock;
	}

	public void setTbLivestock(TbLivestock tbLivestock) {
		this.tbLivestock = tbLivestock;
	}

	public String getLivestockType() {
		return this.livestockType;
	}

	public void setLivestockType(String livestockType) {
		this.livestockType = livestockType;
	}

	public String getDisease() {
		return this.disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getDiseaseCause() {
		return this.diseaseCause;
	}

	public void setDiseaseCause(String diseaseCause) {
		this.diseaseCause = diseaseCause;
	}

	public String getDiseaseDiscription() {
		return this.diseaseDiscription;
	}

	public void setDiseaseDiscription(String diseaseDiscription) {
		this.diseaseDiscription = diseaseDiscription;
	}

	public String getTreatmentDiscription() {
		return this.treatmentDiscription;
	}

	public void setTreatmentDiscription(String treatmentDiscription) {
		this.treatmentDiscription = treatmentDiscription;
	}

	public Date getDiseaseTime() {
		return this.diseaseTime;
	}

	public void setDiseaseTime(Date diseaseTime) {
		this.diseaseTime = diseaseTime;
	}

	public String getRemark2() {
		return this.remark2;
	}

	public void setRemark2(String remark2) {
		this.remark2 = remark2;
	}

}