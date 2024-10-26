<%-- 
    Document   : carrito
    Created on : 15/09/2024, 6:32:45 a. m.
    Author     : emers
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carrito de Compras</title>
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
        .cart-item {
            background-color: white; /* Fondo blanco para cada ítem del carrito */
            color: black;
            padding: 15px;
            border-radius: 5px;
            margin: 10px;
            display: inline-block;
            text-align: center;
            width: 200px; /* Ancho del contenedor del ítem del carrito */
        }
        .cart-item img {
            width: 100%; /* Asegura que la imagen ocupe el 100% del contenedor */
            height: auto; /* Mantiene la proporción de la imagen */
            border-radius: 5px; /* Bordes redondeados para la imagen */
        }
        .cart-item-name {
            font-size: 18px;
            margin: 10px 0;
        }
        .remove-from-cart {
            background-color: black;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .remove-from-cart:hover {
            background-color: #333;
        }
        .checkout {
            background-color: black;
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s;
            margin-top: 20px;
        }
        .checkout:hover {
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
        <h1>Carrito de Compras</h1>
    </header>

    <nav>
        <a href="index.jsp">Inicio</a>
        <a href="productos.jsp">Productos</a>
        <a href="carrito.jsp">Carrito</a>
        <a href="usuario.jsp">Usuario</a>
    </nav>

    <section>
        <h2>Estos son los productos en tu carrito</h2>
        
        <!-- Ejemplo de ítems en el carrito -->
        <div class="cart-item">
            <img src="images/image1.jpg" alt="Producto 1">
            <div class="cart-item-name">Producto 1</div>
            <p>$20.00</p>
            <button class="remove-from-cart">Eliminar</button>
        </div>

        <div class="cart-item">
            <img src="images/image2.jpg" alt="Producto 2">
            <div class="cart-item-name">Producto 2</div>
            <p>$35.00</p>
            <button class="remove-from-cart">Eliminar</button>
        </div>

        <!-- Añade más ítems del carrito aquí -->
        
        <h3>Total: $55.00</h3>
        <button class="checkout">Proceder al Pago</button>
    </section>

    <footer>
        <!-- Contenido del pie de página -->
        © 2024 Stop Jeans. Todos los derechos reservados.
    </footer>

</body>
</html>