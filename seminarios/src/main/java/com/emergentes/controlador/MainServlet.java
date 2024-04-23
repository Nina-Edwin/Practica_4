package com.emergentes.controlador;

import com.emergentes.inscripcion.Session;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        Session objses = new Session();
        int id, pos;

        HttpSession ses = request.getSession();
        ArrayList<Session> lista = (ArrayList<Session>) ses.getAttribute("listases");

        switch (op) {
            case "nuevo":
                //Enviar un objeto vacio a editar
                request.setAttribute("miobjses", objses);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                break;
            case "editar":
                //Enviar un objeto a editar pero con contenido
                id = Integer.parseInt(request.getParameter("id"));
                //Averiguar la posicion del elemento en la lista
                pos = buscarPorIndice(request, id);
                //Obtener el objeto
                objses = lista.get(pos);
                request.setAttribute("miobjses", objses);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                break;
            case "eliminar":
                //Eliminar el registro de la coleccion segun el id
                id = Integer.parseInt(request.getParameter("id"));
                pos = buscarPorIndice(request, id);
                if (pos >= 0) {
                    lista.remove(pos);
                }
                request.setAttribute("listases", lista);
                response.sendRedirect("index.jsp");
                break;
            default:
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession ses = request.getSession();
        ArrayList<Session> lista = (ArrayList<Session>) ses.getAttribute("listases");
        Session objses = new Session();
        objses.setId(id);
        objses.setFecha(request.getParameter("fecha"));
        objses.setNombres(request.getParameter("nombres"));
        objses.setApellidos(request.getParameter("apellidos"));
        objses.setTurno(request.getParameter("turno"));
        objses.setSeminarios1(request.getParameter("seminarios1"));
        objses.setSeminarios2(request.getParameter("seminarios2"));
        objses.setSeminarios3(request.getParameter("seminarios3"));
        objses.setSeminarios4(request.getParameter("seminarios4"));
        //objses.setP1(Integer.parseInt(request.getParameter("p1")));
        //objses.setP2(Integer.parseInt(request.getParameter("p2")));
        //objses.setEf(Integer.parseInt(request.getParameter("ef")));
        //objses.setNota(Integer.parseInt(request.getParameter("nota")));
        if (id == 0) {
            //Nuevo Registrp
            int idNuevo = obtenerId(request);
            objses.setId(idNuevo);
            lista.add(objses);
        } else {
            int pos = buscarPorIndice(request, id);
            lista.set(pos, objses);
        }

        request.setAttribute("listases", lista);
        response.sendRedirect("index.jsp");
    }

    public int buscarPorIndice(HttpServletRequest request, int id) {
        HttpSession ses = request.getSession();
        ArrayList<Session> lista = (ArrayList<Session>) ses.getAttribute("listases");
        int pos = -1;
        if (lista != null) {
            for (Session ele : lista) {
                ++pos;
                if (ele.getId() == id) {
                    break;
                }
            }
        }
        return pos;
    }

    public int obtenerId(HttpServletRequest request) {
        HttpSession ses = request.getSession();
        ArrayList<Session> lista = (ArrayList<Session>) ses.getAttribute("listases");
        int idn = 0;
        for (Session ele : lista) {
            idn = ele.getId();
        }
        return idn + 1;
    }
}
