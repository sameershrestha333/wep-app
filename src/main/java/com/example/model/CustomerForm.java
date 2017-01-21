package com.example.model;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

/*import org.springframework.format.annotation.DateTimeFormat;
*/
public class CustomerForm {

	@Pattern(regexp = "[a-zA-Z]+", message = "{invalidUsername}")
	@Size(min = 6, max = 50, message = "{userNameSize}")
	@NotEmpty(message = "{emptyField}")
	public String username;

	@NotEmpty(message = "{emptyField}")
	public String address;

	@NotNull(message = "{emptyField}")
	// @DateTimeFormat(pattern="dd-MM-yyyy")
	// @Past(message = "{invalidDOB}")
	public Date birthdate;

	@NotEmpty(message = "{emptyField}")
	@Size(min = 6, max = 50, message = "{passwordSize}")
	public String password;

	@NotEmpty(message = "{emptyField}")

	
	public String sex;

	public CustomerForm() {
		super();
	}

	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getBirthdate() throws ParseException {
		// return birthdate;
	
		//return df.format(birthdate);
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

}
