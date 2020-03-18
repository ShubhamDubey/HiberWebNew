<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page
	import="java.util.*,
org.hibernate.*,
org.hibernate.cfg.Configuration,
com.niit.hiberwebnew.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Collection Mapping Demo</title>
</head>
<body>
	<%
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory = cfg.buildSessionFactory();
		Session sess = factory.openSession();
		Transaction t = sess.beginTransaction();
		Employee employee=new Employee();

		employee.setEmployeeName("Shubham");
		Set<String> phoneNumbers=new HashSet<String>();
		phoneNumbers.add("123456789");
		phoneNumbers.add("123789456");
		phoneNumbers.add("789456123");
		employee.setPhoneNumbers(phoneNumbers);
		sess.save(employee);
		sess.getTransaction().commit();
		Query query = sess.createQuery("from Employee");
		List<Employee> list = query.list();

		Iterator<Employee> itr = list.iterator();
		while (itr.hasNext()) {
			Employee emp = itr.next();
			out.println("Employee Name: " + emp.getEmployeeName());

			// printing answers
			Set<String> set = emp.getPhoneNumbers();
			Iterator<String> itr2 = set.iterator();
			while (itr2.hasNext()) {
				out.println(itr2.next());
			}
			out.println("<br>");
		}
		
		sess.close();
		out.println("success");
	%>
</body>
</html>