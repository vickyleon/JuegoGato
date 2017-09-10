<%-- 
    Document   : JugadorMaquina
    Created on : 10/09/2017, 07:57:04 PM
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
        function func1(esto,id)
	{
		esto.value="Ya diste click";
		esto.disabled=true;
                esto.href=id;
                
	}
       
    </script>
    <body>
        <div class="parallax-container">
            <div class="parallax"><img src="img/1.jpg"></div>
        </div>
        <div class="section white" style="padding:2em;">
            <div class="row">
                <div class="col s6">
                     <h2>Tic Tac Toe</h2>
                </div>
                <div class="col s6">
                    <h3 class="right-align">Turno de: Jugador 1</h3> 
                </div>
            </div>  
           <div class="caption center-align">
               
               <table class="centered">
             <tbody>
                 <tr>
                  <td><button class="btn waves-effect waves-light" type="" name="uno" onclick="func1(this,name)" ></button></td>
                  <td><button class="btn waves-effect waves-light" type="" name="dos" onclick="func1(this,name)"></button></td>
                  <td><button class="btn waves-effect waves-light" type="" name="tres" onclick="func1(this,name)"></button></td>
              </tr>
              <tr>
                  <td><button class="btn waves-effect waves-light" type="" name="cuatro" onclick="func1(this,name)"></button></td>
                  <td><button class="btn waves-effect waves-light" type="" name="cinco" onclick="func1(this,name)"></button></td>
                  <td><button class="btn waves-effect waves-light" type="" name="seis" onclick="func1(this,name)"></button></td>
              </tr>
              <tr>
                
                  <td><button class="btn waves-effect waves-light" type="" name="seis" onclick="func1(this,name)"></button></td>
                  <td><button class="btn waves-effect waves-light" type="" name="siete" onclick="func1(this,name)" ></button></td>
                  <td><button class="btn waves-effect waves-light" type="" name="ocho" onclick="func1(this,name)"></button></td>
              </tr>
            </tbody>
          </table>
               
               
            </div>
            <div class="right-align">
                <a class="waves-effect waves-light btn" type="" name="Menu" href="index.jsp">Nueva Partida 
                <i class="material-icons right">send</i>
                </a>
            </div>
        </div>
        
        
    </body>
</html>
