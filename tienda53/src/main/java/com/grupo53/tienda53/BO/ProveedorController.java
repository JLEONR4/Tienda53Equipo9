package com.grupo53.tienda53.BO;

import java.util.ArrayList;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.ProveedoresDAO;
import com.grupo53.tienda53.DTO.ProveedoresVO;

@RestController
public class ProveedorController {
    /*
     * @GetMapping obtener o buscar
     * @PostMapping insertar o agregar
     * @PutMapping modificar o actualizar
     * @DeleteMapping eliminar o borrar
     * */

    @PostMapping("/registrarproveedor")
    public void registrarProveedor(ProveedoresVO proveedor) {
    	ProveedoresDAO Dao = new ProveedoresDAO();
        Dao.registrarProveedor(proveedor);
    }

    @GetMapping("/consultarproveedor")
    public ArrayList<ProveedoresVO> consultarProveedor(int NIT_proveedor) {
    	ProveedoresDAO Dao = new ProveedoresDAO();
        return Dao.consultarProveedor(NIT_proveedor);
    }

    @GetMapping("/listarproveedores")
    public ArrayList<ProveedoresVO> listaDeProveedores() {
    	ProveedoresDAO Dao = new ProveedoresDAO();
        return Dao.listaDeProveedores();
    }
    @DeleteMapping("/eliminarproveedor")
    public void eliminarProveedor(Integer NIT_proveedor) {
    	ProveedoresDAO Dao = new ProveedoresDAO();
        Dao.eliminarProveedor(NIT_proveedor);
    }

    @PutMapping("/actualizarproveedor")
    public void actualizarProveedor(ProveedoresVO proveedor) {
    	ProveedoresDAO Dao = new ProveedoresDAO();
        Dao.actualizarProveedor(proveedor);
    }



}