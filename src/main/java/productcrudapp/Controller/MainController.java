package productcrudapp.Controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.Dao.ProductDao;
import productcrudapp.Model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao dao;

	@RequestMapping("/")
	public String Home(Model m) {

		List<Product> products = dao.getProducts();
		m.addAttribute("products", products);

		return "index";
	}

	@RequestMapping("/addproduct")
	public String addproduct(Model m) {
		m.addAttribute("tittle", "Add product");
		return "addproductform";
	}

	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView Hahandleproduct(@ModelAttribute Product product, HttpServletRequest s) {
		System.out.println(product);
		dao.CreateProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(s.getContextPath() + "/");

		return redirectView;

	}

	@RequestMapping("/delete/{productId}")
	public RedirectView DeleteProduct(@PathVariable("productId") int productId, HttpServletRequest s) {
		this.dao.Delete(productId);

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(s.getContextPath() + "/");

		return redirectView;

	}
	
	@RequestMapping("/update/{productId}")
	public String UpdateForm(@PathVariable("productId") int pid,Model m) {
		Product product = this.dao.getProduct(pid);
		m.addAttribute("product", product);
		
		
		return "update-form";
	}
	 
	 
	}
