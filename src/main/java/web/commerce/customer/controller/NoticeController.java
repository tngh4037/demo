package web.commerce.customer.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import web.commerce.constant.ViewConstant;
import web.commerce.customer.service.NoticeService;

@Controller
@RequestMapping("/customer/notice")
@RequiredArgsConstructor
public class NoticeController {

    private final NoticeService noticeService;

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("noticeList", noticeService.getList());
        return ViewConstant.CUSTOMER_NOTICE_LIST;
    }

    @GetMapping("/detail")
    public String detail(@RequestParam Integer noticeNo, Model model) {
        model.addAttribute("noticeDetail", noticeService.getDetail(noticeNo));
        return ViewConstant.CUSTOMER_NOTICE_DETAIL;
    }
}
