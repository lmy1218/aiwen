package com.lmy.aiwen.mapper;

import com.lmy.aiwen.enttity.TbQuestion;

import java.util.List;

/**
 * @author Administrator
 * @version V1.0
 * @Project aiwen
 * @Package com.lmy.aiwen.mapper
 * @date 2020/8/6 16:57
 */
public interface TbQuestionMapper {

    List<TbQuestion> selectAll();
}
