package br.com.mjv.infnet.operacao.service;

import java.util.Date;
import java.util.List;

import br.com.mjv.infnet.operacao.model.Operacao;

public interface OperacaoService {

	void incluirOperacao(Operacao operacao);
	List<Operacao> operacoesPorClientePeriodo(Integer idCliente, Date dataInicio, Date dataFim);
	void realizarTransferencia(Integer idDe, Operacao operacao);
}
