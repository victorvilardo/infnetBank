package br.com.mjv.infnet.login.service;

import br.com.mjv.infnet.cliente.model.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.mjv.infnet.cliente.dao.ClienteDao;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private ClienteDao dao;
	
	@Override
	public Cliente buscarClienteUsuario(String usuario) {
		return dao.buscarClienteUsuario(usuario);
	}

}
