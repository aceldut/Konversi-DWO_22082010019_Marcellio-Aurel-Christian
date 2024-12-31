<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery
  id="query01"
  jdbcDriver="org.postgresql.Driver"
  jdbcUrl="jdbc:postgresql://localhost:5432/dwh_dvdrental?user=postgres&password=J0y0b0y0"
  catalogUri="/WEB-INF/queries/rental.xml">

  SELECT 
  {[Measures].[Total Transaksi], [Measures].[Total Pendapatan]} ON COLUMNS,
  {([Customer].[Semua Customer],[Date].[Semua Waktu], [Category].[Semua Genre], [Film].[Semua Film], [Actor].[Semua Actor])} ON ROWS
FROM [Rental]
</jp:mondrianQuery>

<c:set var="title01" scope="session">PHI-Minimart - Cube Pendapatan</c:set>
