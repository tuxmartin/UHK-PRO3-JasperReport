import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;

public class DopisGenerator {	
	
	public static void main(String[] args) {
		long startTime = System.currentTimeMillis();
		new DopisGenerator().generateReport();
		long estimatedTime = System.currentTimeMillis() - startTime;
		System.out.println("Doba generovani: " + (float) estimatedTime/1000 + "s.");
	}

	public void generateReport() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String URL = "jdbc:mysql://localhost/pro3";
			String JMENO = "pro3";
			String HESLO = "pro3";
			Connection db = DriverManager.getConnection(URL, JMENO, HESLO);

			// JasperReport jasperReport = JasperCompileManager.compileReport("dopis.jrxml"); // jasper sablona, sama se zkompiluje		

			JasperReport jasperReport = (JasperReport) JRLoader.loadObjectFromFile("dopis.jasper"); // zkompilovana jasper sablona
			
			// nastaveni promennych:
			HashMap<String, Object> hm = new HashMap<String, Object>();
			hm.put("RTF_TEXT", "text.rtf");
			
			// kdyz nepouzivame zadne promenne, predame "null" misto "hm"
			JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, hm, db);

			// export do souboru
			JasperExportManager.exportReportToPdfFile(jasperPrint, "dopis.pdf");	
			JasperExportManager.exportReportToHtmlFile(jasperPrint, "dopis.html");
			
			db.close();
		} catch (JRException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}
