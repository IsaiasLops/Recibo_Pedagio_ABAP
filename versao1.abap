*&---------------------------------------------------------------------*
*& Report zrecibo_i_pedagio
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrecibo_i_pedagio. "imprimir recibo de pedágio


*Declarar variáveis
DATA: lei      TYPE c LENGTH 20,
      cnpj     TYPE c LENGTH 18,
      cidade   TYPE c LENGTH 100,
      rec_num  TYPE c LENGTH 20,
      op_id    TYPE c LENGTH 30,
      valor    TYPE p DECIMALS 2,
      f_pgto   TYPE c LENGTH 10,
      lei_fd   TYPE c LENGTH 20,
      placa    TYPE c LENGTH 10,
      vl_trib  TYPE p DECIMALS 2,
      gov_inst TYPE c LENGTH 10.


*Atribuir valor às variáveis
lei      = '1731/17 Art.2'.
cnpj     = '09.313.969/0001-97'.
cidade   = 'SÃO JOSÉ DOS PINHAIS KM635+300 VIA:19 N'.
rec_num  = 'U6FD54U2QG22'.
op_id    = '05491 - BEATRIZ Cat.:01'.
valor    = '4.10'.
f_pgto   = 'Dinheiro'.
lei_fd   = '(LEI 13.103/15)'.
placa    = 'BDS2I30'.
vl_trib  = '18.24'.
gov_inst = 'IBPT'.


*Imprimir recibo de pedágio
WRITE:   'DOC. FISCAL EQUIVALENTE IN', lei,
       / 'AUTOPISTA LITORAL SUL S/A',
       / cnpj,
       / cidade,
       / sy-datum, sy-timlo, 'Recibo:', rec_num,
       / 'OPERADOR:', op_id,
       / 'Valor Pago:R$', valor, 'F.Pgto:', f_pgto,
       / 'E.SUSP:00', lei_fd, 'CAT.ORIG:01',
       / 'PLACA:', placa,
       / 'Valor aprx. de trib.', vl_trib,'% (fonte:', gov_inst,')',
       / 'Para incluir placa/CPF/CNPJ acesse até',
       / '7 dias https//dfe.arteris.com.br'.
