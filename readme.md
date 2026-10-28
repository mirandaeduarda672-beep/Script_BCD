<h1>ARENA ESPORTIVA — BANCO DE DADOS</h1>
<p><b>Sistema de Gestão e Agendamento de Quadras</b></p>

<ul>
  <li><b>Instituição:</b> Escola SENAI Suíço-Brasileira</li>
  <li><b>Professor:</b> Átila</li>
  <li><b>Disciplina:</b> Banco de Dados</li>
  <li><b>Autora:</b> Maria Eduarda Miranda Torres</li>
  <li><b>Turma:</b> SEDUC 2</li>
  <li><b>Data:</b> 28/10/2026</li>
</ul>

<hr />

<h2>Apresentação do Projeto</h2>
<p>
  Este projeto consiste na modelagem e estruturação de um Banco de Dados Relacional voltado para o gerenciamento operacional de um complexo esportivo multiuso. O sistema foi projetado para automatizar a locação de espaços, o controle de agendamentos e a administração de insumos de uma arena esportiva baseada em modelos recreativos e de convivência (estilo SESC).
</p>

<h2>Escopo Operacional</h2>

<h3>Reserva e Agendamento de Quadras</h3>
<p>Controle estrito de horários, disponibilidade e tarifação para quadras de Tênis, Futebol, Vôlei, Basquete e Beach Tennis.</p>

<h3>Gestão de Atletas e Clientes</h3>
<p>Cadastro centralizado de frequentadores, histórico de uso, registro de locações e controle de frequência.</p>

<h3>Empréstimo e Aluguel de Equipamentos</h3>
<p>Controle de estoque e locação temporária de artigos esportivos (raquetes, bolas, coletes e redes).</p>

<h3>Serviços de Consumação e Conveniência</h3>
<p>Registro de consumo no quiosque e lanchonete interna associado à comanda do atleta durante o período de locação.</p>

<h3>Eventos e Torneios Esportivos</h3>
<p>Suporte à organização de campeonatos internos, tabela de partidas e inscrições de competidores.</p>

<hr />

<h2>Resultados das Querys</h2>

<h3>Resultado #2 — Cadastro de Clientes</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_cliente</th>
      <th>nome</th>
      <th>email</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>2</td><td>Ana Julia Oliveira</td><td>ana.oliveira@email.com</td></tr>
    <tr><td>3</td><td>Bruno Mendes Costa</td><td>bruno.costa@email.com</td></tr>
    <tr><td>1</td><td>Carlos Augusto Silva</td><td>carlos.silva@email.com</td></tr>
    <tr><td>5</td><td>Diego Rocha Ferreira</td><td>diego.rocha@email.com</td></tr>
    <tr><td>4</td><td>Julia de Souza Lima</td><td>julia.lima@email.com</td></tr>
  </tbody>
</table>

<h3>Resultado #3 — Quadras de Tênis Disponíveis</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_quadra</th>
      <th>nome</th>
      <th>tipo</th>
      <th>preco_hora</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>Quadra de Tênis Saibro A</td><td>Tênis</td><td>80.00</td></tr>
    <tr><td>2</td><td>Quadra de Tênis Saibro B</td><td>Tênis</td><td>80.00</td></tr>
  </tbody>
</table>

<h3>Resultado #4 — Reservas Iniciais Confirmadas</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_reserva</th>
      <th>id_cliente</th>
      <th>id_quadra</th>
      <th>data_reserva</th>
      <th>hora_inicio</th>
      <th>hora_fim</th>
      <th>status</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>1</td><td>3</td><td>09/11/2026</td><td>19:00:00</td><td>21:00:00</td><td>Confirmada</td></tr>
    <tr><td>2</td><td>2</td><td>1</td><td>09/11/2026</td><td>18:00:00</td><td>19:00:00</td><td>Confirmada</td></tr>
  </tbody>
</table>

<h3>Resultado #5 — Inventário de Materiais Esportivos</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_material</th>
      <th>nome</th>
      <th>estoque_total</th>
      <th>preco_aluguel</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>Bola de Futebol Society</td><td>10</td><td>15.00</td></tr>
    <tr><td>2</td><td>Raquete de Tênis</td><td>8</td><td>20.00</td></tr>
    <tr><td>5</td><td>Raquete de Beach Tennis</td><td>12</td><td>15.00</td></tr>
  </tbody>
</table>

<h3>Resultado #6 — Total de Reservas por Status</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>status</th>
      <th>total_reservas</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Confirmada</td><td>4</td></tr>
    <tr><td>Cancelada</td><td>1</td></tr>
  </tbody>
</table>

<h3>Resultado #7 — Soma do Estoque Total de Itens</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>total_itens_estoque</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>50</td></tr>
  </tbody>
</table>

<h3>Resultado #8 — Relatório de Reservas com Nome do Cliente e Quadra</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_reserva</th>
      <th>nome_cliente</th>
      <th>nome_quadra</th>
      <th>data_reserva</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>Carlos Augusto Silva</td><td>Campo Society Premium 1</td><td>09/11/2026</td></tr>
    <tr><td>2</td><td>Ana Julia Oliveira</td><td>Quadra de Tênis Saibro A</td><td>09/11/2026</td></tr>
    <tr><td>3</td><td>Bruno Mendes Costa</td><td>Arena Areia Beach 1</td><td>10/11/2026</td></tr>
    <tr><td>4</td><td>Julia de Souza Lima</td><td>Campo Society Premium 1</td><td>11/11/2026</td></tr>
    <tr><td>5</td><td>Diego Rocha Ferreira</td><td>Quadra de Tênis Saibro B</td><td>11/11/2026</td></tr>
  </tbody>
</table>

<h3>Resultado #9 — Detalhes da Reserva Cancelada</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_reserva</th>
      <th>id_cliente</th>
      <th>id_quadra</th>
      <th>data_reserva</th>
      <th>hora_inicio</th>
      <th>hora_fim</th>
      <th>status</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>4</td><td>4</td><td>3</td><td>11/11/2026</td><td>20:00:00</td><td>21:00:00</td><td>Cancelada</td></tr>
  </tbody>
</table>

<h3>Resultado #10 — Lista de Materiais Alugados em Sessão</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>nome</th>
      <th>quantidade</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Bola de Futebol Society</td><td>1</td></tr>
    <tr><td>Colete Azul (Lote c/ 10)</td><td>1</td></tr>
  </tbody>
</table>

<h3>Resultado #11 — Lista Telefônica de Clientes</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_cliente</th>
      <th>nome</th>
      <th>telefone</th>
      <th>email</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>Carlos Augusto Silva</td><td>11999991111</td><td>carlos.silva@email.com</td></tr>
    <tr><td>2</td><td>Ana Julia Oliveira</td><td>11988882222</td><td>ana.oliveira@email.com</td></tr>
    <tr><td>3</td><td>Bruno Mendes Costa</td><td>11977773333</td><td>bruno.costa@email.com</td></tr>
    <tr><td>4</td><td>Julia de Souza Lima</td><td>11966664444</td><td>julia.lima@email.com</td></tr>
    <tr><td>5</td><td>Diego Rocha Ferreira</td><td>11955555555</td><td>diego.rocha@email.com</td></tr>
  </tbody>
</table>

<h3>Resultado #12 — Média de Preço por Hora das Quadras</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>AVG(quadras.preco_hora)</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>92.000000</td></tr>
  </tbody>
</table>

<h3>Resultado #13 — Contagem de Materiais Alugados por Reserva</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_reserva</th>
      <th>COUNT(itens_reserva.id_material)</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>2</td></tr>
    <tr><td>2</td><td>2</td></tr>
    <tr><td>3</td><td>1</td></tr>
  </tbody>
</table>

<h3>Resultado #14 & #15 — Histórico de Quadras e Reservas</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_quadra</th>
      <th>nome</th>
      <th>tipo</th>
      <th>preco_hora</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>3</td><td>Campo Society Premium 1</td><td>Society</td><td>120.00</td></tr>
    <tr><td>4</td><td>Campo Society Premium 2</td><td>Society</td><td>120.00</td></tr>
    <tr><td>1</td><td>Quadra de Tênis Saibro A</td><td>Tênis</td><td>80.00</td></tr>
    <tr><td>2</td><td>Quadra de Tênis Saibro B</td><td>Tênis</td><td>80.00</td></tr>
  </tbody>
</table>

<br />

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_reserva</th>
      <th>id_cliente</th>
      <th>id_quadra</th>
      <th>data_reserva</th>
      <th>hora_inicio</th>
      <th>hora_fim</th>
      <th>status</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>1</td><td>3</td><td>09/11/2026</td><td>19:00:00</td><td>21:00:00</td><td>Confirmada</td></tr>
    <tr><td>2</td><td>2</td><td>1</td><td>09/11/2026</td><td>18:00:00</td><td>19:00:00</td><td>Confirmada</td></tr>
    <tr><td>4</td><td>4</td><td>3</td><td>11/11/2026</td><td>20:00:00</td><td>21:00:00</td><td>Cancelada</td></tr>
    <tr><td>5</td><td>5</td><td>2</td><td>11/11/2026</td><td>19:00:00</td><td>21:00:00</td><td>Confirmada</td></tr>
  </tbody>
</table>

<h3>Resultado #16 — Faturamento Total de Locação de Equipamentos</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>SUM(itens_reserva.quantidade * materiais.preco_aluguel)</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>40.00</td></tr>
  </tbody>
</table>

<hr />

<h3 align="center">SENAI Suíço-Brasileira | Banco de Dados Relacional</h3>
