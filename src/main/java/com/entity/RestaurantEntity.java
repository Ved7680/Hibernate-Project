package com.entity;

import org.hibernate.validator.constraints.Length;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

@Entity
@Table(name="restaurant")
public class RestaurantEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer restaurantId;
	
	@NotBlank(message = "Please Enter Restaurant Name")
	@Pattern(regexp="[a-zA-Z\\s]+", message="Please Enter Valid Restaurant Name")
	private String name;
	
	@NotBlank(message = "Please Enter Restaurant Address")
	private String address;
	
	@NotBlank(message = "Please Enter Restaurant Category")
	@Length(min=3, max=20, message="Please Enter Category between 3 to 20 characters")
	private String category;
	
	public Integer getRestaurantId() {
		return restaurantId;
	}
	public void setRestaurantId(Integer restaurantId) {
		this.restaurantId = restaurantId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
