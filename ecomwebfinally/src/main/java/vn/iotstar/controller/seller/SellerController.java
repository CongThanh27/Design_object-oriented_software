package vn.iotstar.controller.seller;

import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import vn.iotstar.entity.Category;
import vn.iotstar.entity.Order;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Store;
import vn.iotstar.entity.User;
import vn.iotstar.model.ProductModel;
import vn.iotstar.service.ICategoryService;
import vn.iotstar.service.IDeliveryService;
import vn.iotstar.service.IOrderService;
import vn.iotstar.service.IProductService;
import vn.iotstar.service.IStoreService;
import vn.iotstar.service.IUserService;

@Controller
@RequestMapping("/seller")
public class SellerController {

	@Autowired
	IUserService userService;

	@Autowired
	IOrderService orderService;

	@Autowired
	IDeliveryService deliveryService;

	@Autowired
	IProductService productService;

	@Autowired
	IStoreService storeService;

	@Autowired
	ICategoryService cateService;

	@Autowired
	HttpSession session;

	@Autowired
	ServletContext application;

	@GetMapping("/notSeller")
	public String regisSeller(ModelMap model) {
		User user = (User) session.getAttribute("user");
		Optional<Store> optStore = storeService.findByUser(user);
		Store store = new Store();
		if (optStore.isPresent()) {
			store = optStore.get();
		}
		model.addAttribute("store", store);
		return "/seller/notSeller";
	}

	@RequestMapping("")
	public String sellerPage(ModelMap model) {
		User user = (User) session.getAttribute("user");
		Optional<Store> optStore = storeService.findByUser(user);
		if (user.getIsSeller() == false) {
			return "redirect:/seller/notSeller";
		} else {
			if (optStore.isPresent()) {
				if (optStore.get().getIsactive() == false)
					return "redirect:/seller/notSeller";
			}
		}
		model.addAttribute("user", user);
		Store store = user.getStores();
		List<Order> allOrder = orderService.findAllByStore(store);
		Integer orderCount = allOrder.size();
		Integer notProcessCount = 0;
		Integer shippedCount = 0;
		Integer finishCount = 0;
		double salesFigure = 0;
		int maxMonth = 1;

		for (Order order : allOrder) {
			if (order.getGiaohang() == 1) {
				notProcessCount++;
			} else if (order.getGiaohang() == 2) {
				shippedCount++;
			} else if (order.getGiaohang() == 4) {
				salesFigure += order.getPrice();
				finishCount++;
			}
			if (order.getCreateat().getMonth() > maxMonth) {
				maxMonth = order.getCreateat().getMonth();
			}
		}

		List<String> monthList = new ArrayList<>();
		for (int i = 0; i < maxMonth; i++) {
			monthList.add("Tháng " + String.valueOf(i + 1));
		}

		List<Integer> values = new ArrayList<>();
		int startMonth = 1;
		for (String month : monthList) {
			values.add(orderCount(startMonth, allOrder));
			startMonth++;
		}

		Gson gson = new Gson();
		String labelsJson = gson.toJson(monthList);
		model.addAttribute("choxacnhan", notProcessCount);

		// Lay don da xu ly
		model.addAttribute("daxuly", shippedCount);

		// Lay so san pham da het hang
		List<Product> allProduct = productService.findByStore(store);
		Integer productOOS = 0;
		for (Product product : allProduct) {
			if (product.getQuantity().equals(product.getSold())) {
				productOOS++;
			}
		}

		model.addAttribute("tsp", optStore.get().getCarts().size());

		model.addAttribute("chitieu", 30);

		model.addAttribute("hoangtatmuahang", notProcessCount);

		model.addAttribute("hoangtatthanhtoan", finishCount);

		model.addAttribute("sanphamhethang", productOOS);

		// Tinh doanh thu
		model.addAttribute("doanhthu", salesFigure);

		model.addAttribute("labelsJson", labelsJson);

		// model.addAttribute("labels", monthList);
		model.addAttribute("values", values);

		// bieu do doanh thu

		return "/seller/home";
	}

	@GetMapping("/product")
	public String productList(ModelMap model) {
		User user = (User) session.getAttribute("user");
		Store store = user.getStores();
		System.out.println("User " + user.getId());
		System.out.println("Store " + store.getId());
		List<Product> product = productService.findByStore(store);
		List<Category> cate = new ArrayList<>();
		for (Product prod : product) {
			Category obj = prod.getCategory();
			if (cate.contains(obj)) {
				continue;
			} else {
				cate.add(obj);
			}
		}
		model.addAttribute("product", product);
		model.addAttribute("category", cate);
		return "/seller/product/list";
	}

	@GetMapping("/addOrEdit")
	public String showAddProduct(ModelMap model) {
		ProductModel product = new ProductModel();
		List<Category> categoryList = cateService.findAll();
		product.setIsEdit(false);
		model.addAttribute("product", product);
		model.addAttribute("categoryList", categoryList);
		return "seller/product/addOrEdit";
	}
	@PostMapping("/deleteProduct")
	public String deleteProduct(ModelMap model, @Valid @RequestParam("id") Integer id,
			BindingResult result) {
		Optional<Product> optProduct = productService.findById(id);
		if (optProduct.isPresent()) {
			productService.deleteById(id);
		}
		
		return "redirect:/seller/product";
	}

	@PostMapping("/saveOrUpdate")
	public String saveOrUpdate(ModelMap model, @Valid @ModelAttribute("product") ProductModel product,
			BindingResult result) {

		Product entity;

		if (!product.getListImageFile().isEmpty()) {
			String path = application.getRealPath("/");

			try {
				product.setListimage(product.getListImageFile().getOriginalFilename());
				String filePath = path + "/resources/images/" + product.getListimage();
				product.getListImageFile().transferTo(Path.of(filePath));
				product.setListImageFile(null);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (!product.getListImageFile1().isEmpty()) {
			String path1 = application.getRealPath("/");

			try {
				product.setListimage1(product.getListImageFile1().getOriginalFilename());
				String filePath1 = path1 + "/resources/images/" + product.getListimage1();
				product.getListImageFile1().transferTo(Path.of(filePath1));
				product.setListImageFile1(null);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (!product.getListImageFile2().isEmpty()) {
			String path2 = application.getRealPath("/");

			try {
				product.setListimage2(product.getListImageFile2().getOriginalFilename());
				String filePath2 = path2 + "/resources/images/" + product.getListimage2();
				product.getListImageFile2().transferTo(Path.of(filePath2));
				product.setListImageFile2(null);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (product.getId() != null) { // sản phẩm đã tồn tại trong cơ sở dữ liệu
			Optional<Product> opt = productService.findById(product.getId());
			if (opt.isPresent()) { // nếu sản phẩm được tìm thấy
				entity = opt.get();
				Optional<Category> optCate = cateService.findById(product.getCategoryid());
				BeanUtils.copyProperties(product, entity); // sao chép thuộc tính từ ProductModel vào Product
				entity.setUpdateat(new java.sql.Date(System.currentTimeMillis()));
				if (optCate.isPresent()) {
					entity.setCategory(optCate.get());
				}
				productService.save(entity); // lưu trữ sự thay đổi
				return "redirect:/seller/product";
			} else { // nếu sản phẩm không tìm thấy trong cơ sở dữ liệu
				model.addAttribute("message", "Sản phẩm không tồn tại");
				return "seller/product/addOrEdit";
			}
		} else { // sản phẩm mới
			entity = new Product();
			BeanUtils.copyProperties(product, entity); // sao chép thuộc tính từ ProductModel vào Product
			User user = (User) session.getAttribute("user");
			Store store = user.getStores();
			Optional<Category> optCate = cateService.findById(product.getCategoryid());
			long millis = System.currentTimeMillis();
			java.sql.Date date = new java.sql.Date(millis);
			entity.setCategory(optCate.get());
			entity.setStore(store);
			entity.setCreateat(date);
			entity.setSold(0);
			entity.setRating(0);
			productService.save(entity); // lưu trữ sản phẩm mới
			return "redirect:/seller/product";
		}
	}

	@GetMapping("/edit/{id}")
	public ModelAndView edit(ModelMap model, @PathVariable("id") int id) throws IOException {
		Optional<Product> opt = productService.findById(id);
		List<Category> categoryList = cateService.findAll();

		ProductModel product = new ProductModel();
		if (opt.isPresent()) {
			Product entity = opt.get();
			BeanUtils.copyProperties(entity, product);
			product.setCategoryid(entity.getCategory().getId());
			product.setStoreid(entity.getStore().getId());
			product.setIsEdit(true);
			model.addAttribute("product", product);
			model.addAttribute("categoryList", categoryList);
			return new ModelAndView("/seller/product/addOrEdit", model);
		}
		model.addAttribute("message", "Product không tồn tại");
		return new ModelAndView("redirect:/seller/product", model);
	}

	@GetMapping("/order")
	public String showSellerOrder(ModelMap model) {
		User user = (User) session.getAttribute("user");
		Store store = user.getStores();
		List<Order> order = orderService.findAllByStore(store);
		Integer choxacnhan = 0;
		Integer dahuy = 0;
		Integer danggiaohang = 0;
		Integer danhanhang = 0;
		for (Order obj : order) {
			if (obj.getGiaohang() == 0) {
				dahuy++;
			} else if (obj.getGiaohang() == 1) {
				choxacnhan++;
			} else if (obj.getGiaohang() == 3) {
				danggiaohang++;
			} else if (obj.getGiaohang() == 4) {
				danhanhang++;
			}
		}
		model.addAttribute("choxacnhan", choxacnhan);
		model.addAttribute("dahuy", dahuy);
		model.addAttribute("danggiaohang", danggiaohang);
		model.addAttribute("danhanhang", danhanhang);
		model.addAttribute("order", order);
		return "/seller/order/list";
	}
	

	@GetMapping("/process/{id}")
	public String orderProcess(ModelMap model, @PathVariable("id") int id) {
		Order order = orderService.findById(id).get();
		order.setGiaohang(2);
		orderService.save(order);
		return "redirect:/seller/order";
	}

	@GetMapping("/ship/{id}")
	public String shipProcess(@PathVariable("id") int id) {
		Order order = orderService.findById(id).get();
		order.setGiaohang(3);
		orderService.save(order);
		return "redirect:/seller/order";
	}

	@GetMapping("/delete/{id}")
	public String deleteOrder(@PathVariable("id") int id) {
		orderService.deleteById(id);
		return "redirect:/seller/order";

	}

	private Integer orderCount(int i, List<Order> orderList) {
		int count = 0;
		for (Order order : orderList) {
			if (order.getCreateat().getMonth() == i) {
				count += 1;
			}
		}
		return count;
	}

}
