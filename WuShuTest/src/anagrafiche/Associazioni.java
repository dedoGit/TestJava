package anagrafiche;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.UIManager;

public class Associazioni {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
			}
			catch (Exception e) {
			e.printStackTrace();
			}
			*/	
		new Associazioni();
	}

	/*public Associazioni() {
		JFrame frame = new JFrame("La prima bellissima applicazione");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		JLabel lbl = new JLabel("Gestione Database");
		lbl.setLocation(100, 10);
		//frame.getContentPane().add(new JLabel("Testo della Label"),BorderLayout.CENTER);
		frame.getContentPane().add(lbl);
		JButton btn = new JButton();
		btn.setText("Leggi Allievi");
		btn.setSize(new Dimension(75,30));
		btn.setLocation(100,50);
		frame.getContentPane().add(btn,-1);
		JButton btn2 = new JButton();
		btn2.setText("Aggiungi Allievo");
		btn2.setSize(new Dimension(75,30));
		btn2.setLocation(100, 100);
		frame.getContentPane().add(btn2,-1);
		frame.setSize(400, 300);
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
	}*/
	public Associazioni() {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/wushu?user=root&password=semase&serverTimezone=CET");
			PreparedStatement LookStm = cnx.prepareStatement("Select count(*) From anagrafica_istruttori where ISTR_COGNOME = ? And ISTR_NOME = ?");
			LookStm.setString(1, "De Donno");
			LookStm.setString(2, "Alessandro");
			ResultSet lookRs = LookStm.executeQuery();
			lookRs.first();
			if(lookRs.getInt(1) == 0) {
				PreparedStatement prepStm = cnx.prepareStatement("Insert Into anagrafica_istruttori (ISTR_NOME, ISTR_COGNOME, ISTR_TELEFONO, ISTR_EMAIL) values (?,?,'','')");
				prepStm.setString(1, "Alessandro");
				prepStm.setString(2, "De Donno");
				int righe = prepStm.executeUpdate();
				if (righe == 0) return;
				System.out.println("Righe Inserite: " + righe);
			}
			else {
				System.out.println("Record Presente");
			}
			
			Statement stm = cnx.createStatement();
			ResultSet rs = stm.executeQuery("Select * From anagrafica_istruttori");
			while (rs.next()) {
				System.out.println("Nome: " + rs.getString("ISTR_NOME"));
	            System.out.println("Cognome: " + rs.getString("ISTR_COGNOME"));
			}
		}
		catch (Exception ex){
			System.out.println("Errore: " + ex.getMessage());

		}
		
		
	}
}
