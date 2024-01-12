package productcrudapp.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.Model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public  void  CreateProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	public List<Product> getProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	@Transactional 
	public void Delete(int Pid) {
		
		Product p=this.hibernateTemplate.load(Product.class,Pid);
		this.hibernateTemplate.delete(p);
		
	}
	
	public Product getProduct(int Pid) {
		return this.hibernateTemplate.get(Product.class, Pid);
		
	}
}
