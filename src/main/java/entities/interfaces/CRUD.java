package entities.interfaces;

import entities.tables.typeTable;

import java.util.ArrayList;

public interface CRUD {

    public ArrayList<typeTable> listar();
    public typeTable list(int id);
    public boolean add(typeTable t);
    public boolean edit(typeTable t);
    public boolean eliminar(int id);
}
