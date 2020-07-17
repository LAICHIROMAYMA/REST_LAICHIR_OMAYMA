<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp"  %>
<%@ include file="aside.html"  %>
     <div class="container" style="box-shadow: -1px 1px 30px 10px #D2B48C inset;height:485px;margin-left: 250px;width:500;width: 570px;" >
   	   <div class="starter-template">

   	   

	<div id="div6">
 
             <div style="margin-left: 32%; color: gray; font-size: 35px; color: blue"><b>Contactez nous</b></div>
<table width="680" cellpadding="0" cellspacing="0" border="0">
	
	
		<br /><br />
<table align="center" width="50%" style="margin-top:-400px;">
			<tr>
				
     <form action="contact" method="post">
		<div class="row" style="margin-top:120px;box-shadow: -1px 1px 30px 10px #D2B48C inset;">
			
                <td  align="top" width="100%"><font color="black">Un conseiller vous répondra dans les 48 heures.</font>
				<tr ><td ><input type="text" name="nom"  placeholder=" entrez votre Nom et Prénom " style=" width: 216px;" size="30" width="60"   id="inputname" class="form-control"value="" />
				
			   </td>
				<td><input type="email" name="mail"  size="45" placeholder="entrez votre email" style=" width: 250px;"   message="Veuillez entrer votre adresse mail" id="inputname" class="form-control" value="" />
				</td>
			   
                  
				<br /><input type="text" name="sujet" placeholder="Sujet" size="30" style=" width: 490px;align:center;"  message="Veuillez entrer votre adresse mail" id="inputname" class="form-control" value=""/>
				</tr>
				<textarea name="message"  placeholder="votre message" cols="30" style=" width: 490px;align:center;"  rows="5" id="inputmessage" class="form-control" ></textarea>
				<br> <br>
				<div class="form-group">
					<input  type="hidden" name="hid" class="form-control">
					
				</div>
				
				 <input class="insc" type="submit" name="forminscription" value="Envoyer" style="background-color:#ADD8E6; color:black; height:38px; width:105px" />
			</div>
		</div>
	</div>
				</form>
     </td>
			</tr>
		</table>
		</div>
   </div>
   </table>

</div>
  <br><br><br><br>
 <%@ include file="footer.html"  %>   
</body>
</html>