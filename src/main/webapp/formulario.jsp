<%-- 
    Document   : formulario
    Created on : 15/09/2024, 6:55:01 a. m.
    Author     : emers
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/estilos.css">
</head>
<body class="fondo-rojo">
    <header class="encabezado">
        <h1>Registro de Usuario</h1>
        <nav class="menu">
            <a href="<%=request.getContextPath()%>/index.jsp">Inicio</a>
            <a href="#">Productos</a>
            <a href="#">Carrito</a>
            <a href="<%=request.getContextPath()%>/usuario/formulario.jsp">Usuario</a>
            <a href="/Crud_adaptacion_a_pagina_web_stop/usuario/formulario.jsp">Formulario de Usuario</a>
        </nav>
    </header>
    <main>
        <h2>Formulario de Registro</h2>
        <form action="<%=request.getContextPath()%>/UsuarioServlet" method="post">
            <input type="hidden" name="accion" value="guardar">
            
            <div>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            
            <div>
                <label for="correo">Correo Electrónico:</label>
                <input type="email" id="correo" name="correo" required>
            </div>
            
            <div>
                <label for="contrasena">Contraseña:</label>
                <input type="password" id="contrasena" name="contrasena" required>
            </div>
            
            <div>
                <label for="direccion">Dirección:</label>
                <input type="text" id="direccion" name="direccion" required>
            </div>
            
            <div>
                <input type="submit" value="Enviar">
            </div>
        </form>
    </main>
    <footer class="pie-de-pagina">
        © 2024 Stop Jeans. Todos los derechos reservados.
    </footer>
</body>
</html>