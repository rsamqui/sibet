package data;

import entities.interfaces.CRUD;
import entities.tables.typeTable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class dtType implements CRUD {

    connectionPool pc = connectionPool.getInstance();
    Connection c ;
    ResultSet rs;
    PreparedStatement ps;
    typeTable t = new typeTable();

    public dtType() {
    }

    public void fillRsType(Connection c){
        try{
            this.ps = c.prepareStatement("select * from sibet.type");
            this.rs = ps.executeQuery();
        }catch(Exception e){
            System.out.println("Error en dtType.fillRsType: "+e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    public ArrayList<typeTable> listar(){
        ArrayList<typeTable> listType = new ArrayList<>();
        String sql = "select * from sibet.type";
        try {
            c = connectionPool.getConnection();
            ps = c.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rs = ps.executeQuery();

            while (rs.next()) {
                typeTable tt = new typeTable();
                tt.setTypeId(rs.getInt("typeId"));
                tt.setName(rs.getString("name"));
                listType.add(tt);
            }
        } catch (Exception e) {
            System.out.println("Error en dtType.listar: "+e.getMessage());
            e.printStackTrace();
        }finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (c != null)
                    connectionPool.closeConnection(c);
                }
           catch (Exception e) {
                System.out.println("Error en dtType.listar: "+e.getMessage());
                e.printStackTrace();
            }
        }
        return listType;
    }

    @Override
    public typeTable list(int id) {
        String sql = "select * from type where typeId=" + id;
        try {
            c = pc.getConnection();
            ps = c.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                typeTable t = new typeTable();
                t.setTypeId(rs.getInt("typeId"));
                t.setName(rs.getString("name"));
                return t;
            }
        } catch (Exception e) {
        }
        return t;
    }

    @Override
    public boolean add(typeTable t) {
        String sql = "insert into type(typeId, name)values('" + t.getTypeId() + "','" + t.getName() + "')";
        try {
            c = pc.getConnection();
            ps = c.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(typeTable t) {
        String sql = "update type set name='" + t.getName() + "' where typeId=" + t.getTypeId();
        try {
            c = pc.getConnection();
            ps = c.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from type where typeId=" + id;
        try {
            c = pc.getConnection();
            ps = c.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
