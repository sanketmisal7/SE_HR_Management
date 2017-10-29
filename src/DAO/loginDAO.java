package DAO;

import java.util.ArrayList;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.loginVO;
import VO.registerVO;

public class loginDAO {
	
	public registerVO authentication(registerVO loginVO)
	{
		Session session = null;
		Transaction tx = null;
		try {
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			List<registerVO> loginList = session.createCriteria(registerVO.class)
					.add(Restrictions.eq("username", loginVO.getUsername()))
					.add(Restrictions.eq("password", loginVO.getPassword()))
					.list();
			tx.commit();
			System.out.println("un:"+loginList.get(0).getFirstname());
			return loginList.get(0);
					
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}
	

}
