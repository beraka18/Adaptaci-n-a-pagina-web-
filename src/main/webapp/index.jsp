<%-- 
    Document   : index
    Created on : 15/09/2024, 5:57:12 a. m.
    Author     : emers
--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Crud adaptaci�n a P�gina Web Stop</title>
    <link rel="stylesheet" href="css/estilos.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: red; /* Fondo rojo para toda la p�gina */
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
            flex-wrap: wrap; /* Para que los enlaces se ajusten en dispositivos m�s peque�os */
        }
        nav a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 20px;
            transition: background-color 0.3s, color 0.3s;
        }
        nav a:hover {
            background-color: white; /* Fondo blanco al pasar el rat�n */
            color: black; /* Texto negro al pasar el rat�n */
            border-radius: 5px;
        }
        main {
            padding: 20px;
            text-align: center;
            background-color: blue;
            color: white;
            margin: 10px; /* A�adido margen para evitar que el contenido toque los bordes */
            border-radius: 5px; /* A�adido para un dise�o m�s suave */
        }
        form {
            background-color: white; /* Fondo blanco para el formulario */
            color: black;
            padding: 20px;
            border-radius: 5px;
            display: inline-block;
            width: 100%;
            max-width: 600px; /* Ancho m�ximo del formulario */
            text-align: left; /* Alineaci�n del texto dentro del formulario */
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
            box-shadow: 0 -1px 5px rgba(0, 0, 0, 0.3); /* A�adido sombra para separar el pie de p�gina del contenido */
        }
    </style>
</head>
<body class="fondo-rojo">
    <header class="encabezado">
        <h1>Crud adaptaci�n a P�gina Web Stop</h1>
        <nav class="menu">
            <a href="index.jsp">Inicio</a>
            <a href="#">Productos</a>
            <a href="#">Carrito</a>
            <a href="usuario/formulario.jsp">Usuario</a>
        </nav>
    </header>
    <main>
        <h2>�Bienvenido a la Tienda Stop Jeans!</h2>
        <p>Seleccione una opci�n del men� para comenzar.</p>
    </main>
</body>
</html>
