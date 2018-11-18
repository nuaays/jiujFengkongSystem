package com.zl.service;

import cn.zl.common.ServerResponse;
import com.zl.pojo.Admin;

public interface IAdminService {
    ServerResponse<String> checkAdminRole(Admin user);
    ServerResponse<String> checkZhihangRole(Admin user);
    ServerResponse<String> checkFenHangRole(Admin user);
    ServerResponse<String>  checkFenhangManagerRole(Admin user);
    ServerResponse<String> checkFinalRole(Admin user);

}
