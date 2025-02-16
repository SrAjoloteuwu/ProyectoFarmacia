<%@page import="java.util.List"%>
<%@page import="modelo.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            background-color: #f8f9fa;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            background-color: #2d6a4f;
            color: white;
            padding: 1em 0;
            text-align: center;
        }
        nav {
            background-color: #1b4332;
            overflow: hidden;
            text-align: center;
        }
        nav a {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #0b3d20;
        }
        .container {
            flex: 1;
            padding-top: 20px;
        }
        .header-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        footer {
            background-color: #1b4332;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Bienvenido a Nuestra Farmacia</h1>
    </header>
    <nav>
        <div class="nav-center">
            <a href="index.jsp">Inicio</a>
            <a href="ControladorClientes?accion=listarClientes">Listar Clientes</a>
            <a href="ControladorEmpleados?accion=listarEmpleados">Listar Empleados</a>
            <a href="ControladorProductos?accion=listarProductos">Productos</a>
            <a href="#">Consultas</a>
            <a href="#">Contáctanos</a>
        </div>
    </nav>
    <div class="container mt-5">
        <div class="header-row">
            <h1 class="mb-4">Listado de Clientes</h1>
            <a href="ControladorClientes?accion=addCliente" class="btn btn-primary">Agregar Nuevo</a>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Teléfono</th>
                    <th>Dirección</th>
                    <th>Correo Electrónico</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Clientes> list = (List<Clientes>) request.getAttribute("clientes");
                    if (list != null) {
                        for (Clientes cliente : list) {
                %>
                <tr>
                    <td><%= cliente.getId() %></td>
                    <td><%= cliente.getNombre() %></td>
                    <td><%= cliente.getApellido() %></td>
                    <td><%= cliente.getTelefono() %></td>
                    <td><%= cliente.getDireccion() %></td>
                    <td><%= cliente.getCorreo() %></td>
                    <td>
                        <a href="ControladorClientes?accion=edit&id=<%= cliente.getId() %>" class="btn btn-sm btn-warning me-2">Editar</a>
                        <a href="ControladorClientes?accion=delete&id=<%= cliente.getId() %>" class="btn btn-sm btn-danger">Eliminar</a>
                    </td>
                </tr>
                <% 
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
    <footer>
        <p>© 2024 Mi Empresa. Todos los derechos reservados.</p>
        <p>Dirección: Calle Falsa 123, Ciudad, País | Tel: +123 456 7890</p>
    </footer>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-########" crossorigin="anonymous"></script>
</body>
</html>
