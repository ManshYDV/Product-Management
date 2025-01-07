package productproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productproject.dao.ProductDAO;
import productproject.model.Product;

@Controller
public class MainController {
	@Autowired
	private ProductDAO productDao;

	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("products", products);
		return "index";
	}

	@RequestMapping("/addProduct")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "addProduct";
	}

	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest req) {
		// System.out.println(product);
		productDao.create(product);
		RedirectView view = new RedirectView();
		view.setUrl(req.getContextPath() + "/");
		return view;
	}

	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int id, HttpServletRequest req) {
		this.productDao.delete(id);
		RedirectView view = new RedirectView();
		view.setUrl(req.getContextPath() + "/");
		return view;
	}

	@RequestMapping("/update/{productId}")
	public String updateProduct(@PathVariable("productId") int id, Model m) {
		Product product = this.productDao.getProduct(id);
		m.addAttribute("product", product);
		return "updateProduct";
	}
}
