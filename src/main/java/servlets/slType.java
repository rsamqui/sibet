package servlets;

import data.dtType;
import entities.tables.typeTable;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/slType")
public class slType extends HttpServlet {

    String listar="/inventory/type.jsp";
    String add="/inventory/type-forms/create-type-form.jsp";
    String edit="vistas/edit.jsp";
    typeTable tt = new typeTable();
    dtType dtt = new dtType();
    int id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String access="";
        String action=request.getParameter("action");
        if(action.equalsIgnoreCase("listar")){
            access=listar;
        }else if(action.equalsIgnoreCase("add")){
            access=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            int typeId=Integer.parseInt(request.getParameter("idType"));
            String name=request.getParameter("typeName");
            tt.setTypeId(typeId);
            tt.setName(name);
            dtt.add(tt);
            access=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            access=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            int typeId=Integer.parseInt(request.getParameter("txtId"));
            String name=request.getParameter("txtName");
            tt.setTypeId(typeId);
            tt.setName(name);
            dtt.edit(tt);
            access=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            tt.setTypeId(id);
            dtt.eliminar(id);
            access=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(access);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
