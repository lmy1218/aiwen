package com.lmy.aiwen.dto;
/**
 * @Project aiwen
 * @Package com.lmy.aiwen.dto
 * @author Administrator
 * @date 2020/8/6 17:12
 * @version V1.0
 */

import com.lmy.aiwen.enttity.TbQuestion;
import com.lmy.aiwen.enttity.TbUser;

/**
 * @author Lmy
 * @ClassName TbQuestionDto
 * @Description 问题返回接口
 * @date 2020/8/6 17:12
 **/

public class TbQuestionDto extends TbQuestion {

    private TbUser user;

    public TbUser getUser() {
        return user;
    }

    public void setUser(TbUser user) {
        this.user = user;
    }
}
