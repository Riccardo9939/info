<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Benvenuto</title>
</head>
   
<body>
   <% 
   int prezzo = 0;
   String quantita1 = request.getParameter("quantita");
   int quantita = Integer.parseInt(quantita1);
   if(quantita1.equals("vuoto")){%>
       <p>SELEZIONA IL NUMERO DI BIGLIETTI</p>
       <% } else{
        prezzo = quantita*50;
        }
        
   String tipo1 = request.getParameter("tipo");
   if(tipo1.equals("vuoto")){ %>
   <p>Inserisci dove vuoi stare</p>
   <% } else if(tipo1.equals("platea")){
       prezzo = quantita*50;
       } else {
           prezzo = quantita*20;
           }
   %>
   <p>Spenderai <%= prezzo %></p>
   
</body>
</html>