package it.dedo.testmaven.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import it.dedo.testmaven.persistence.entity.IstruttoreEntity;

@WebServlet("/istruttori")
public class IstruttoriServlet extends HttpServlet {
	private static final long serialVersionUID = -8320889584375339166L;

	private SessionFactory sessionFactory;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		// A SessionFactory is set up once for an application!
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
				.configure() // configures settings from hibernate.cfg.xml
				.build();
		try {
			sessionFactory = new MetadataSources( registry ).buildMetadata().buildSessionFactory();
		}
		catch (Exception e) {
			// The registry would be destroyed by the SessionFactory, but we had trouble building the SessionFactory
			// so destroy it manually.
			StandardServiceRegistryBuilder.destroy( registry );
		}
	}
	
	@Override
	public void destroy() {
		if(sessionFactory != null) sessionFactory.close();
		super.destroy();
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);

		Session session = null;
		Transaction tx = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();

			IstruttoreEntity istruttore; 
			long id = Long.parseLong(req.getParameter("id")!=null?req.getParameter("id"):"0");
			if (id == 0) {
				istruttore = new IstruttoreEntity();
			}
			else
			{
			   istruttore =	session.find(IstruttoreEntity.class, id);
			   //FixMe: gestire non trovato
			}
			istruttore.setNome(req.getParameter("fname"));
			istruttore.setCognome(req.getParameter("lname"));
			istruttore.setEmail(req.getParameter("email"));
			istruttore.setTelefono(req.getParameter("telephone"));
			
			session.saveOrUpdate(istruttore);
			tx.commit();

		} 
		catch (Exception e) {
			if (tx != null) tx.rollback();
		}

		finally {
			if (session != null) session.close();
		}
		
	}
}
