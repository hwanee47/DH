<%@ page language="java" contentType="application/pdf; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="net.sf.jasperreports.engine.data.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%
	 try{
		List<Map<String,String>> dataSource=null;
		JRDataSource jrDataSource = new JRBeanCollectionDataSource(dataSource);
		String jrxmlFile = session.getServletContext().getRealPath("WEB-INF/reports/elements.jrxml");
		
		InputStream input = new FileInputStream(new File(jrxmlFile));
		JasperReport jasperReport = JasperCompileManager.compileReport(input);
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, jrDataSource);
		// 
		//response.get
		out.clear();
		out=pageContext.pushBody();
		ServletOutputStream s = response.getOutputStream();
		JasperExportManager.exportReportToPdfStream(jasperPrint, s);
		//JasperExportManager.exportReportToPdfFile(jasperPrint, "test");
		s.flush();
		s.close();
	}catch (Exception e){
		e.printStackTrace();
	} 
%>