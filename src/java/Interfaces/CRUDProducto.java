package Interfaces;

import Modelo.Producto;
import java.util.List;

public interface CRUDProducto {
    public List Listar();
    public Producto getProducto(int id);
    public int add(Producto pro);
    public int update(Producto pro);
    public int delete(int id);
}
