package com.lmy.aiwen.service.impl;
/**
 * @Project aiwen
 * @Package com.lmy.aiwen.service.impl
 * @author Administrator
 * @date 2020/8/6 19:32
 * @version V1.0
 */

import com.lmy.aiwen.enttity.TbUser;
import com.lmy.aiwen.mapper.TbUserMapper;
import com.lmy.aiwen.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Lmy
 * @ClassName TbUserServiceImpl
 * @Description 用户业务类
 * @date 2020/8/6 19:32
 **/
@Service
public class TbUserServiceImpl implements TbUserService {

    @Autowired
    private TbUserMapper tbUserMapper;

    @Override
    public TbUser getUserById(Long id) {
        return tbUserMapper.selectUserById(id);
    }
}
