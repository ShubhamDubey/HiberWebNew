<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page
	import="org.hibernate.*,
org.hibernate.boot.*,
org.hibernate.boot.registry.StandardServiceRegistryBuilder,
org.hibernate.cfg.Configuration,
java.util.*,
com.niit.hiberwebnew.Address,
com.niit.hiberwebnew.Emp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test component</title>
</head>
<body>

	<%
		try {
			Configuration cfg = new Configuration();
			cfg.configure("hibernate.cfg.xml");
			SessionFactory factory = cfg.buildSessionFactory();
			Session sess = factory.openSession();
			Transaction t = sess.beginTransaction();

			Emp e1 = new Emp("Shubham", new Address("Rohtah, Hr", "INDIA", 124501));
			Emp e2 = new Emp("Deep", new Address("Delhi, Delhi", "INDIA", 123456));

			sess.save(e1);
			sess.save(e2);
			t.commit();
			Query query = sess.createQuery("from Emp");
			List<Emp> empList = query.list();
			for (Emp emp : empList) {
				out.print("<br>ID:-" + emp.getId() + "\t Name:-" + emp.getName() + "\t Address:-");
				Address address = emp.getAddress();
				out.println(address.getCity() + " Country:" + address.getCountry() + " Pincode:-"
						+ address.getPincode());
			}
			sess.close();
		} catch (Exception e) {
			out.println(e.getMessage());
		}
	%>

</body>
</html>