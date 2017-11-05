package net.skhu.dto;

public class Setting {

	String mentor_start_date;
	String mentor_expire_date;
	String mentee_start_date;
	String mentee_expire_date;
	int study_count;
	int max_mentor;
	int max_mentee;
	int min_mentee;
	int report_deadline;

	public String getMentor_start_date() {
		return mentor_start_date;
	}
	public void setMentor_start_date(String mentor_start_date) {
		this.mentor_start_date = mentor_start_date;
	}
	public String getMentor_expire_date() {
		return mentor_expire_date;
	}
	public void setMentor_expire_date(String mentor_expire_date) {
		this.mentor_expire_date = mentor_expire_date;
	}
	public String getMentee_start_date() {
		return mentee_start_date;
	}
	public void setMentee_start_date(String mentee_start_date) {
		this.mentee_start_date = mentee_start_date;
	}
	public String getMentee_expire_date() {
		return mentee_expire_date;
	}
	public void setMentee_expire_date(String mentee_expire_date) {
		this.mentee_expire_date = mentee_expire_date;
	}
	public int getStudy_count() {
		return study_count;
	}
	public void setStudy_count(int study_count) {
		this.study_count = study_count;
	}
	public int getMax_mentor() {
		return max_mentor;
	}
	public void setMax_mentor(int max_mentor) {
		this.max_mentor = max_mentor;
	}
	public int getMax_mentee() {
		return max_mentee;
	}
	public void setMax_mentee(int max_mentee) {
		this.max_mentee = max_mentee;
	}
	public int getMin_mentee() {
		return min_mentee;
	}
	public void setMin_mentee(int min_mentee) {
		this.min_mentee = min_mentee;
	}
	public int getReport_deadline() {
		return report_deadline;
	}
	public void setReport_deadline(int report_deadline) {
		this.report_deadline = report_deadline;
	}

}