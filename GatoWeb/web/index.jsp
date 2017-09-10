<%-- 
    Document   : index
    Created on : 4/09/2017, 01:31:03 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>

        <!--Inicializacion de materialize-->
        <script type="text/javascript" src="js/inicializacion.js"></script>
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <link rel="stylesheet" type="text/css" href="css/materialize.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">

    </head>
    <script>
        $(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
             $('.modal').modal();
        });
    </script>
    <body>
         <div class="parallax-container">
            <div class="parallax"><img src="img/1.jpg"></div>
        </div>
        <div class="section white" style="padding:2em;">
           <div class="caption center-align">
              <div class="juego">
                   <h1>Juego Gato</h1>
                      
                       <a class="waves-effect waves-light btn modal-trigger" href="JugadorMaquina.jsp">1 Jugador</a>
                  
                    <a class="waves-effect waves-light btn modal-trigger" href="#modalJ2">2 Jugadores</a>
               </div>
            </div>
        </div>
        
        
        
  <!--Modals -->   
        <div id="modalJ2" class="modal">
            <div class="modal-content">
                <h4>Un Jugador</h4>
                <p>Juego contra la maquina</p>
                <h:form>
                    
                      <div class="row">
                        <div class="input-field col s6">
                          <h:inputText  value="" id="first_name"  class="validate"/>
                          <label for="nombre">Nombre</label>
                        </div>
                         
                      </div>
                  

            <div class="modal-footer">
                 <p><h:commandButton class="btn waves-effect waves-light nuevoButton" action="Jugador1" value="Aceptar" >
                        </h:commandButton></p>
        
            </div>
        </h:form>
                
               
        
            </div>
        </div>
    </body>
</html>
