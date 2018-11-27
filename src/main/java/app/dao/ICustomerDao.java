package app.dao;

import app.models.Customer;

import java.util.List;

/**
 * This interface establishes a standard to be implemented by
 * the classes that implement it - particularly CustomerDaoImpl
 *
 * @author srzyl
 */

public interface ICustomerDao {

    /**
     * Retrive a list of all customers from the database
     *
     * @return List<Cutomer>
     */
    public List<Customer> listAll();

    /**
     * Save one particular customer to the database
     *
     * @param customer object
     * @return
     */
    public int save(Customer customer); //Post

    /**
     * Finds a customer with a particular id
     *
     * @param id
     * @return Customer object
     */
    public Customer findById(int id); // GET

    public void update(Customer customer);

    public void removeById(int id);

    void suspend(int id);
    void reactivate(int id);
    /**
     * Method return the Customer object when customer logs in or returns Null
     *
     * @param email
     * @param password
     * @return Customer
     */
    public Customer queryCustomer(String email, String password);
    
    public String updateStatus(Customer customer);

	public Customer findByEmail(String email);
	
	public String updatePassword(Customer customer);
	
	public String updateToken(Customer customer);

    int deleteUser(Integer id);
}
