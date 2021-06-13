package by.shilay.app.usermanagement.controller;

import by.shilay.app.usermanagement.exception.UserAccountNotFoundException;
import by.shilay.app.usermanagement.model.UserAccount;
import by.shilay.app.usermanagement.service.api.UserAccountService;
import by.shilay.app.usermanagement.util.ErrorThrower;
import by.shilay.app.usermanagement.util.UserAccountValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserAccountController {

    private final UserAccountService userAccountService;
    private final UserAccountValidator userAccountValidator;

    @Autowired
    public UserAccountController(UserAccountService userAccountService, UserAccountValidator userAccountValidator) {
        this.userAccountService = userAccountService;
        this.userAccountValidator = userAccountValidator;
    }

    @GetMapping
    public String findAll(Model model, @PageableDefault(sort = {"id"}, value = 5) Pageable pageable) {

        Page<UserAccount> page = userAccountService.findAll(pageable);

        model.addAttribute("page", page);
        model.addAttribute("urlAddress", "/user");
        model.addAttribute("totalElements", page.getTotalElements());
        return "list";
    }

    @GetMapping("/{id}")
    public String findOne(@PathVariable("id") Long id, Model model) throws UserAccountNotFoundException {
        model.addAttribute("userAccount", userAccountService.findOne(id));
        return "view";
    }

    @GetMapping("/new")
    public String create() {
        return "new";
    }

    @PostMapping("/new")
    public String create(@Valid UserAccount userAccount, BindingResult bindingResult, Model model) {
        userAccountValidator.validate(userAccount, bindingResult);
        if (bindingResult.hasErrors()) {
            model.mergeAttributes(ErrorThrower.getErrors(bindingResult));
            return "new";
        }
        userAccountService.create(userAccount);
        return "redirect:/user";
    }

    @GetMapping("/{id}/edit")
    public String update(@PathVariable("id") Long id, Model model) throws UserAccountNotFoundException {
        UserAccount userAccount = userAccountService.findOne(id);
        model.addAttribute("userAccount", userAccount);
        return "edit";
    }

    @PostMapping("/{id}/edit")
    public String update(@PathVariable("id") Long id, @Valid UserAccount userAccount, BindingResult bindingResult, Model model) throws UserAccountNotFoundException {
        UserAccount userAccountById = userAccountService.findOne(id);
        if (!userAccount.getUsername().equals(userAccountById.getUsername())) {
            userAccountValidator.validate(userAccount, bindingResult);
        }
        if (bindingResult.hasErrors()) {
            model.mergeAttributes(ErrorThrower.getErrors(bindingResult));
            return "edit";
        }

        userAccountService.update(id, userAccount);
        return "redirect:/user";
    }

    @PostMapping("/{id}/status")
    public String updateStatus(@PathVariable("id") Long id) throws UserAccountNotFoundException {
        userAccountService.updateStatus(id);
        return "redirect:/user/" + id;
    }
}
