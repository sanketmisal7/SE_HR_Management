package DAO;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.registerVO;
import VO.submitjobVO;

public class submitjobDAO {

	public static int  submitevent(submitjobVO event) {
	
	
		int event_id = -1;
		
		try
		{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				session.save(event);
				event_id = event.getEvent_id();
				transaction.commit();
				}
				catch(Exception ex)
				{
					return -1;
				}
		return event_id;
    }
}
 



