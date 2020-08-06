package com.lmy.aiwen.service.impl;
/**
 * @Project aiwen
 * @Package com.lmy.aiwen.service.impl
 * @author Administrator
 * @date 2020/8/6 19:01
 * @version V1.0
 */

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lmy.aiwen.dto.PageResult;
import com.lmy.aiwen.dto.TbQuestionDto;
import com.lmy.aiwen.enttity.TbQuestion;
import com.lmy.aiwen.enttity.TbUser;
import com.lmy.aiwen.mapper.TbQuestionMapper;
import com.lmy.aiwen.mapper.TbUserMapper;
import com.lmy.aiwen.service.TbQuestionService;
import com.lmy.aiwen.service.TbUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Lmy
 * @ClassName TbQuestionServiceImpl
 * @Description 问题业务类
 * @date 2020/8/6 19:01
 **/
@Service
public class TbQuestionServiceImpl implements TbQuestionService {

    @Autowired
    private TbQuestionMapper tbQuestionMapper;

    @Autowired
    private TbUserService tbUserServiceImpl;

    @Override
    public PageResult<TbQuestionDto> findByPage(Integer page, Integer size) {
        if (page < 1) {
            page = 1;
        }
        // 设置分页参数
        PageHelper.startPage(page, size);

        // 查询
        List<TbQuestion> list = tbQuestionMapper.selectAll();
        // 解析结果
        PageInfo<TbQuestion> info = new PageInfo<>(list);
        List<TbQuestion> questions = info.getList();
        // 查询相应的用户
        List<TbQuestionDto> questionDtos = questions.stream().map(q -> {
            TbQuestionDto dto = new TbQuestionDto();
            BeanUtils.copyProperties(q, dto);
            TbUser user = tbUserServiceImpl.getUserById(q.getCreatorId());
            if (user != null) {
                dto.setUser(user);
            } else {
                dto.setUser(new TbUser("未知作者"));
            }
            return dto;
        }).collect(Collectors.toList());

        // 组装返回结果
        PageResult<TbQuestionDto> pageRe = new PageResult<>();
        pageRe.setList(questionDtos);
        pageRe.setCurrPage(info.getPageNum());
        pageRe.setPageSize(info.getPageSize());
        pageRe.setTotalCount(info.getTotal());
        pageRe.setTotalPage(info.getPages());

        return pageRe;
    }
}
