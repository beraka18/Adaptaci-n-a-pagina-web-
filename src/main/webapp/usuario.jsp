<%-- 
    Document   : usuario
    Created on : 15/09/2024, 6:37:39 a. m.
    Author     : emers
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: red; /* Fondo rojo para toda la página */
        }
        header {
            background-color: red;
            color: white;
            padding: 20px;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: black;
            padding: 10px;
            flex-wrap: wrap; /* Para que los enlaces se ajusten en dispositivos más pequeños */
        }
        nav a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 20px;
            transition: background-color 0.3s, color 0.3s;
        }
        nav a:hover {
            background-color: white; /* Fondo blanco al pasar el ratón */
            color: black; /* Texto negro al pasar el ratón */
            border-radius: 5px;
        }
        section {
            padding: 20px;
            text-align: center;
            background-color: blue;
            color: white;
            margin: 10px; /* Añadido margen para evitar que el contenido toque los bordes */
            border-radius: 5px; /* Añadido para un diseño más suave */
        }
        form {
            background-color: white; /* Fondo blanco para el formulario */
            color: black;
            padding: 20px;
            border-radius: 5px;
            display: inline-block;
            width: 100%;
            max-width: 600px; /* Ancho máximo del formulario */
            text-align: left; /* Alineación del texto dentro del formulario */
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: calc(100% - 22px); /* Ajusta el ancho para incluir el padding */
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: black;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #333;
        }
        footer {
            background-color: black;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
            box-shadow: 0 -1px 5px rgba(0, 0, 0, 0.3); /* Añadido sombra para separar el pie de página del contenido */
        }
    </style>
</head>
<body>

    <header>
        <h1>Registro de Usuario</h1>
    </header>

    <nav>
        <a href="index.jsp">Inicio</a>
        <a href="productos.jsp">Productos</a>
        <a href="carrito.jsp">Carrito</a>
        <a href="usuario.jsp">Usuario</a>
    </nav>

    <section>
        <h2>Formulario de Registro</h2>
        <form action="gestionarUsuario.jsp" method="post">
            <label for="nombre">Nombre:</label><br>
            <input type="text" id="nombre" name="nombre" required><br>

            <label for="correo">Correo Electrónico:</label><br>
            <input type="email" id="correo" name="correo" required><br>

            <label for="contrasena">Contraseña:</label><br>
            <input type="password" id="contrasena" name="contrasena" required><br>

            <label for="direccion">Dirección:</label><br>
            <input type="text" id="direccion" name="direccion" required><br>

            <input type="submit" value="Enviar">
        </form>
    </section>

    <footer>
        <!-- Contenido del pie de página -->
        © 2024 Stop Jeans. Todos los derechos reservados.
    </footer>

</body>
</html>