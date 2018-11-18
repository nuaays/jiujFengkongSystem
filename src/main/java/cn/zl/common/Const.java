package cn.zl.common;

public class Const {
	public static final String EMAIL = "email";
	public static final String USERNAME ="username";
	public static final String CURRENT_USER ="currentUser";
	public static final String NAME = "name";
	
	public interface Role{
		int ROLE_CUSTOMER = 0 ;//普通用户
		int ROLE_ADMIN = 1;//管理员
		int ROLE_ZHIHANG = 2;//支行管理人员
		int ROLE_FENGHANG =3;//分行员工
		int ROLE_FENGHANGMANAGER = 4;//分行经理人
		int ROLE_FINALHANG = 5;//总行
	}
	
	

}
