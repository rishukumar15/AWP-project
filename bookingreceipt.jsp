<%-- 
    Document   : bookingreceipt
    Created on : 21-Apr-2020, 5:26:51 PM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="datapack.*" %>
<%@page import="java.util.*"%>
<%@page import="java.io.*" %>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*" %>
<%@page import="javax.activation.*"%>
<%@page import="javax.mail.Session,javax.mail.Transport" %>

<jsp:include page="header.jsp"/>
<%   Services s = (Services) request.getAttribute("serv") ; %>
<%   Professionals p = (Professionals) request.getAttribute("prof") ; %>


<style>
    
    #container{
        
        border: 3px solid gray;
        border-radius: 5px;
    
           
    }
    
</style>    

<div class="container my-3 p-3" id="container">
    
     <%if(p.getname() != null){%>   
    
    <div class="alert alert-success" style="text-align: center">
        <h1>Booking Successful</h1>
    </div>    
    
    
      
    <div class="row">
        
        <div class="col-sm-6">
            
            <h5>Your Booking details</h5>
            <p>Service Name:<%=s.getName()%></p>
            <p>Service Cost: Rs.<%=s.getPrice()%></p>
            <p>Service Description:<%=s.getDescription()%></p>
              
             
        </div> 
            
            
      
        
        <div class="col-sm-6">
            
            <h5>Details of Professional</h5>
            <p> Name:<%=p.getname()%></p>
            <p>Mob no. :<%=p.getmob_no()%></p>
            <p>Email:<%=p.getemail()%></p>
              
             
        </div>
            
    </div>

    <%
        String result;

        String to = p.getemail();
        String from = "Proserv@gmail.com";
        String host = "localhost";
        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host", host);
        Session session = Session.getDefaultInstance(properties);
        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);
            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));
            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            // Set Subject: header field
            message.setSubject("Regarding your Booking!");
            String content = "Thank You for your booking Sir/Mam," + p.getName() + "is your professional whose Contact is:" + p.getmob_no() + ".Willing to Serve you again!";
            // Now set the actual message
            message.setText(content);
            // Send Message
            Transport.send(message);
            result = "Message sent Successfully!";
        }
        catch (MessagingException mex) {
            mex.printStackTrace();
            result = "Error: unable to send message!";
        }
    %>

            
    <div class="alert alert-info" style="text-align: center">
        <h1>Thank You !! Visit Again</h1>
    </div>

    <p align = "center">
        <%
            out.println("Result: " + result + "\n");
        %>
    </p>

     <a class="btn btn-primary" href="/AWP_webapp/adminlogoutservlet">Logout</a>
      
        
</div>
    
      <%}else{%>   
       
        
    <div class="alert alert-danger" style="text-align: center">
        <h1>Booking Unsuccessful</h1>
    </div>  

      <p>Sorry !! none of our Professionals are free currently</p>
      
      <a class="btn btn-primary" href="/AWP_webapp/userservicesservlet?value=<%=s.getPackage_id()%>">Back to Home</a>
      
       <%}%> 
    
</div>    