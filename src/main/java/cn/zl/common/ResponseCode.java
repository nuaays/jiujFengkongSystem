package cn.zl.common;

public enum ResponseCode {
	SUCCESS(0,"SUCCESS"),//0表示成功
	ERROR(1,"ERROR"),
	NEED_LOGIN(10,"NEED_LOGIN"),//未登录
	ILLEGAL_ARGUMENT(2,"ILLEGAL_ARGUMENT");//非法
	
	
	private final int code;
	private final String desc;
	
	ResponseCode(int code,String desc) {
		this.code = code;
		this.desc = desc;
	}


	public int getCode() {
		return code;
	}

	public String getDesc() {
		return desc;
	}
	
	
	
	
}
