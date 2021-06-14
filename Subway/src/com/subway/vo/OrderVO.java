package com.subway.vo;

public class OrderVO {
	String idx,sub,bread_choice,cheese_choice,kor_name,image_path,
	sauce_choice,side_choice,single_set,cookie_choice,beverage_choice,vegetable_list,count,total_price;
	
	String[] vegetable_choice;
	int price;

	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	public String getKor_name() {
		return kor_name;
	}

	public void setKor_name(String kor_name) {
		this.kor_name = kor_name;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getTotal_price() {
		return total_price;
	}

	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public String getBread_choice() {
		return bread_choice;
	}

	public void setBread_choice(String bread_choice) {
		this.bread_choice = bread_choice;
	}

	public String getCheese_choice() {
		return cheese_choice;
	}

	public void setCheese_choice(String cheese_choice) {
		this.cheese_choice = cheese_choice;
	}

	public String[] getVegetable_choice() {
		return vegetable_choice;
	}

	public void setVegetable_choice(String[] vegetable_choice) {
		this.vegetable_choice = vegetable_choice;
	}

	public String getSauce_choice() {
		return sauce_choice;
	}

	public void setSauce_choice(String sauce_choice) {
		this.sauce_choice = sauce_choice;
	}

	public String getSide_choice() {
		return side_choice;
	}

	public void setSide_choice(String side_choice) {
		this.side_choice = side_choice;
	}

	public String getSingle_set() {
		return single_set;
	}

	public void setSingle_set(String single_set) {
		this.single_set = single_set;
	}

	public String getCookie_choice() {
		return cookie_choice;
	}

	public void setCookie_choice(String cookie_choice) {
		this.cookie_choice = cookie_choice;
	}

	public String getBeverage_choice() {
		return beverage_choice;
	}

	public void setBeverage_choice(String beverage_choice) {
		this.beverage_choice = beverage_choice;
	}
	
	public String getVegetable_list() {
		if(vegetable_list == null) {
			vegetable_list = "";
			for(int i=0;i<vegetable_choice.length;i++) {
				if(i == 0) {
					vegetable_list += vegetable_choice[i];
				}else {
					vegetable_list += ", " + vegetable_choice[i];
				}
			}
		}
		
		return vegetable_list;
	}
	
}
