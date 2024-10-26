/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.crud_adaptacion_a_pagina_web_stop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author emers
 */
@WebServlet("/productos")
public class ProductoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Producto> listaProductos = new ArrayList<>();
        Connection conn = null;
        Statement stmt = null;

        try {
            // Conexión a la base de datos
            String url = "jdbc:mysql://localhost:3306/adaptacion_a_pagina_web_Stop";
            String user = "tu_usuario"; // Cambia a tu nombre de usuario
            String password = "tu_contraseña"; // Cambia a tu contraseña
            conn = DriverManager.getConnection(url, user, password);
            
            // Ejecutar la consulta para obtener los productos
            stmt = conn.createStatement();
            String sql = "SELECT nombre, precio, descripcion FROM Producto";
            ResultSet rs = stmt.executeQuery(sql);

            // Iterar sobre los resultados de la consulta
            while (rs.next()) {
                String nombre = rs.getString("nombre");
                double precio = rs.getDouble("precio");
                String descripcion = rs.getString("descripcion");
                listaProductos.add(new Producto(nombre, precio, descripcion));
            }

            // Cerrar la conexión
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Pasar la lista de productos a la página JSP
        request.setAttribute("listaProductos", listaProductos);
        request.getRequestDispatcher("/productos.jsp").forward(request, response);
    }
}