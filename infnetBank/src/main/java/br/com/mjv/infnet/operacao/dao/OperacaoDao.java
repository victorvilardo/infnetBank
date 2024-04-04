package br.com.mjv.infnet.operacao.dao;

import java.util.Date;
import java.util.List;

import br.com.mjv.infnet.operacao.model.Operacao;

public interface OperacaoDao {

	void incluirOperacao(Operacao operacao);
	List<Operacao> operacoesPorClientePeriodo(Integer idCliente, Date dataInicio, Date dataFim);
	Operacao findById(Integer id);
}
