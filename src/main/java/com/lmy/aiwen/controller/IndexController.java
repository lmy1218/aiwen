package com.lmy.aiwen.controller;
/**
 * @Project aiwen
 * @Package com.lmy.aiwen.controller
 * @author Administrator
 * @date 2020/8/5 16:56
 * @version V1.0
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Lmy
 * @ClassName IndexController
 * @Description 控制器
 * @date 2020/8/5 16:56
 **/
@Controller
public class IndexController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

}
