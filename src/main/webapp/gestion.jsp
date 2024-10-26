<%-- 
    Document   : gestion
    Created on : 15/09/2024, 6:57:46 a. m.
    Author     : emers
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.crud_adaptacion_a_pagina_web_stop.Usuario"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Usuarios</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/estilos.css">
</head>
<body class="fondo-rojo">
    <header class="encabezado">
        <h1>Gestión de Usuarios</h1>
        <nav class="menu">
            <a href="<%=request.getContextPath()%>/index.jsp">Inicio</a>
            <a href="#">Productos</a>
            <a href="#">Carrito</a>
            <a href="<%=request.getContextPath()%>/Usuario/formulario.jsp">Usuario</a> <!-- Corrige la ruta de formulario.jsp -->
        </nav>
    </header>
    <main>
        <h2>Usuarios Registrados</h2>
        <%-- Mostrar mensaje si no hay usuarios --%>
        <%
            List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
            if (usuarios == null || usuarios.isEmpty()) {
        %>
        <p>No hay usuarios registrados.</p>
        <% } else { %>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Correo Electrónico</th>
                    <th>Contraseña</th>
                    <th>Dirección</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% for (Usuario usuario : usuarios) { %>
                <tr>
                    <td><%= usuario.getNombre() %></td>
                    <td><%= usuario.getCorreoElectronico() %></td>
                    <td><%= usuario.getContrasena() %></td>
                    <td><%= usuario.getDireccion() %></td>
                    <td>
                        <a href="<%=request.getContextPath()%>/UsuarioServlet?accion=modificar&id=<%=usuario.getId()%>">Modificar</a>
                        <a href="<%=request.getContextPath()%>/UsuarioServlet?accion=eliminar&id=<%=usuario.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } %>
    </main>
    <footer class="pie-de-pagina">
        <!-- Contenido del pie de página -->
        © 2024 Stop Jeans. Todos los derechos reservados.
    </footer>
</body>
</html>