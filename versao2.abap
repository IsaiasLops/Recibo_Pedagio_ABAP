*&---------------------------------------------------------------------*
*& Report zrecibo_i_pedagio
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrecibo_i_pedagio_v2_input. "imprimir recibo de pedágio VERSÃO 2.0


*Definir CONSTANTS
CONSTANTS: lei      TYPE c LENGTH 20  VALUE '1731/17 Art.2',
           cnpj     TYPE c LENGTH 18  VALUE '09.313.969/0001-97',
           cidade   TYPE c LENGTH 100 VALUE 'SÃO JOSÉ DOS PINHAIS KM635+300 VIA:19 N',
           rec_num  TYPE c LENGTH 20  VALUE 'U6FD54U2QG22',
           lei_fd   TYPE c LENGTH 20  VALUE '(LEI 13.103/15)',
           vl_trib  TYPE p DECIMALS 2 VALUE '18.24',
           gov_inst TYPE c LENGTH 10  VALUE 'IBPT'.


*Definir entradas do usuário
PARAMETERS: p_opid(30)    TYPE c  DEFAULT '05491',   "= '05491 - BEATRIZ Cat.:01'.
            p_opname(100)  TYPE c DEFAULT 'BEATRIZ',
            p_opcat(5)    TYPE n  DEFAULT '01'.


*Definir entradas da prestação de serviço
PARAMETERS: p_valor  TYPE p DECIMALS 2,
            p_f_pgto TYPE c LENGTH 10 DEFAULT 'Dinheiro',
            p_placa  TYPE c LENGTH 10.


*Definir variáveis
DATA: op_id_name TYPE c LENGTH 200,
      op_full    TYPE c LENGTH 210.


CONCATENATE: p_opid p_opname   INTO op_id_name SEPARATED BY ' - ',
             op_id_name p_opcat INTO op_full    SEPARATED BY SPACE.


*Imprimir recibo de pedágio
WRITE:   'DOC. FISCAL EQUIVALENTE IN', lei,
       / 'AUTOPISTA LITORAL SUL S/A',
       / cnpj,
       / cidade,
       / sy-datum, sy-timlo, 'Recibo:', rec_num,
       / 'OPERADOR:', op_full,
       / 'Valor Pago:R$', p_valor, 'F.Pgto:', p_f_pgto,
       / 'E.SUSP:00', lei_fd, 'CAT.ORIG:01',
       / 'PLACA:', p_placa,
       / 'Valor aprx. de trib.', vl_trib,'% (fonte:', gov_inst,')',
       / 'Para incluir placa/CPF/CNPJ acesse até',
       / '7 dias https//dfe.arteris.com.br'.
