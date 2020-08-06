package com.lmy.aiwen.service;

import com.lmy.aiwen.dto.PageResult;
import com.lmy.aiwen.dto.TbQuestionDto;

/**
 * @author Administrator
 * @version V1.0
 * @Project aiwen
 * @Package com.lmy.aiwen.service
 * @date 2020/8/6 19:00
 */
public interface TbQuestionService {

    PageResult<TbQuestionDto> findByPage(Integer page, Integer size);
}
