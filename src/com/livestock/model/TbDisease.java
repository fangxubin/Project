package com.livestock.model;

/**
 * TbDisease entity. @author MyEclipse Persistence Tools
 */

public class TbDisease implements java.io.Serializable {

	// Fields

	private Integer diseaseId;
	private String diseaseName;
	private String diseaseSymptoms;
	private String treatmentMethod;
	private String precautions;

	// Constructors

	/** default constructor */
	public TbDisease() {
	}

	/** minimal constructor */
	public TbDisease(String diseaseName, String diseaseSymptoms,
			String treatmentMethod) {
		this.diseaseName = diseaseName;
		this.diseaseSymptoms = diseaseSymptoms;
		this.treatmentMethod = treatmentMethod;
	}

	/** full constructor */
	public TbDisease(String diseaseName, String diseaseSymptoms,
			String treatmentMethod, String precautions) {
		this.diseaseName = diseaseName;
		this.diseaseSymptoms = diseaseSymptoms;
		this.treatmentMethod = treatmentMethod;
		this.precautions = precautions;
	}

	// Property accessors

	public Integer getDiseaseId() {
		return this.diseaseId;
	}

	public void setDiseaseId(Integer diseaseId) {
		this.diseaseId = diseaseId;
	}

	public String getDiseaseName() {
		return this.diseaseName;
	}

	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}

	public String getDiseaseSymptoms() {
		return this.diseaseSymptoms;
	}

	public void setDiseaseSymptoms(String diseaseSymptoms) {
		this.diseaseSymptoms = diseaseSymptoms;
	}

	public String getTreatmentMethod() {
		return this.treatmentMethod;
	}

	public void setTreatmentMethod(String treatmentMethod) {
		this.treatmentMethod = treatmentMethod;
	}

	public String getPrecautions() {
		return this.precautions;
	}

	public void setPrecautions(String precautions) {
		this.precautions = precautions;
	}

}