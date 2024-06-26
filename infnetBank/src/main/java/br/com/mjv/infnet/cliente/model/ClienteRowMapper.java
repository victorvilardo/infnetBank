package br.com.mjv.infnet.cliente.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

/**
 * Classe de mapeamento do modelo {@link Cliente} para a tabela TB_CLIENTE
 * @author victor
 *
 */
public class ClienteRowMapper implements RowMapper<Cliente> {

	@Override
	public Cliente mapRow(ResultSet rs, int rowNum) throws SQLException {

		Cliente cliente = new Cliente();
		
		cliente.setId(rs.getInt("id"));
		cliente.setNome(rs.getString("nome"));
		cliente.setUsuario(rs.getString("usuario"));
		cliente.setCpf(rs.getString("cpf"));
		cliente.setSaldo(rs.getDouble("saldo"));
		cliente.setAgencia(rs.getInt("agencia"));
		cliente.setConta(rs.getInt("conta"));
		
		return cliente;
	}

}
