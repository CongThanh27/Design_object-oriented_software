package vn.iotstar.controller.Common;

import java.lang.reflect.InvocationTargetException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.iotstar.entity.Cart;
import vn.iotstar.entity.CartItem;
import vn.iotstar.entity.Category;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Store;
import vn.iotstar.entity.User;
import vn.iotstar.model.StoreModel;
import vn.iotstar.model.UserModel;
import vn.iotstar.service.ICartItemService;
import vn.iotstar.service.ICategoryService;
import vn.iotstar.service.IProductService;
import vn.iotstar.service.IStoreService;
import vn.iotstar.service.IUserService;

@Controller
@RequestMapping("")
public class LoginController {

	@Autowired
	IUserService userService;

	@Autowired
	HttpSession session;
	@Autowired
	ServletContext application;
	@Autowired
	ICategoryService categoryService;

	@Autowired
	IProductService productService;

	@Autowired
	ICartItemService iCartItemService;

	
	@Autowired
	IStoreService storeService;


	@RequestMapping("/login")
	public String showLogin() {
		return "/login";
	}

	@PostMapping("/")
	public String home(ModelMap model, @RequestParam("email") String email,
			@RequestParam("hashedpassword") String hashedpassword, HttpSession session,RedirectAttributes ra) {
		session.removeAttribute("message");
		if (userService.checkLogin(email, hashedpassword)) {
			User user = userService.findByEmail(email);
			session.setAttribute("user", user);
			model.addAttribute("user", user);
			
			List<Category> cate = categoryService.findTop3ByOrderByIdAsc();
			model.addAttribute("category", cate);

			List<Product> list = productService.findTop10ByOrderByCreateatDesc();
			List<Product> productList = new ArrayList<>();
			for (Product p: list) {
				if (p.getIsselling() == true) {
					productList.add(p);
				}
			}
			model.addAttribute("product", productList);

			List<Product> listBest = productService.findTop13ByOrderBySoldDesc();
			List<Product> productBestList = new ArrayList<>();
			for (Product p: listBest) {
				if (p.getIsselling() == true) {
					productBestList.add(p);
				}
			}
			model.addAttribute("productb", productBestList);

			long soSanPhamTrongGio = 0;
			if (user != null) {
				for (Cart cart : user.getCarts()) {
					Cart cartn = cart;
					soSanPhamTrongGio += iCartItemService.countByCart(cartn);
				}
			}

			model.addAttribute("count", soSanPhamTrongGio);
			if (user.getRole() == true) {
				session.removeAttribute("message");
				return "redirect:/admin/ThongKe/1";
				
			}
			return "index";
			} else {
				session.setAttribute("message", "Email or Password not exist");
			System.out.println("Login that bai");
		}
		return "redirect:/login";
	}

	@GetMapping("/register")
	public String showregister(ModelMap model) {
		UserModel user = new UserModel();
		user.setIsEdit(false);
		model.addAttribute("user", user);
		return "/register";
	}

	@PostMapping("/register")
	public String register(Model model, @Valid @ModelAttribute("user") UserModel user) {
		String message = null;
		User entity = new User();
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		if (userService.findByEmail(user.getEmail()) == null && userService.findByPhone(user.getPhone()) == null) {
			if (user.getHashedpassword().equals(user.getConfirmPassword())) {
				try {
					BeanUtils.copyProperties(entity, user);
					entity.setCreateat(date);
					userService.save(entity);
					return ("redirect:/login");
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				message = "Tài khoản hoặc mật khẩu không đúng";
				model.addAttribute("message", message);
			}
		}
		return "redirect:/register";
	}

	@RequestMapping("/forgotpassword")
	public String showForgotPassword() {
		return "/forgotpassword";
	}

	@PostMapping("/forgotpassword")
	public String RecoverPassword(ModelMap model, @RequestParam("email") String email, HttpSession session) {
		User user = userService.findByEmail(email);
		if (userService.checkRecover(email)) {
			model.addAttribute("email", email);
			return "redirect:/recoverpassword/" + user.getEmail();
		} else {
			return "/forgotpassword";
		}
	}

	@GetMapping("/")
	public String showHome(ModelMap model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		List<Category> cate = categoryService.findTop3ByOrderByIdAsc();
		model.addAttribute("category", cate);

		List<Product> list = productService.findTop10ByOrderByCreateatDesc();
		List<Product> productList = new ArrayList<>();
		for (Product p: list) {
			if (p.getIsselling() == true) {
				productList.add(p);
			}
		}
		model.addAttribute("product", productList);

		List<Product> listBest = productService.findTop13ByOrderBySoldDesc();
		List<Product> productBestList = new ArrayList<>();
		for (Product p: listBest) {
			if (p.getIsselling() == true) {
				productBestList.add(p);
			}
		}
		model.addAttribute("productb", productBestList);

		long soSanPhamTrongGio = 0;
		if (user != null) {
			for (Cart cart : user.getCarts()) {
				Cart cartn = cart;
				soSanPhamTrongGio += iCartItemService.countByCart(cartn);
			}
		}
		model.addAttribute("count", soSanPhamTrongGio);
		return "index";
	}

	@GetMapping("/recoverpassword/{email}")
	public String showRecoverPassword(@PathVariable String email, Model model) {
		model.addAttribute("email", email);
		return "/recoverpassword";
	}

	@PostMapping("/recoverpassword")
	public String recoverPassword(@RequestParam String hashedpassword, @RequestParam String confirmPassword,
			@RequestParam String email, HttpSession session) {
		User user = userService.findByEmail(email);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		// Ham bam
		// String encryptPsw
		if (hashedpassword.equals(confirmPassword)) {
			user.setHashedpassword(hashedpassword);
			user.setUpdateat(date);
			User updateUser = userService.save(user);
			if (updateUser != null) {
				session.setAttribute("message", "Đổi mật khẩu thành công");
				return "redirect:/login";
			}
		}
		return "redirect:/forgotpassword";

	}
	@RequestMapping("/sellerRegister")
	public String showFormSellerRegister(ModelMap model) {
		StoreModel store = new StoreModel();
		model.addAttribute("store", store);
		return "/seller/register";
	}
	
	@PostMapping("/sellerRegister")
	public String sellerRegisterProcess(Model model, @Valid @ModelAttribute("store") StoreModel store) {
		User user = (User) session.getAttribute("user");
		String message = null;
		Store entity = new Store();
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		try {
			BeanUtils.copyProperties(entity, store);
			entity.setCreateat(date);
			entity.setIsactive(true);
			entity.setRating(0);
			entity.setUser(user);
			user.setIsSeller(true);
			storeService.save(entity);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/seller";
	}
}
