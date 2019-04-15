package it.dedo.testmaven.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/allievi")
public class AllieviServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllieviServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		super.doPost(request, response);
		try 
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/wushu?user=root&password=semase&serverTimezone=CET");
				PreparedStatement stm = cnx.prepareStatement("Select * From Allievi Where ALL_NOME = ? And ALL_COGNOME = ?");
				stm.setString(1, request.getParameter("nome"));
				stm.setString(2, request.getParameter("cognome"));
				ResultSet rs = stm.executeQuery();
				if (rs.isBeforeFirst() && rs.getRow() == 0) 
				{
					stm = cnx.prepareStatement("Insert Into Allievi (ALL_NOME, ALL_COGNOME, ALL_SESSO) values(?, ?, ?)");
					stm.setString(1, request.getParameter("nome"));
					stm.setString(2, request.getParameter("cognome"));
					stm.setString(3, request.getParameter("sesso") == "0" ? "M" : "F");
					int righeInserite = stm.executeUpdate();
					if (righeInserite == 0) throw new Exception("Non inserito");
					System.out.println("Record Inserito Correttamente");
				}
				else
				{
					System.out.println("Record Esistente");
				}
			}
		catch (Exception ex)
			{
				System.out.println("Errore" + ex.getMessage());
			}
		
	}

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
