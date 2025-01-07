package productproject.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productproject.model.Product;

@Component
public class ProductDAO {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void create(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}

	public List<Product> getProducts() {
		List<Product> list = this.hibernateTemplate.loadAll(Product.class);
		return list;
	}

	@Transactional
	public void delete(int id) {
		Product p = this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(p);
	}

	public Product getProduct(int id) {
		Product product = this.hibernateTemplate.get(Product.class, id);
		return product;
	}
}
