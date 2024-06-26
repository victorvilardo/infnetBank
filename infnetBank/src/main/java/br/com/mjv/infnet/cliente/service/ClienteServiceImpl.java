package br.com.mjv.infnet.cliente.service;

import br.com.mjv.infnet.exception.BusinessException;
import br.com.mjv.infnet.operacao.model.Operacao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.mjv.infnet.cliente.dao.ClienteDao;
import br.com.mjv.infnet.cliente.model.Cliente;

@Service
public class ClienteServiceImpl implements ClienteService {

	private static final Logger LOGGER = LoggerFactory.getLogger(ClienteServiceImpl.class);
	
	@Autowired
	private ClienteDao dao;
	
	@Override
	public Integer incluirCliente(Cliente cliente) throws BusinessException {

		
		Cliente existe = dao.buscarClienteUsuario(cliente.getUsuario());
		
		if(existe != null) {
			LOGGER.error("Já existe cliente com o usuário informado");
			throw new BusinessException("Já existe cliente com o usuário informado");
		}
		
		cliente.setAgencia(1);
		cliente.setConta(6549879);
		
		return dao.incluirCliente(cliente);
	}

	@Override
	public Cliente buscarPorId(Integer id) {
		return dao.buscarPorId(id);
	}

	@Override
	public Cliente findClienteByAgenciaConta(Integer agencia, Integer conta) {
		return dao.findClienteByAgenciaConta(agencia, conta);
	}

	@Override
	public void realizarTransferencia(Integer idCliente, Operacao operacao) {
		// TODO Auto-generated method stub
		
	}

}
