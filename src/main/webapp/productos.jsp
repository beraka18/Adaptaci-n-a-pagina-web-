<%-- 
    Document   : productos
    Created on : 15/09/2024, 6:22:23 a. m.
    Author     : emers
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.crud_adaptacion_a_pagina_web_stop.Producto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Productos - Stop Jeans</title>
    <style>
        body {
            background-color: #f8f8f8;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .product {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin: 10px;
            width: 250px;
            text-align: center;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .product h2 {
            color: #007bff;
        }
        .product p {
            color: #666;
        }
        .product button {
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .product button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Nuestra Colección de Productos</h1>
        <div class="product-list">
            <%
                ArrayList<Producto> listaProductos = (ArrayList<Producto>) request.getAttribute("listaProductos");
                if (listaProductos != null) {
                    for (Producto producto : listaProductos) {
            %>
                <div class="product">
                    <h2><%= producto.getNombre() %></h2>
                    <p>Precio: $<%= producto.getPrecio() %></p>
                    <p>Descripción: <%= producto.getDescripcion() %></p>
                    <button>Agregar al Carrito</button>
                </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</body>
</html>