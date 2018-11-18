package com.zl.service.impl;

import cn.zl.common.Const;
import cn.zl.common.ServerResponse;
import com.zl.dao.AdminMapper;
import com.zl.pojo.Admin;
import com.zl.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements IAdminService {
    /**
     * 校验是否是管理员
     *
     * @param user
     * @return
     */
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public ServerResponse checkAdminRole(Admin user) {
        //if(user != null && user.getRole().intValue() == Const.Role.ROLE_ADMIN){
        if (user != null && Integer.parseInt(user.getRole()) == Const.Role.ROLE_ADMIN) {
            return ServerResponse.createBySuccess(user.getRole());
        }

        return ServerResponse.createByError();
    }
    @Override
    public ServerResponse checkZhihangRole(Admin user) {
        if (user != null && Integer.parseInt(user.getRole()) == Const.Role.ROLE_ZHIHANG) {
            return ServerResponse.createBySuccess(user.getRole());
        }
        return ServerResponse.createByError();
    }
    @Override
    public ServerResponse checkFenHangRole(Admin user){
        if (user != null && Integer.parseInt(user.getRole()) == Const.Role.ROLE_FENGHANG) {
            return ServerResponse.createBySuccess(user.getRole());
        }
        return  ServerResponse.createByError();
    }
    @Override
    public ServerResponse checkFenhangManagerRole(Admin user) {
        if (user != null && Integer.parseInt(user.getRole()) == Const.Role.ROLE_FENGHANGMANAGER) {
            return ServerResponse.createBySuccess(user.getRole());
        }
        return  ServerResponse.createByError();
    }
    @Override
    public ServerResponse checkFinalRole(Admin user){
        if (user != null && Integer.parseInt(user.getRole()) == Const.Role.ROLE_FINALHANG) {
            return ServerResponse.createBySuccess(user.getRole());
        }
        return  ServerResponse.createByError();
    }
}
