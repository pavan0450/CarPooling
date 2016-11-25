<%@page import="java.sql.*"%>
<%@page import="java.io.Console"%>
<%@ page language="java" import="Login.MySQLCon"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Car Pool</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">


</head>

<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a id="Profile"
					href="<%=application.getContextPath()%>/Profile.jsp">Profile</a></li>
				<li><a id="viewPoolMenu" href="pool.php?op=view">View Pools</a>
				</li>
				<li><a id="createPoolMenu" href="pool.php?op=create">Create
						Pool</a></li>
				<li><a id="editPoolMenu" href="pool.php?op=edit">My Pools</a></li>
				<li><a id="regVehicleMenu"
					href="<%=application.getContextPath()%>/RegisterVehicle.jsp">Register
						Vehicle</a></li>
				<li><a id="myVehicleMenu"
					href="<%=application.getContextPath()%>/MyVehicle.jsp">My
						Vehicles</a></li>

			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Pool
					Menu</a><br>
				<h2 align="center">My Vehicles</h2>	
				 <table class="table table-bordered">
		    		<thead>
				      <tr>
				        <th>Model</th>
				        <th>Color</th>
				        <th>Registration No</th>
				        <th>Occupancy</th>
				      </tr>
			    	</thead>
			      <tbody>
				      <tr>
				 													

		<%
	        try{
		    	   
	   	     Connection con=MySQLCon.main(null);
	   	     
	   	     
	   		 String sql="select * from vehicles where uid = 'rmylagar';";
		     PreparedStatement p=con.prepareStatement(sql);
	   	    
		     ResultSet r=p.executeQuery();
	 	    
			     while(r.next()){
			    	 out.println("<td>"+r.getString(3)+"</td>");			    	 
		 	    	 out.println("<td>"+r.getString(4)+"</td>");
		 	    	 out.println("<td>"+r.getString(5)+"</td>");
		 	    	 out.println("<td>"+r.getString(6)+"</td> </tr>");
			     } 
	        } catch(NullPointerException n) {
		   	   n.printStackTrace();
		   	  
		      } catch (Exception e) {
		   	  
				// TODO: handle exception
		   	   e.printStackTrace();
			}
	     
        %>


			
				       
			     
			    </tbody>
		  </table>	
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>