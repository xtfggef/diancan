package com.adam.diancan.utils;

public class Constants {
	public static String ADDUSERSQL = "INSERT INTO bs_user (u_number, u_openid, u_credit, u_is_vip, u_mobile, u_password, u_is_shop, u_registry_time, u_point) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	public static String CHECKMOBILE = "SELECT u_mobile FROM bs_user WHERE u_mobile = ?";
	public static String CHECKOPENID = "SELECT u_openid FROM bs_user WHERE u_openid = ?";
	public static final String ADDPOINT = "UPDATE bs_user set u_point = ? WHERE u_openid = ?";
}
