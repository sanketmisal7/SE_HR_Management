package DAO;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;


import VO.registerVO;

public class registerDAO {
	public static int insertNewUser(registerVO registerVO) 
	{
		int register_id = -1;
		
	try
	{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.save(registerVO);
			register_id = registerVO.getRegister_id();
			transaction.commit();
			}
			catch(Exception ex)
			{
				return -1;
			}
	return register_id;
	}
}
