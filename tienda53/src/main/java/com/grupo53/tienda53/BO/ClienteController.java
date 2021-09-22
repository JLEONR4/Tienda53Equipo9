package com.grupo53.tienda53.BO;

import java.util.ArrayList;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.ClientesDAO;
import com.grupo53.tienda53.DTO.ClientesVO;

@RestController
public class ClienteController {
    /*
     * @GetMapping obtener o buscar
     * @PostMapping insertar o agregar
     * @PutMapping modificar o actualizar
     * @DeleteMapping eliminar o borrar
     * */

    @PostMapping("/registrarcliente")
    public void registrarCliente(ClientesVO user) {
        ClientesDAO Dao = new ClientesDAO();
        Dao.registrarCliente(user);
    }

    @GetMapping("/consultarclientes")
    public ArrayList<ClientesVO> consultarClientes(int cedula_cliente) {
        ClientesDAO Dao = new ClientesDAO();
        return Dao.consultarClientes(cedula_cliente);
    }

    @GetMapping("/listarclientes")
    public ArrayList<ClientesVO> listaDeClientes() {
        ClientesDAO Dao = new ClientesDAO();
        return Dao.listaDeClientes();
    }
    @DeleteMapping("/eliminarclientes")
    public void eliminarClientes(Integer cedula_usuario) {
        ClientesDAO Dao = new ClientesDAO();
        Dao.eliminarCliente (cedula_usuario);
    }

    @PutMapping("/actualizarClientes")
    public void actualizarUsuario(ClientesVO cliente) {
        ClientesDAO Dao = new ClientesDAO();
        Dao.registrarCliente(cliente);
    }



}