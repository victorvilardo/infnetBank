package br.com.mjv.infnet.login.service;

import br.com.mjv.infnet.cliente.model.Cliente;

public interface LoginService {

	
	Cliente buscarClienteUsuario(String usuario);
	
}
