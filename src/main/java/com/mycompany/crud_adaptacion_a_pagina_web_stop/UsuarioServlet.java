/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.crud_adaptacion_a_pagina_web_stop;


import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author emers
 */
@WebServlet("/Usuario/*") // Cambiado para coincidir con el patrón URL utilizado
public class UsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/Crud_adaptacion_a_pagina_web_stop";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

    // El registro del driver es opcional en versiones más recientes de JDBC
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        String idParam = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");
        String direccion = request.getParameter("direccion");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            PreparedStatement stmt;

            switch (accion) {
                case "guardar":
                    String insertQuery = "INSERT INTO Usuario (nombre, correo_electronico, contrasena, direccion) VALUES (?, ?, ?, ?)";
                    stmt = conn.prepareStatement(insertQuery);
                    stmt.setString(1, nombre);
                    stmt.setString(2, correo);
                    stmt.setString(3, contrasena);
                    stmt.setString(4, direccion);
                    stmt.executeUpdate();
                    break;

                case "modificar":
                    String updateQuery = "UPDATE Usuario SET nombre=?, correo_electronico=?, contrasena=?, direccion=? WHERE id=?";
                    stmt = conn.prepareStatement(updateQuery);
                    stmt.setString(1, nombre);
                    stmt.setString(2, correo);
                    stmt.setString(3, contrasena);
                    stmt.setString(4, direccion);
                    stmt.setInt(5, Integer.parseInt(idParam));
                    stmt.executeUpdate();
                    break;

                case "eliminar":
                    String deleteQuery = "DELETE FROM Usuario WHERE id=?";
                    stmt = conn.prepareStatement(deleteQuery);
                    stmt.setInt(1, Integer.parseInt(idParam));
                    stmt.executeUpdate();
                    break;

                default:
                    throw new ServletException("Acción no válida: " + accion);
            }

            response.sendRedirect(request.getContextPath() + "/Usuario/gestion.jsp"); // Redirige a la página de gestión

        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Error en el procesamiento de datos", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        List<Usuario> usuarios = new ArrayList<>();

        if ("mostrar".equals(accion)) {
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String selectQuery = "SELECT * FROM Usuario";
                PreparedStatement stmt = conn.prepareStatement(selectQuery);
                ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    Usuario usuario = new Usuario(
                        rs.getInt("id"),
                        rs.getString("nombre"),
                        rs.getString("correo_electronico"),
                        rs.getString("contrasena"),
                        rs.getString("direccion")
                    );
                    usuarios.add(usuario);
                }

                request.setAttribute("usuarios", usuarios);
                request.getRequestDispatcher("/Usuario/gestion.jsp").forward(request, response); // Asegúrate de que el path sea correcto

            } catch (SQLException e) {
                e.printStackTrace();
                throw new ServletException("Error en la recuperación de usuarios", e);
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/Usuario/gestion.jsp"); // Redirige a la página de gestión
        }
    }
}