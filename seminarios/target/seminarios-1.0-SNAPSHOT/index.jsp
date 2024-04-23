<%@page import="com.emergentes.inscripcion.Session"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listases") == null) {
        ArrayList<Session> lisaux = new ArrayList<Session>();
        session.setAttribute("listases", lisaux);
    }
    ArrayList<Session> lista = (ArrayList<Session>) session.getAttribute("listases");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menu.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <center><h1 class="text-bg-success">Lista de Inscritos</h1></center>
                    <a href="MainServlet?op=nuevo"><button type="button" class="btn btn-primary">Nuevo Registro</button></a>
                    <table class="table table-hover">
                        <tr class="table-dark">
                            <th>Id</th>
                            <th>Fecha</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Turno</th>
                            <th>Seminarios</th>
                            <th></th>
                            <th></th>
                        </tr>
                        <%            if (lista != null) {
                                for (Session item : lista) {
                        %>

                        <tr class="table-active">
                            <td><%= item.getId()%></td>
                            <td><%= item.getFecha()%></td>
                            <td><%= item.getNombres()%></td>
                            <td><%= item.getApellidos()%></td>
                            <td><%= item.getTurno()%></td>
                            <td>
                                <%= item.getSeminarios1()%>
                                <%= item.getSeminarios2()%>
                                <%= item.getSeminarios3()%>
                                <%= item.getSeminarios4()%>
                            </td>
                            <td><a href="MainServlet?op=editar&id=<%= item.getId()%>"><button type="button" class="btn btn-warning">Editar</button></a></td>
                            <td><a href="MainServlet?op=eliminar&id=<%= item.getId()%>" onclick="return(confirm('Esta seguro de eliminar??'))"><button type="button" class="btn btn-danger">Eliminar</button></a></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
        <%--<script src="js/jquery-3.7.1.min"></scipt>--%>
        <%--<script src="js/bootstrap.mi n "></scipt> --%>
    </body>
</html>

