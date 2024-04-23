<%@page import="com.emergentes.inscripcion.Session"%>
<%
    Session ses = (Session) request.getAttribute("miobjses");
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
                    <center><h1 class="text-bg-success">REGISTRO DE SEMINARIOS</h1></center>
                    <form action="MainServlet" method="post">
                        <table class="col-lg-12">
                            <tr>
                                <td>Id</td>
                                <td><input type="text" name="id" class="form-control" placeholder="" value="<%= ses.getId()%>" size="2" readonly></td>
                            </tr>
                            <tr>
                                <td>Fecha</td>
                                <td><input class="form-control" type="date" name="fecha" value=""/></td>
                            </tr>
                            <tr>
                                <td>Nombres</td>
                                <td><input type="text" name="nombres" class="form-control" placeholder="Ingrese Aqui..." value="<%= ses.getNombres()%>"></td>
                            </tr>
                            <tr>
                                <td>Apellidos</td>
                                <td><input  type="text" name="apellidos" class="form-control" placeholder="Ingrese Aqui..." value="<%= ses.getApellidos()%>"></td>
                            </tr>
                            <tr>
                                <td>Turno</td>
                                <td>
                                    <fieldset>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="turno" id="Mañana" value="Mañana" checked="">
                                            <label class="form-check-label" for="Mañana">
                                                Mañana
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="turno" id="Tarde" value="Tarde">
                                            <label class="form-check-label" for="Tarde">
                                                Tarde
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="turno" id="Noche" value="Noche">
                                            <label class="form-check-label" for="Noche">
                                                Noche
                                            </label>
                                        </div>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td>Seminarios</td>
                                <td>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="seminarios1" id="IA" value="Inteligencia Artificial" >
                                        <label class="form-check-label" for="IA">
                                            Inteligencia Artificial
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="seminarios2" id="ML" value="Machine Learning" >
                                        <label class="form-check-label" for="ML">
                                            Machine Learning
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="seminarios3" id="SA" value="Simulacion con Arena" >
                                        <label class="form-check-label" for="SA">
                                            Simulacion con Arena
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="seminarios4" id="RE" value="Robotica Educativa" >
                                        <label class="form-check-label" for="RE">
                                            Robotica Educativa
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" values="Enviar" class="btn btn-primary">Enviar Registro</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
