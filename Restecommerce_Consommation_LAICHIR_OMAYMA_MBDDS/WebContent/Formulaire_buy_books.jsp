<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My magicBook</title>
<link rel="stylesheet" type="text/css" href="css/form_buy.css">
</head>
<body>
    <%@ include file="Header.jsp"  %>
    <br><br>
     <%@ include file="aside.html"  %>
    <br><br><br><br><br><br>
   
    <form id="paiement" style="
    margin-right: 198px;
">
    <fieldset>
    <legend>Votre identité</legend>
    <table>
    <tr><td><label  for="nom" >Nom</label></td><td><input id="nom" name="nom" type="text" Placeholder="Prénom et Nom" required autofocus></td></tr>
    <tr><td><label  for="email" >Email</label></td><td><input id="email" name="email" type="text" Placeholder="Exemple@gmail.com" required ></td></tr>
    <tr><td><label  for="nom" >Téléphone</label></td><td><input id="tel" name="tel" type="tel" Placeholder=" par&nbsp: +212684758" required></td></tr>
    </table>
    </fieldset>
    
    <fieldset>
    <legend>Mode de Payement</legend>
    
    <fieldset>
    <table>
    
    <tr><td colspan="2"><legend>Type de carte bancaire</legend> </td></tr>
    <tr><td> <input id="visa" name="type_de_carte" type="radio"></td>
    <td> <label for="visa">VISA</label><img src="img/Visa-card.png" style="width:45px;"></td>
    </tr>
    
    <tr><td> <input id="visa" name="type_de_carte" type="radio"></td>
    <td> <label for="mastercard">Mastercard</label><img src="img/MasterCard_Logo.png" style="width:45px;"></td>
    </tr>

     <tr><td> <input id="visa" name="type_de_carte" type="radio"></td>
    <td> <label for="amex">AmEx</label><img src="img/amex.jpg" style="width:45px;"></td>
    </tr>
    
    </table>
    </fieldset>
    
    <fieldset>
    <table>
    <tr><td>
    <label for="numero_carte">N°de carte</label></td>
    <td><input id="numero_carte" name="numero_carte" type="number" required></td></tr>
    <tr>
    <td><label for="securite">Code sécurité</label></td>
    <td><input id="securite" name="securite" type="number" required></td>
    </tr>
    </table>
    
    </fieldset>
    <fieldset>
    <table>
      <tr>
      <button type="submit">J'achète !</button>
      </tr>
    </table>
    </fieldset>
    </fieldset>
    </form>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   <%@ include file="footer.html"  %>
</body>
</html>