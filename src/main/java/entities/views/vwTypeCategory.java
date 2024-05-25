package entities.views;

public class vwTypeCategory {

    private int ID;
    private String Tipo;
    private String Categoria;

    public vwTypeCategory() {
    }

    public int getTcId() {
        return ID;
    }

    public void setTcId(int ID) {
        this.ID = ID;
    }

    public String getType() {
        return Tipo;
    }

    public void setType(String Tipo) {
        this.Tipo = Tipo;
    }


    public String getCat() {
        return Categoria;
    }

    public void setCat(String Categoria) {
        this.Categoria = Categoria;
    }

}
