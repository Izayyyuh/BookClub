package com.isaiahs.bookClub.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.isaiahs.bookClub.models.Book;
import com.isaiahs.bookClub.services.BookService;
import com.isaiahs.bookClub.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/books")
public class BookController {
	@Autowired
	private BookService bookService;
	@Autowired
	private UserService userService;
	
	@GetMapping("/new")
	public String index(@ModelAttribute ("newBook") Book newBook, BindingResult result, Model viewModel ) {
			viewModel.addAttribute("allBooks", bookService.allBooks());
		return "createBook.jsp";
	}
	
	@PostMapping("/create")
	public String createBook(@Valid @ModelAttribute ("newBook") Book newBook, BindingResult result, Model viewModel, HttpSession session ) {
		if(result.hasErrors()) {
			viewModel.addAttribute("allBooks", bookService.allBooks());
			return "createBook.jsp";
		}
		newBook.setCreator(this.userService.findById((Long)session.getAttribute("userId")));
		this.bookService.createBook(newBook);
		return "redirect:/books";
	}
	
	@RequestMapping("/{bookId}")
	public String edit(@PathVariable("bookId")Long id, Model viewModel) {
		viewModel.addAttribute("viewBook", this.bookService.findBook(id));
		return "view.jsp";
	}
}
