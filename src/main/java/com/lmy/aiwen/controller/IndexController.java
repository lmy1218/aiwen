package com.lmy.aiwen.controller;
/**
 * @Project aiwen
 * @Package com.lmy.aiwen.controller
 * @author Administrator
 * @date 2020/8/5 16:56
 * @version V1.0
 */

import com.lmy.aiwen.dto.PageResult;
import com.lmy.aiwen.dto.TbQuestionDto;
import com.lmy.aiwen.service.TbQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Lmy
 * @ClassName IndexController
 * @Description 控制器
 * @date 2020/8/5 16:56
 **/
@Controller
public class IndexController {

    @Autowired
    private TbQuestionService tbQuestionServiceImpl;

    /**
     * 首页数据展示
     * @param model
     * @param page
     * @param size
     * @return
     */
    @RequestMapping("/")
    public String index(Model model,
                        @RequestParam(defaultValue = "1") Integer page,
                        @RequestParam(defaultValue = "5") Integer size) {
        PageResult<TbQuestionDto> questionPage = tbQuestionServiceImpl.findByPage(page, size);
        model.addAttribute("questioinPage", questionPage);
        return "index";
    }

}
