 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <% try {
  		Connection con = ConnectionProvider.getCon();
  		Statement st = 	con.createStatement();
  		//String q2= "create table user(fname varchar(100),mname varchar(100),lname varchar(100),gender varchar(20), mobile varchar(20), country varchar(20),email varchar(50),password varchar(50))";
  		//String q1="create table flight(id int primary key,flightname varchar(200), airlines varchar(200),source varchar(100), destination varchar(100),doj varchar(200),time varchar(200),price int)";
  	//	String q3="create table booking(flightname varchar(100),airlines varchar(100),source varchar(50),destination varchar(50),date varchar(50),time varchar(50),price int,pasName varchar(100),pasAge varchar(100),pasPh bigint,pasNo int,totalprice int,bookId int auto_increment primary key )";
  	//	String q4="create table booking1(source varchar(50),destination varchar(50),doj varchar(50),passengers int,pasName varchar(100),pasAge varchar(100),pasPh bigint,pasNo int,bookId int auto_increment primary key )";
  		String q5="create table book(email varchar(50),flightname varchar(100),airlines varchar(100),source varchar(50),destination varchar(50),date varchar(50),time varchar(50),price int,pasName varchar(100),pasAge varchar(100),pasPh bigint,pasNo int,totalprice int,bookId int auto_increment primary key)";
  		//	System.out.println(q1);
  		
  		//st.execute(q1);
  		//st.execute(q2);
  		//System.out.println(q2);
  		
  		System.out.println(q5);
  		st.execute(q5);
  		System.out.println("Table created ");
  		con.close();
  	  }
  		catch(Exception e)
  		{
  			System.out.println(e);
  		}
  		%>