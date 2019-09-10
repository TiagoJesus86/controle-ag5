unit UDBFinanceiro_InitCFOP;

interface

uses
   Tc.DBRTL.AbstractDB,
   Tc.DBRTL.AbstractDB.DBX ;

type
   TInitCFOP = class
   private
    FDBFinanceiro: ITcAbstractDB ;
    procedure INSERT_CFOP ( a,b,c : string ) ;
    procedure Execute_1000 ;
    procedure Execute_2000 ;
    procedure Execute_3000 ;
    procedure Execute_5000 ;
    procedure Execute_6000 ;
    procedure Execute_7000 ;
    procedure InternalExecute ;
   public
     class procedure Execute ( ADBFinanceiro: ITcAbstractDB ) ;
   end;


implementation

uses SysUtils ;

procedure TInitCFOP.INSERT_CFOP ( a,b,c : string ) ;
const
  _INSERT_FAT_CFOP =
     'INSERT INTO FAT_CFOP(CFOP,DESCRICAO,APLICACAO) VALUES ( ''%s'', ''%s'', ''%s'' )' ;
begin
  FDBFinanceiro.ExecuteDirect( Format ( _INSERT_FAT_CFOP, [ a, b, c] ) );
end;

procedure TInitCFOP.InternalExecute ;
begin
   Execute_1000 ;
   Execute_2000 ;
   Execute_3000 ;
   Execute_5000 ;
   Execute_6000 ;
   Execute_7000 ;
end;

class procedure TInitCFOP.Execute ( ADBFinanceiro: ITcAbstractDB ) ;
begin
  with Create do
   try
      FDBFinanceiro := ADBFinanceiro ;
      InternalExecute ;
   finally
      Free ;
   end;
end ;

procedure TInitCFOP.Execute_1000 ;
begin

INSERT_CFOP( '1000','ENTRADAS OU AQUISI��ES DE SERVI�OS DO ESTADO','Classificam-se, neste grupo, as opera��es ou presta��es em que o estabelecimento remetente esteja localizado na mesma unidade da Federa��o do destinat�rio' ) ;
INSERT_CFOP( '1100','COMPRAS PARA INDUSTRIALIZA��O, PRODU��O RURAL, COMERCIALIZA��O OU PRESTA��O DE SERVI�OS ','' ) ;
INSERT_CFOP( '1101','Compra para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Compra de mercadoria a ser utilizada em processo de industrializa��o ou produ��o rural, bem como a entrada de mercadoria em estabelecimento industrial ou produtor rural de cooperativa recebida de seus cooperados ou de estabelecimento de outra cooperativa.' ) ;
INSERT_CFOP( '1102','Compra para comercializa��o',
                    'Classificam-se neste c�digo as compras de mercadorias a serem comercializadas.'
                   +'Tamb�m ser�o classificadas neste c�digo as entradas de mercadorias em estabelecimento comercial de cooperativa recebidas de seus cooperados ou de estabelecimento de outra cooperativa.' ) ;
INSERT_CFOP( '1111','Compra para industrializa��o de mercadoria recebida anteriormente em consigna��o industrial','Classificam-se neste c�digo as compras efetivas de mercadorias a serem utilizadas em processo de industrializa��o, recebidas anteriormente a t�tulo de consigna��o industrial.' ) ;
INSERT_CFOP( '1113','Compra para comercializa��o, de mercadoria recebida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as compras efetivas de mercadorias recebidas anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '1116','Compra para industrializa��o ou produ��o rural originada de encomenda para recebimento futuro (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)',
                    'Compra de mercadoria, a ser utilizada em processo de industrializa��o ou produ��o rural, quando da entrada real da mercadoria, cuja aquisi��o tenha sido classificada no c�digo '
                   +'�1.922 � Lan�amento efetuado a t�tulo de simples faturamento decorrente de compra para recebimento futuro�.' ) ;
INSERT_CFOP( '1117','Compra para comercializa��o originada de encomenda para recebimento futuro',
                    'Classificam-se neste c�digo as compras de mercadorias a serem comercializadas, quando da entrada real da mercadoria, cuja aquisi��o tenha sido classificada no c�digo '
                   +'1.922 - Lan�amento efetuado a t�tulo de simples faturamento decorrente de compra para recebimento futuro.' ) ;
INSERT_CFOP( '1118','Compra de mercadoria para comercializa��o pelo adquirente origin�rio, entregue pelo vendedor remetente ao destinat�rio, em venda � ordem.',
                    'Classificam-se neste c�digo as compras de mercadorias j� comercializadas, que, sem transitar pelo estabelecimento do adquirente origin�rio, '
                    +'sejam entregues pelo vendedor remetente diretamente ao destinat�rio, em opera��o de venda � ordem, cuja venda seja classificada, pelo adquirente origin�rio, '
                    +'no c�digo 5.120 - Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinat�rio pelo vendedor remetente, em venda � ordem.' ) ;
INSERT_CFOP( '1120','Compra para industrializa��o, em venda � ordem, j� recebida do vendedor remetente','Classificam-se neste c�digo as compras de mercadorias a serem utilizadas em processo de industrializa��o, em vendas � ordem, j� recebidas do vendedor remetente, por ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '1121','Compra para comercializa��o, em venda � ordem, j� recebida do vendedor remetente','Classificam-se neste c�digo as compras de mercadorias a serem comercializadas, em vendas � ordem, j� recebidas do vendedor remetente por ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '1122','Compra para industrializa��o em que a mercadoria foi remetida pelo fornecedor ao industrializador sem transitar pelo estabelecimento adquirente','Classificam-se neste c�digo as compras de mercadorias a serem utilizadas em processo de industrializa��o, remetidas pelo fornecedor para o industrializador sem que a mercadoria tenha transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '1124','Industrializa��o efetuada por outra empresa',
                    'Classificam-se neste c�digo as entradas de mercadorias industrializadas por terceiros, compreendendo os valores referentes aos servi�os prestados e '
                   +'os das mercadorias de propriedade do industrializador empregadas no processo industrial. Quando a industrializa��o efetuada se referir a bens do ativo '
                   +'imobilizado ou de mercadorias para uso ou consumo do estabelecimento encomendante, a entrada dever� ser classificada nos c�digos 1.551 - Compra de bem para o ativo imobilizado ou 1.556 - Compra de material para uso ou consumo.' ) ;
INSERT_CFOP( '1125','Industrializa��o efetuada por outra empresa quando a mercadoria remetida para utiliza��o no processo de industrializa��o n�o transitou pelo estabelecimento adquirente da mercadoria',
                    'Classificam-se neste c�digo as entradas de mercadorias industrializadas por outras empresas, em que as mercadorias remetidas para utiliza��o no processo de industrializa��o n�o transitaram pelo estabelecimento do adquirente das mercadorias, '
                   +'compreendendo os valores referentes aos servi�os prestados e os das mercadorias de propriedade do industrializador empregadas no processo industrial. Quando a industrializa��o efetuada se referir a bens do ativo imobilizado ou de mercadorias '
                   +'para uso ou consumo do estabelecimento encomendante, a entrada dever� ser classificada nos c�digos 1.551 - Compra de bem para o ativo imobilizado ou 1.556 - Compra de material para uso ou consumo.' ) ;
INSERT_CFOP( '1126','Compra para utiliza��o na presta��o de servi�o sujeita ao ICMS (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) - DECRETO 36.465/2011','Classificam-se neste c�digo as entradas de mercadorias a serem utilizadas nas presta��es de servi�os sujeitas ao ICMS. (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011' ) ;
INSERT_CFOP( '1128','Compra para utiliza��o na presta��o de servi�o sujeita ao ISSQN(AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011','Classificam-se neste c�digo as entradas de mercadorias a serem utilizadas nas presta��es de servi�os sujeitas ao ISSQN. (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011 - DECRETO 36.465/2011.' ) ;
INSERT_CFOP( '1150','TRANSFER�NCIAS PARA INDUSTRIALIZA��O, PRODU��O RURAL, COMERCIALIZA��O OU PRESTA��O DE SERVI�OS (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','' ) ;
INSERT_CFOP( '1151','Transfer�ncia para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Entrada de mercadoria recebida, em transfer�ncia de outro estabelecimento da mesma empresa, para ser utilizada em processo de industrializa��o ou produ��o rural.' ) ;
INSERT_CFOP( '1152','Transfer�ncia para comercializa��o','Classificam-se neste c�digo as entradas de mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem comercializadas.' ) ;
INSERT_CFOP( '1153','Transfer�ncia de energia el�trica para distribui��o','Classificam-se neste c�digo as entradas de energia el�trica recebida em transfer�ncia de outro estabelecimento da mesma empresa, para distribui��o.' ) ;
INSERT_CFOP( '1154','Transfer�ncia para utiliza��o na presta��o de servi�o','Classificam-se neste c�digo as entradas de mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem utilizadas nas presta��es de servi�os.' ) ;
INSERT_CFOP( '1200','DEVOLU��ES DE VENDAS DE PRODU��O DO ESTABELECIMENTO, DE PRODUTOS DE TERCEIROS OU ANULA��ES DE VALORES','' ) ;
INSERT_CFOP( '1201','Devolu��o de venda de produ��o do estabelecimento ','Devolu��o de venda de produto industrializado ou produzido pelo estabelecimento, cuja sa�da tenha sido classificada como "Venda de produ��o do estabelecimento". (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)' ) ;
INSERT_CFOP( '1202','Devolu��o de venda de mercadoria adquirida ou recebida de terceiros',
                    'Classificam-se neste c�digo as devolu��es de vendas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de industrializa��o no estabelecimento, '
                   +'cujas sa�das tenham sido classificadas como Venda de mercadoria adquirida ou recebida de terceiros.' ) ;
INSERT_CFOP( '1203','Devolu��o de venda de produ��o do estabelecimento, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio ',
                    'Devolu��o de venda de produto industrializado ou produzido pelo estabelecimento, cuja sa�da tenha sido classificada no c�digo '
                   +'"5.109 � Venda de produ��o do estabelecimento destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio". (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)' ) ;
INSERT_CFOP( '1204','Devolu��o de venda de mercadoria adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio',
                    'Classificam-se neste c�digo as devolu��es de vendas de mercadorias adquiridas ou recebidas de terceiros, cujas sa�das foram classificadas no c�digo '
                   +'5.110 - Venda de mercadoria adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio.' ) ;
INSERT_CFOP( '1205','Anula��o de valor relativo � presta��o de servi�o de comunica��o','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes de presta��es de servi�os de comunica��o.' ) ;
INSERT_CFOP( '1206','Anula��o de valor relativo � presta��o de servi�o de transporte','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes de presta��es de servi�os de transporte.' ) ;
INSERT_CFOP( '1207','Anula��o de valor relativo � venda de energia el�trica','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes de venda de energia el�trica.' ) ;
INSERT_CFOP( '1208','Devolu��o de produ��o do estabelecimento, remetida em transfer�ncia','Devolu��o de produto industrializado ou produzido pelo estabelecimento transferido para outro estabelecimento da mesma empresa. (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)' ) ;
INSERT_CFOP( '1209','Devolu��o de mercadoria adquirida ou recebida de terceiros, remetida em transfer�ncia','Classificam-se neste c�digo as devolu��es de mercadorias adquiridas ou recebidas de terceiros, transferidas para outros estabelecimentos da mesma empresa.' ) ;
INSERT_CFOP( '1250','COMPRAS DE ENERGIA EL�TRICA','' ) ;
INSERT_CFOP( '1251','Compra de energia el�trica para distribui��o ou comercializa��o','Classificam-se neste c�digo as compras de energia el�trica utilizada em sistema de distribui��o ou comercializa��o. Tamb�m ser�o classificadas neste c�digo as compras de energia el�trica por cooperativas para distribui��o aos seus cooperados.' ) ;
INSERT_CFOP( '1252','Compra de energia el�trica por estabelecimento industrial','Classificam-se neste c�digo as compras de energia el�trica utilizada no processo de industrializa��o. Tamb�m ser�o classificadas neste c�digo as compras de energia el�trica utilizada por estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '1253','Compra de energia el�trica por estabelecimento comercial','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as compras de energia el�trica utilizada por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '1254','Compra de energia el�trica por estabelecimento prestador de servi�o de transporte','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento prestador de servi�os de transporte.' ) ;
INSERT_CFOP( '1255','Compra de energia el�trica por estabelecimento prestador de servi�o de comunica��o','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '1256','Compra de energia el�trica por estabelecimento de produtor rural','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '1257','Compra de energia el�trica para consumo por demanda contratada','Classificam-se neste c�digo as compras de energia el�trica para consumo por demanda contratada, que prevalecer� sobre os demais c�digos deste subgrupo.' ) ;
INSERT_CFOP( '1300','AQUISI��ES DE SERVI�OS DE COMUNICA��O','' ) ;
INSERT_CFOP( '1301','Aquisi��o de servi�o de comunica��o para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados nas presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '1302','Aquisi��o de servi�o de comunica��o por estabelecimento industrial','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento industrial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '1303','Aquisi��o de servi�o de comunica��o por estabelecimento comercial','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '1304','Aquisi��o de servi�o de comunica��o por estabelecimento de prestador de servi�o de transporte','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento prestador de servi�o de transporte.' ) ;
INSERT_CFOP( '1305','Aquisi��o de servi�o de comunica��o por estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '1306','Aquisi��o de servi�o de comunica��o por estabelecimento de produtor rural','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '1350','AQUISI��ES DE SERVI�OS DE TRANSPORTE','' ) ;
INSERT_CFOP( '1351','Aquisi��o de servi�o de transporte para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados nas presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '1352','Aquisi��o de servi�o de transporte por estabelecimento industrial','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento industrial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '1353','Aquisi��o de servi�o de transporte por estabelecimento comercial','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '1354','Aquisi��o de servi�o de transporte por estabelecimento de prestador de servi�o de comunica��o','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '1355','Aquisi��o de servi�o de transporte por estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '1356','Aquisi��o de servi�o de transporte por estabelecimento de produtor rural','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '1360','Aquisi��o de servi�o de transporte por contribuinte-substituto em rela��o ao servi�o de transporte (ACR) (Ajuste SINIEF 06/2007- Decreto n� 30.861/2007) �� a partir de 01.01.2008','Aquisi��o de servi�o de transporte quando o adquirente for contribuinte-substituto em rela��o ao imposto incidente na presta��o dos servi�os' ) ;
INSERT_CFOP( '1400','ENTRADAS DE MERCADORIAS SUJEITAS AO REGIME DE SUBSTITUI��O TRIBUT�RIA','' ) ;
INSERT_CFOP( '1401','Compra para industrializa��o ou produ��o rural de mercadoria sujeita ao regime de substitui��o tribut�ria (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)',
                    'Compra de mercadoria sujeita ao regime de substitui��o tribut�ria, a ser utilizada em processo de industrializa��o ou produ��o rural, bem como compra, '
                   +'por estabelecimento industrial ou produtor rural de cooperativa, de mercadoria sujeita ao mencionado regime. ' ) ;
INSERT_CFOP( '1403','Compra para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as compras de mercadorias a serem comercializadas, decorrentes de opera��es com mercadorias sujeitas ao regime de substitui��o '
                   +'tribut�ria. Tamb�m ser�o classificadas neste c�digo as compras de mercadorias sujeitas ao regime de substitui��o tribut�ria em estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '1406','Compra de bem para o ativo imobilizado cuja mercadoria est� sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as compras de bens destinados ao ativo imobilizado do estabelecimento, em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '1407','Compra de mercadoria para uso ou consumo cuja mercadoria est� sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as compras de mercadorias destinadas ao uso ou consumo do estabelecimento, em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '1408','Transfer�ncia para industrializa��o ou produ��o rural de mercadoria sujeita ao regime de substitui��o tribut�ria (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Mercadoria sujeita ao regime de substitui��o tribut�ria, recebida em transfer�ncia de outro estabelecimento da mesma empresa, para ser industrializada ou consumida na produ��o rural no estabelecimento.' ) ;
INSERT_CFOP( '1409','Transfer�ncia para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem comercializadas, decorrentes de opera��es sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '1410','Devolu��o de venda de mercadoria, de produ��o do estabelecimento, sujeita ao regime de substitui��o tribut�ria','Devolu��o de produto industrializado ou produzido pelo estabelecimento, cuja sa�da tenha sido classificada como "Venda de mercadoria de produ��o do estabelecimento sujeita ao regime de substitui��o tribut�ria".' ) ;
INSERT_CFOP( '1411','Devolu��o de venda de mercadoria adquirida ou recebida de terceiros em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as devolu��es de vendas de mercadorias adquiridas ou recebidas de terceiros, cujas sa�das tenham sido classificadas como '
                   +'Venda de mercadoria adquirida ou recebida de terceiros em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '1414','Retorno de mercadoria de produ��o do estabelecimento, remetida para venda fora do estabelecimento, sujeita ao regime de substitui��o tribut�ria','Entrada, em retorno, de produto industrializado ou produzido pelo pr�prio estabelecimento, remetido para venda fora do estabelecimento, inclusive por meio de ve�culo, sujeito ao regime de substitui��o tribut�ria e n�o comercializado.' ) ;
INSERT_CFOP( '1415','Retorno de mercadoria adquirida ou recebida de terceiros, remetida para venda fora do estabelecimento em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as entradas, em retorno, de mercadorias adquiridas ou recebidas de terceiros remetidas para vendas fora do estabelecimento, '
                   +'inclusive por meio de ve�culos, em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria, e n�o comercializadas.' ) ;
INSERT_CFOP( '1450','SISTEMAS DE INTEGRA��O','' ) ;
INSERT_CFOP( '1451','Retorno de animal do estabelecimento produtor','Classificam-se neste c�digo as entradas referentes ao retorno de animais criados pelo produtor no sistema integrado.' ) ;
INSERT_CFOP( '1452','Retorno de insumo n�o utilizado na produ��o','Classificam-se neste c�digo o retorno de insumos n�o utilizados pelo produtor na cria��o de animais pelo sistema integrado.' ) ;
INSERT_CFOP( '1500','ENTRADAS DE MERCADORIAS REMETIDAS PARA FORMA��O DE LOTE OU COM FIM ESPEC�FICO DE EXPORTA��O E EVENTUAIS DEVOLU��ES (NR Ajuste SINIEF 09/2005)','' ) ;
INSERT_CFOP( '1501','Entrada de mercadoria recebida com fim espec�fico de exporta��o','Classificam-se neste c�digo as entradas de mercadorias em estabelecimento de trading company, empresa comercial exportadora ou outro estabelecimento do remetente, com fim espec�fico de exporta��o.' ) ;
INSERT_CFOP( '1503','Entrada decorrente de devolu��o de produto, de fabrica��o do estabelecimento, remetido com fim espec�fico de exporta��o',
                    'Devolu��o de produto industrializado ou produzido pelo estabelecimento, remetido a "trading company", a empresa comercial exportadora ou a outro estabelecimento '
                   +'do remetente, com fim espec�fico de exporta��o, cuja sa�da tenha sido classificada no c�digo "5.501 � Remessa de produ��o do estabelecimento com fim espec�fico de exporta��o". ' ) ;
INSERT_CFOP( '1504','Entrada decorrente de devolu��o de mercadoria remetida com fim espec�fico de exporta��o, adquirida ou recebida de terceiros',
                    'Devolu��o de mercadoria, adquirida ou recebida de terceiro, remetida a trading company, a empresa comercial exportadora ou a outro estabelecimento do remetente, '
                   +'com fim espec�fico de exporta��o, cuja sa�da tenha sido classificada no c�digo �5.502 - Remessa de mercadoria adquirida ou recebida de terceiros, com fim espec�fico de exporta��o�.' ) ;
INSERT_CFOP( '1505','Entrada decorrente de devolu��o simb�lica de mercadoria remetida para forma��o de lote de exporta��o, de produto industrializado ou produzido pelo pr�prio estabelecimento.',
                    'Devolu��o simb�lica de mercadoria remetida para forma��o de lote de exporta��o, cuja sa�da tenha sido classificada no c�digo "5.504 � Remessa de mercadoria para forma��o de lote de exporta��o, '
                   +'de produto industrializado ou produzido pelo pr�prio estabelecimento".' ) ;
INSERT_CFOP( '1506','Entrada decorrente de devolu��o simb�lica de mercadoria, adquirida ou recebida de terceiros, remetida para forma��o de lote de exporta��o.',
                    'Devolu��o simb�lica de mercadoria remetida para forma��o de lote de exporta��o em armaz�ns alfandegados, entrepostos aduaneiros ou outros estabelecimentos que venham a ser '
                   +'regulamentados pela legisla��o tribut�ria de cada Unidade Federada, efetuada pelo estabelecimento deposit�rio, cuja sa�da tenha sido classificada no c�digo '
                   +'"5.505 � Remessa de mercadoria, adquirida ou recebida de terceiros, para forma��o de lote de exporta��o".' ) ;
INSERT_CFOP( '1550','OPERA��ES COM BENS DE ATIVO IMOBILIZADO E MATERIAIS PARA USO OU CONSUMO','' ) ;
INSERT_CFOP( '1551','Compra de bem para o ativo imobilizado','Classificam-se neste c�digo as compras de bens destinados ao ativo imobilizado do estabelecimento.' ) ;
INSERT_CFOP( '1552','Transfer�ncia de bem do ativo imobilizado','Classificam-se neste c�digo as entradas de bens destinados ao ativo imobilizado recebidos em transfer�ncia de outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '1553','Devolu��o de venda de bem do ativo imobilizado','Classificam-se neste c�digo as devolu��es de vendas de bens do ativo imobilizado, cujas sa�das tenham sido classificadas no c�digo 5.551 - Venda de bem do ativo imobilizado.' ) ;
INSERT_CFOP( '1554','Retorno de bem do ativo imobilizado remetido para uso fora do estabelecimento','Classificam-se neste c�digo as entradas por retorno de bens do ativo imobilizado remetidos para uso fora do estabelecimento, cujas sa�das tenham sido classificadas no c�digo 5.554 - Remessa de bem do ativo imobilizado para uso fora do estabelecimento.' ) ;
INSERT_CFOP( '1555','Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento','Classificam-se neste c�digo as entradas de bens do ativo imobilizado de terceiros, remetidos para uso no estabelecimento.' ) ;
INSERT_CFOP( '1556','Compra de material para uso ou consumo','Classificam-se neste c�digo as compras de mercadorias destinadas ao uso ou consumo do estabelecimento.' ) ;
INSERT_CFOP( '1557','Transfer�ncia de material para uso ou consumo','Classificam-se neste c�digo as entradas de materiais para uso ou consumo recebidos em transfer�ncia de outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '1600','CR�DITOS E RESSARCIMENTOS DE ICMS','' ) ;
INSERT_CFOP( '1601','Recebimento, por transfer�ncia, de cr�dito de ICMS','Classificam-se neste c�digo os lan�amentos destinados ao registro de cr�ditos de ICMS, recebidos por transfer�ncia de outras empresas.' ) ;
INSERT_CFOP( '1602','Recebimento, por transfer�ncia, de saldo credor do ICMS, de outro estabelecimento da mesma empresa, para compensa��o de saldo devedor do imposto. ','Lan�amento destinado ao registro da transfer�ncia de saldo credor do ICMS, recebido de outro estabelecimento da mesma empresa, destinado � compensa��o do saldo devedor do estabelecimento, inclusive no caso de apura��o centralizada do imposto. ' ) ;
INSERT_CFOP( '1603','Ressarcimento de ICMS retido por substitui��o tribut�ria',
                    'Lan�amento destinado ao registro de ressarcimento de ICMS retido por substitui��o tribut�ria � contribuinte substitu�do, efetuado pelo contribuinte substituto, ou, '
                   +'ainda, quando o ressarcimento for apropriado pelo pr�prio contribuinte substitu�do, nas hip�teses previstas na legisla��o aplic�vel.' ) ;
INSERT_CFOP( '1604','Lan�amento do cr�dito relativo � compra de bem para o ativo imobilizado','Lan�amento destinado ao registro da apropria��o de cr�dito de bem do ativo imobilizado. (Dec.25.068/2003-EFEITOS A PARTIR DE 01.01.2003)' ) ;
INSERT_CFOP( '1605','Recebimento, por transfer�ncia, de saldo devedor do ICMS de outro estabelecimento da mesma empresa',
                     'Lan�amento destinado ao registro da transfer�ncia de saldo devedor do ICMS, recebido de outro estabelecimento da mesma empresa, '
                    +'para efetiva��o da apura��o centralizada do imposto. (ACR Ajuste SINIEF 03/2004) (DECRETO N� 26.810/2004) (a partir de 01.01.2005)' ) ;
INSERT_CFOP( '1650','ENTRADAS DE COMBUST�VEIS, DERIVADOS OU N�O DE PETR�LEO, E LUBRIFICANTES (ACR Ajuste SINIEF 9/2003 - a partir 01.01.2004)','' ) ;
INSERT_CFOP( '1651','Compra de combust�vel ou lubrificante para industrializa��o subseq�ente','Compra de combust�vel ou lubrificante a ser utilizados em processo de industrializa��o do pr�prio produto. (ACR Ajuste SINIEF 9/2003 - a partir 01.01.2004)' ) ;
INSERT_CFOP( '1652','Compra de combust�vel ou lubrificante para comercializa��o','Compra de combust�vel ou lubrificante a ser comercializados. (ACR Ajuste SINIEF 9/2003 - a partir 01.01.2004)' ) ;
INSERT_CFOP( '1653','Compra de combust�vel ou lubrificante por consumidor ou usu�rio final','Compra de combust�vel ou lubrificante, a ser consumidos em processo de industrializa��o de outros produtos, na produ��o rural, na presta��o de servi�o ou por usu�rio final. ' ) ;
INSERT_CFOP( '1658','Transfer�ncia de combust�vel ou lubrificante para industrializa��o','Entrada de combust�vel ou lubrificante, recebidos em transfer�ncia de outro estabelecimento da mesma empresa, para ser utilizados em processo de industrializa��o do pr�prio produto.(Decreto 26.174/2003)(efeitos a partir 01.01.2004)' ) ;
INSERT_CFOP( '1659','Transfer�ncia de combust�vel ou lubrificante para comercializa��o','Entrada de combust�vel ou lubrificante, recebidos em transfer�ncia de outro estabelecimento da mesma empresa, para ser comercializados. .(Decreto 26.174/2003) (efeitos a partir 01.01.2004)' ) ;
INSERT_CFOP( '1660','Devolu��o de venda de combust�vel ou lubrificante destinados � industrializa��o subseq�ente','Devolu��o de venda de combust�vel ou lubrificante, cuja sa�da tenha sido classificada como "Venda de combust�vel ou lubrificante destinados � industrializa��o subseq�ente". (Decreto 26.174/2003)(efeitos a partir 01.01.2004)' ) ;
INSERT_CFOP( '1661','Devolu��o de venda de combust�vel ou lubrificante destinados � comercializa��o','Devolu��o de venda de combust�vel ou lubrificante, cuja sa�da tenha sido classificada como "Venda de combust�vel ou lubrificante para comercializa��o".(Decreto 26.174/2003)(efeitos a partir 01.01.2004).' ) ;
INSERT_CFOP( '1662','Devolu��o de venda de combust�vel ou lubrificante destinados a consumidor ou usu�rio final','Devolu��o de venda de combust�vel ou lubrificante, cuja sa�da tenha sido classificada como "Venda de combust�vel ou lubrificante por consumidor ou usu�rio final"..(Decreto 26.174/2003)(efeitos a partir 01.01.2004)' ) ;
INSERT_CFOP( '1663','Entrada de combust�vel ou lubrificante para armazenagem','Entrada de combust�vel ou lubrificante para armazenagem. .(Decreto 26.174/2003)(efeitos a partir 01.01.2004)' ) ;
INSERT_CFOP( '1664','Retorno de combust�vel ou lubrificante remetidos para armazenagem','Entrada, ainda que simb�lica, por retorno de combust�vel ou lubrificante, remetidos para armazenagem. .(Decreto 26.174/2003)(efeitos a partir 01.01.2004)' ) ;
INSERT_CFOP( '1900','OUTRAS ENTRADAS DE MERCADORIAS OU AQUISI��ES DE SERVI�OS','' ) ;
INSERT_CFOP( '1901','Entrada para industrializa��o por encomenda','Classificam-se neste c�digo as entradas de insumos recebidos para industrializa��o por encomenda de outra empresa ou de outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '1902','Retorno de mercadoria remetida para industrializa��o por encomenda','Classificam-se neste c�digo o retorno dos insumos remetidos para industrializa��o por encomenda, incorporados ao produto final pelo estabelecimento industrializador.' ) ;
INSERT_CFOP( '1903','Entrada de mercadoria remetida para industrializa��o e n�o aplicada no referido processo','Classificam-se neste c�digo as entradas em devolu��o de insumos remetidos para industrializa��o e n�o aplicados no referido processo.' ) ;
INSERT_CFOP( '1904','Retorno de remessa para venda fora do estabelecimento','Classificam-se neste c�digo as entradas em retorno de mercadorias remetidas para venda fora do estabelecimento, inclusive por meio de ve�culos, e n�o comercializadas.' ) ;
INSERT_CFOP( '1905','Entrada de mercadoria recebida para dep�sito em dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo as entradas de mercadorias recebidas para dep�sito em dep�sito fechado ou armaz�m geral.' ) ;
INSERT_CFOP( '1906','Retorno de mercadoria remetida para dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo as entradas em retorno de mercadorias remetidas para dep�sito em dep�sito fechado ou armaz�m geral.' ) ;
INSERT_CFOP( '1907','Retorno simb�lico de mercadoria remetida para dep�sito fechado ou armaz�m geral',
                    'Classificam-se neste c�digo as entradas em retorno simb�lico de mercadorias remetidas para dep�sito em dep�sito fechado ou armaz�m geral, '
                   +'quando as mercadorias depositadas tenham sido objeto de sa�da a qualquer t�tulo e que n�o tenham retornado ao estabelecimento depositante.' ) ;
INSERT_CFOP( '1908','Entrada de bem por conta de contrato de comodato','Classificam-se neste c�digo as entradas de bens recebidos em cumprimento de contrato de comodato.' ) ;
INSERT_CFOP( '1909','Retorno de bem remetido por conta de contrato de comodato','Classificam-se neste c�digo as entradas de bens recebidos em devolu��o ap�s cumprido o contrato de comodato.' ) ;
INSERT_CFOP( '1910','Entrada de bonifica��o, doa��o ou brinde','Classificam-se neste c�digo as entradas de mercadorias recebidas a t�tulo de bonifica��o, doa��o ou brinde.' ) ;
INSERT_CFOP( '1911','Entrada de amostra gr�tis','Classificam-se neste c�digo as entradas de mercadorias recebidas a t�tulo de amostra gr�tis.' ) ;
INSERT_CFOP( '1912','Entrada de mercadoria ou bem recebido para demonstra��o','Classificam-se neste c�digo as entradas de mercadorias ou bens recebidos para demonstra��o.' ) ;
INSERT_CFOP( '1913','Retorno de mercadoria ou bem remetido para demonstra��o','Classificam-se neste c�digo as entradas em retorno de mercadorias ou bens remetidos para demonstra��o.' ) ;
INSERT_CFOP( '1914','Retorno de mercadoria ou bem remetido para exposi��o ou feira','Classificam-se neste c�digo as entradas em retorno de mercadorias ou bens remetidos para exposi��o ou feira.' ) ;
INSERT_CFOP( '1915','Entrada de mercadoria ou bem recebido para conserto ou reparo','Classificam-se neste c�digo as entradas de mercadorias ou bens recebidos para conserto ou reparo.' ) ;
INSERT_CFOP( '1916','Retorno de mercadoria ou bem remetido para conserto ou reparo','Classificam-se neste c�digo as entradas em retorno de mercadorias ou bens remetidos para conserto ou reparo.' ) ;
INSERT_CFOP( '1917','Entrada de mercadoria recebida em consigna��o mercantil ou industrial','Classificam-se neste c�digo as entradas de mercadorias recebidas a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '1918','Devolu��o de mercadoria remetida em consigna��o mercantil ou industrial','Classificam-se neste c�digo as entradas por devolu��o de mercadorias remetidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '1919','Devolu��o simb�lica de mercadoria vendida ou utilizada em processo industrial, remetida anteriormente em consigna��o mercantil ou industrial','Classificam-se neste c�digo as entradas por devolu��o simb�lica de mercadorias vendidas ou utilizadas em processo industrial, remetidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '1920','Entrada de vasilhame ou sacaria','Classificam-se neste c�digo as entradas de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '1921','Retorno de vasilhame ou sacaria','Classificam-se neste c�digo as entradas em retorno de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '1922','Lan�amento efetuado a t�tulo de simples faturamento decorrente de compra para recebimento futuro','Classificam-se neste c�digo os registros efetuados a t�tulo de simples faturamento decorrente de compra para recebimento futuro.' ) ;
INSERT_CFOP( '1923','Entrada de mercadoria recebida do vendedor remetente, em venda � ordem',
                    'Classificam-se neste c�digo as entradas de mercadorias recebidas do vendedor remetente, em vendas � ordem, '
                   +'cuja compra do adquirente origin�rio, foi classificada nos c�digos 1.120 - Compra para industrializa��o, em venda � ordem, '
                   +'j� recebida do vendedor remetente ou 1.121 - Compra para comercializa��o, em venda � ordem, j� recebida do vendedor remetente.' ) ;
INSERT_CFOP( '1924','Entrada para industrializa��o por conta e ordem do adquirente da mercadoria, quando esta n�o transitar pelo estabelecimento do adquirente','Classificam-se neste c�digo as entradas de insumos recebidos para serem industrializados por conta e ordem do adquirente, nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente dos mesmos.' ) ;
INSERT_CFOP( '1925','Retorno de mercadoria remetida para industrializa��o por conta e ordem do adquirente da mercadoria, quando esta n�o transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo o retorno dos insumos remetidos por conta e ordem do adquirente, para industrializa��o e incorporados ao produto final pelo estabelecimento industrializador, '
                   +'nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '1926','Lan�amento efetuado a t�tulo de reclassifica��o de mercadoria decorrente de forma��o de kit ou de sua desagrega��o','Classificam-se neste c�digo os registros efetuados a t�tulo de reclassifica��o decorrente de forma��o de kit de mercadorias ou de sua desagrega��o.' ) ;
INSERT_CFOP( '1931','Lan�amento efetuado pelo tomador do servi�o de transporte, '
                   +'quando a responsabilidade de reten��o do imposto for atribu�da ao remetente ou alienante da mercadoria, '
                   +'pelo servi�o de transporte realizado por transportador aut�nomo ou por transportador n�o-inscrito na '
                   +'Unidade da Federa��o onde se tenha iniciado o servi�o.',
                   'Lan�amento efetuado pelo tomador do servi�o de transporte realizado por transportador aut�nomo ou por transportador n�o-inscrito na '
                   +'Unidade da Federa��o onde se tenha iniciado o servi�o, quando a responsabilidade pela reten��o do imposto for atribu�da ao remetente '
                   +'ou alienante da mercadoria.' ) ;
INSERT_CFOP( '1932','Aquisi��o de servi�o de transporte iniciado em Unidade da Federa��o diversa daquela onde esteja inscrito o prestador','Aquisi��o de servi�o de transporte que tenha sido iniciado em Unidade da Federa��o diversa daquela onde o prestador esteja inscrito como contribuinte. (ACR Ajuste SINIEF 03/2004) (DECRETO N� 26.810/2004) (efeitos a partir 01.01.2005)' ) ;
INSERT_CFOP( '1933','Aquisi��o de servi�o tributado pelo Imposto sobre Servi�os de Qualquer Natureza (Ajuste SINIEF 06/2005) (NR)','Aquisi��o de servi�o, cujo imposto � de compet�ncia municipal, desde que informado em Nota Fiscal modelo 1 ou 1-A. (NR Ajuste SINIEF 06/2005) (DECRETO N� 26.868/2006 - efeitos a partir 01.01.2006)' ) ;
INSERT_CFOP( '1934','Entrada simb�lica de mercadoria recebida para dep�sito fechado ou armaz�m geral',
                    'Classificam-se neste c�digo as entradas simb�licas de mercadorias recebidas para dep�sito em dep�sito fechado ou armaz�m geral, '
                   +'cuja remessa tenha sido classificada pelo remetente no c�digo "5.934 - Remessa simb�lica de mercadoria depositada em armaz�m geral ou '
                   +'dep�sito fechado AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009 (efeitos a partir de 1� de julho de 2010) - DECRETO 36.465/2011' ) ;
INSERT_CFOP( '1949','Outra entrada de mercadoria ou presta��o de servi�o n�o especificada','Classificam-se neste c�digo as outras entradas de mercadorias ou presta��es de servi�os que n�o tenham sido especificadas nos c�digos anteriores.' ) ;
end ;

procedure TInitCFOP.Execute_2000 ;
begin

INSERT_CFOP( '2000','ENTRADAS OU AQUISI��ES DE SERVI�OS DE OUTROS ESTADOS','Classificam-se, neste grupo, as opera��es ou presta��es em que o estabelecimento remetente esteja localizado em unidade da Federa��o diversa daquela do destinat�rio' ) ;
INSERT_CFOP( '2100','COMPRAS PARA INDUSTRIALIZA��O, PRODU��O RURAL, COMERCIALIZA��O OU PRESTA��O DE SERVI�OS (NR Ajuste SINIEF 05/2005  (Decreto 28.868/2006)','' ) ;
INSERT_CFOP( '2101','Compra para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)',
                    'Compra de mercadoria a ser utilizada em processo de industrializa��o ou produ��o rural, bem como a entrada de mercadoria em estabelecimento industrial '
                   +'ou produtor rural de cooperativa, recebida de seus cooperados ou de estabelecimento de outra cooperativa.' ) ;
INSERT_CFOP( '2102','Compra para comercializa��o',
                    'Classificam-se neste c�digo as compras de mercadorias a serem comercializadas. Tamb�m ser�o classificadas neste c�digo as entradas de mercadorias em '
                   +'estabelecimento comercial de cooperativa recebidas de seus cooperados ou de estabelecimento de outra cooperativa.' ) ;
INSERT_CFOP( '2111','Compra para industrializa��o de mercadoria recebida anteriormente em consigna��o industrial','Classificam-se neste c�digo as compras efetivas de mercadorias a serem utilizadas em processo de industrializa��o, recebidas anteriormente a t�tulo de consigna��o industrial.' ) ;
INSERT_CFOP( '2113','Compra para comercializa��o, de mercadoria recebida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as compras efetivas de mercadorias recebidas anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '2116','Compra para industrializa��o ou produ��o rural originada de encomenda para recebimento futuro (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)',
                    'Compra de mercadoria a ser utilizada em processo de industrializa��o ou produ��o rural, quando da entrada real da mercadoria, '
                   +'cuja aquisi��o tenha sido classificada no c�digo "2.922 � Lan�amento efetuado a t�tulo de simples faturamento decorrente de compra '
                   +'para recebimento futuro".' ) ;
INSERT_CFOP( '2117','Compra para comercializa��o originada de encomenda para recebimento futuro',
                    'Classificam-se neste c�digo as compras de mercadorias a serem comercializadas, quando da entrada real da mercadoria, cuja aquisi��o tenha sido '
                   +'classificada no c�digo 2.922 - Lan�amento efetuado a t�tulo de simples faturamento decorrente de compra para recebimento futuro.' ) ;
INSERT_CFOP( '2118','Compra de mercadoria para comercializa��o pelo adquirente origin�rio, entregue pelo vendedor remetente ao destinat�rio, em venda � ordem',
                    'Classificam-se neste c�digo as compras de mercadorias j� comercializadas, que, sem transitar pelo estabelecimento do adquirente origin�rio, '
                   +'sejam entregues pelo vendedor remetente diretamente ao destinat�rio, em opera��o de venda � ordem, cuja venda seja classificada, '
                   +'pelo adquirente origin�rio, no c�digo 6.120 - Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinat�rio pelo vendedor remetente, em venda � ordem.' ) ;
INSERT_CFOP( '2120','Compra para industrializa��o, em venda � ordem, j� recebida do vendedor remetente','Classificam-se neste c�digo as compras de mercadorias a serem utilizadas em processo de industrializa��o, em vendas � ordem, j� recebidas do vendedor remetente, por ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '2121','Compra para comercializa��o, em venda � ordem, j� recebida do vendedor remetente','Classificam-se neste c�digo as compras de mercadorias a serem comercializadas, em vendas � ordem, j� recebidas do vendedor remetente por ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '2122','Compra para industrializa��o em que a mercadoria foi remetida pelo fornecedor ao industrializador sem transitar pelo estabelecimento adquirente','Classificam-se neste c�digo as compras de mercadorias a serem utilizadas em processo de industrializa��o, remetidas pelo fornecedor para o industrializador sem que a mercadoria tenha transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '2124','Industrializa��o efetuada por outra empresa',
                    'Classificam-se neste c�digo as entradas de mercadorias industrializadas por terceiros, compreendendo os valores referentes aos servi�os prestados e '
                   +'os das mercadorias de propriedade do industrializador empregadas no processo industrial. Quando a industrializa��o efetuada se referir a bens do ativo '
                   +'imobilizado ou de mercadorias para uso ou consumo do estabelecimento encomendante, a entrada dever� ser classificada nos c�digos '
                   +'2.551 - Compra de bem para o ativo imobilizado ou 2.556 - Compra de material para uso ou consumo.' ) ;
INSERT_CFOP( '2125','Industrializa��o efetuada por outra empresa quando a mercadoria remetida para utiliza��o no processo de industrializa��o n�o transitou pelo estabelecimento adquirente da mercadoria',
                    'Classificam-se neste c�digo as entradas de mercadorias industrializadas por outras empresas, em que as mercadorias remetidas para utiliza��o no '
                   +'processo de industrializa��o n�o transitaram pelo estabelecimento do adquirente das mercadorias, compreendendo os valores referentes aos servi�os '
                   +'prestados e os das mercadorias de propriedade do industrializador empregadas no processo industrial. Quando a industrializa��o efetuada se referir '
                   +'a bens do ativo imobilizado ou de mercadorias para uso ou consumo do estabelecimento encomendante, a entrada dever� ser classificada nos c�digos '
                   +'2.551 - Compra de bem para o ativo imobilizado ou 2.556 - Compra de material para uso ou consumo.' ) ;
INSERT_CFOP( '2126','Compra para utiliza��o na presta��o de servi�o sujeita ao ICMS (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) - DECRETO 36.465/2011',
                    'Classificam-se neste c�digo as entradas de mercadorias a serem utilizadas nas presta��es de servi�os sujeitas ao ICMS (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010). efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011' ) ;
INSERT_CFOP( '2128','Compra para utiliza��o na presta��o de servi�o sujeita ao ISSQN(AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011','Classificam-se neste c�digo as entradas de mercadorias a serem utilizadas nas presta��es de servi�os sujeitas ao ISSQN. (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011' ) ;
INSERT_CFOP( '2150','TRANSFER�NCIAS PARA INDUSTRIALIZA��O, PRODU��O RURAL, COMERCIALIZA��O OU PRESTA��O DE SERVI�OS (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','' ) ;
INSERT_CFOP( '2151','Transfer�ncia para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Entrada de mercadoria, recebida em transfer�ncia de outro estabelecimento da mesma empresa, para ser utilizada em processo de industrializa��o ou produ��o rural.' ) ;
INSERT_CFOP( '2152','Transfer�ncia para comercializa��o','Classificam-se neste c�digo as entradas de mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem comercializadas.' ) ;
INSERT_CFOP( '2153','Transfer�ncia de energia el�trica para distribui��o','Classificam-se neste c�digo as entradas de energia el�trica recebida em transfer�ncia de outro estabelecimento da mesma empresa, para distribui��o.' ) ;
INSERT_CFOP( '2154','Transfer�ncia para utiliza��o na presta��o de servi�o','Classificam-se neste c�digo as entradas de mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem utilizadas nas presta��es de servi�os.' ) ;
INSERT_CFOP( '2200','DEVOLU��ES DE VENDAS DE PRODU��O DO ESTABELECIMENTO OU DE TERCEIROS OU ANULA��ES DE VALORES','' ) ;
INSERT_CFOP( '2201','Devolu��o de venda de produ��o do estabelecimento','Devolu��o de venda de produto industrializado ou produzido pelo estabelecimento, cuja sa�da tenha sido classificada no c�digo "6.101 - Venda de produ��o do estabelecimento". ' ) ;
INSERT_CFOP( '2202','Devolu��o de venda de mercadoria adquirida ou recebida de terceiros','Devolu��o de vendas de mercadoria, adquirida ou recebida de terceiro, que n�o tenham sido objeto de industrializa��o no estabelecimento, cuja sa�da tenha sido classificada como Venda de mercadoria adquirida ou recebida de terceiros.' ) ;
INSERT_CFOP( '2203','Devolu��o de venda de produ��o do estabelecimento destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio','Devolu��o de venda de produto industrializado ou produzido pelo estabelecimento, cuja sa�da tenha sido classificada no c�digo "6.109 � Venda de produ��o do estabelecimento destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio".' ) ;
INSERT_CFOP( '2204','Devolu��o de venda de mercadoria adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio','Devolu��o de venda de mercadoria adquirida ou recebida de terceiro, cuja sa�da tenha sido classificada no c�digo �6.110 - Venda de mercadoria adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio�.' ) ;
INSERT_CFOP( '2205','Anula��o de valor relativo � presta��o de servi�o de comunica��o','Anula��o correspondente a valor faturado indevidamente, decorrente de presta��o de servi�o de comunica��o.' ) ;
INSERT_CFOP( '2206','Anula��o de valor relativo � presta��o de servi�o de transporte','Anula��o correspondente a valor faturado indevidamente, decorrente de presta��o de servi�o de transporte.' ) ;
INSERT_CFOP( '2207','Anula��o de valor relativo � venda de energia el�trica','Anula��o correspondente a valor faturado indevidamente, decorrente de venda de energia el�trica.' ) ;
INSERT_CFOP( '2208','Devolu��o de produ��o do estabelecimento, remetida em transfer�ncia.','Devolu��o de produto industrializado ou produzido pelo estabelecimento e transferido para outro estabelecimento da mesma empresa. ' ) ;
INSERT_CFOP( '2209','Devolu��o de mercadoria adquirida ou recebida de terceiros e remetida em transfer�ncia','Devolu��o de mercadoria adquirida ou recebida de terceiros, transferidas para outros estabelecimentos da mesma empresa.' ) ;
INSERT_CFOP( '2250','COMPRAS DE ENERGIA EL�TRICA','' ) ;
INSERT_CFOP( '2251','Compra de energia el�trica para distribui��o ou comercializa��o','Classificam-se neste c�digo as compras de energia el�trica utilizada em sistema de distribui��o ou comercializa��o. Tamb�m ser�o classificadas neste c�digo as compras de energia el�trica por cooperativas para distribui��o com seus cooperados.' ) ;
INSERT_CFOP( '2252','Compra de energia el�trica por estabelecimento industrial','Classificam-se neste c�digo as compras de energia el�trica utilizada no processo de industrializa��o. Tamb�m ser�o classificadas neste c�digo as compras de energia el�trica utilizada por estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '2253','Compra de energia el�trica por estabelecimento comercial','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as compras de energia el�trica utilizada por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '2254','Compra de energia el�trica por estabelecimento prestador de servi�o de transporte','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento prestador de servi�os de transporte.' ) ;
INSERT_CFOP( '2255','Compra de energia el�trica por estabelecimento prestador de servi�o de comunica��o','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '2256','Compra de energia el�trica por estabelecimento de produtor rural','Classificam-se neste c�digo as compras de energia el�trica utilizada por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '2257','Compra de energia el�trica para consumo por demanda contratada','Classificam-se neste c�digo as compras de energia el�trica para consumo por demanda contratada, que prevalecer� sobre os demais c�digos deste subgrupo.' ) ;
INSERT_CFOP( '2300','AQUISI��ES DE SERVI�OS DE COMUNICA��O','' ) ;
INSERT_CFOP( '2301','Aquisi��o de servi�o de comunica��o para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados nas presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '2302','Aquisi��o de servi�o de comunica��o por estabelecimento industrial','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento industrial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '2303','Aquisi��o de servi�o de comunica��o por estabelecimento comercial','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '2304','Aquisi��o de servi�o de comunica��o por estabelecimento de prestador de servi�o de transporte','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizado por estabelecimento prestador de servi�o de transporte.' ) ;
INSERT_CFOP( '2305','Aquisi��o de servi�o de comunica��o por estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '2306','Aquisi��o de servi�o de comunica��o por estabelecimento de produtor rural','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '2350','AQUISI��ES DE SERVI�OS DE TRANSPORTE','' ) ;
INSERT_CFOP( '2351','Aquisi��o de servi�o de transporte para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados nas presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '2352','Aquisi��o de servi�o de transporte por estabelecimento industrial','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento industrial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '2353','Aquisi��o de servi�o de transporte por estabelecimento comercial','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '2354','Aquisi��o de servi�o de transporte por estabelecimento de prestador de servi�o de comunica��o','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '2355','Aquisi��o de servi�o de transporte por estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '2356','Aquisi��o de servi�o de transporte por estabelecimento de produtor rural','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '2400','ENTRADAS DE MERCADORIAS SUJEITAS AO REGIME DE SUBSTITUI��O TRIBUT�RIA','' ) ;
INSERT_CFOP( '2401','Compra para industrializa��o ou produ��o rural de mercadoria sujeita ao regime de substitui��o tribut�ria (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)',
                    'Compra de mercadoria, sujeita ao regime de substitui��o tribut�ria, a ser utilizada em processo de industrializa��o ou produ��o rural, '
                   +'bem como compra, por estabelecimento industrial ou produtor rural de cooperativa, de mercadoria sujeita ao mencionado regime.' ) ;
INSERT_CFOP( '2403','Compra para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as compras de mercadorias a serem comercializadas, decorrentes de opera��es com mercadorias sujeitas ao '
                   +'regime de substitui��o tribut�ria. Tamb�m ser�o classificadas neste c�digo as compras de mercadorias sujeitas ao regime de substitui��o '
                   +'tribut�ria em estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '2406','Compra de bem para o ativo imobilizado cuja mercadoria est� sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as compras de bens destinados ao ativo imobilizado do estabelecimento, em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '2407','Compra de mercadoria para uso ou consumo cuja mercadoria est� sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as compras de mercadorias destinadas ao uso ou consumo do estabelecimento, em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '2408','Transfer�ncia para industrializa��o ou produ��o rural de mercadoria sujeita ao regime de substitui��o tribut�ria (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Entrada de mercadoria, sujeita ao regime de substitui��o tribut�ria, recebida em transfer�ncia de outro estabelecimento da mesma empresa, para ser industrializada ou consumida na produ��o rural no estabelecimento destinat�rio.' ) ;
INSERT_CFOP( '2409','Transfer�ncia para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem comercializadas, decorrentes de opera��es sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '2410','Devolu��o de venda de produ��o do estabelecimento, quando o produto estiver sujeito ao regime de substitui��o tribut�ria','Devolu��o de produto industrializado ou produzido pelo estabelecimento, cuja sa�da tenha sido classificada como "Venda de produ��o do estabelecimento quando o produto estiver sujeito ao regime de substitui��o tribut�ria". ' ) ;
INSERT_CFOP( '2411','Devolu��o de venda de mercadoria adquirida ou recebida de terceiros em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Devolu��o de vendas de mercadoria adquirida ou recebida de terceiro, cuja sa�da tenha sido classificada como �Venda de mercadoria adquirida ou recebida de terceiros em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria�.' ) ;
INSERT_CFOP( '2414','Retorno de produ��o do estabelecimento, remetida para venda fora do estabelecimento, quando o produto estiver sujeito ao regime de substitui��o tribut�ria','Entrada, em retorno, de produto industrializado ou produzido pelo estabelecimento sujeito ao regime de substitui��o tribut�ria, remetido para venda fora do estabelecimento, inclusive por meio de ve�culo, e n�o comercializado. ' ) ;
INSERT_CFOP( '2415','Retorno de mercadoria adquirida ou recebida de terceiros, remetida para venda fora do estabelecimento em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Entrada, em retorno, de mercadoria sujeita ao regime de substitui��o tribut�ria, adquirida ou recebida de terceiro remetida para venda fora do estabelecimento, inclusive por meio de ve�culo, e n�o comercializada.' ) ;
INSERT_CFOP( '2500','ENTRADAS DE MERCADORIAS REMETIDAS PARA FORMA��O DE LOTE OU COM FIM ESPEC�FICO DE EXPORTA��O E EVENTUAIS DEVOLU��ES (NR Ajuste SINIEF 09/2005)','' ) ;
INSERT_CFOP( '2501','Entrada de mercadoria recebida com fim espec�fico de exporta��o','Classificam-se neste c�digo as entradas de mercadorias em estabelecimento de trading company, empresa comercial exportadora ou outro estabelecimento do remetente, com fim espec�fico de exporta��o.' ) ;
INSERT_CFOP( '2503','Entrada decorrente de devolu��o de produto industrializado pelo estabelecimento, remetido com fim espec�fico de exporta��o',
                    'Devolu��o de produto industrializado ou produzido pelo estabelecimento, remetido a "trading company", a empresa comercial exportadora ou a outro '
                   +'estabelecimento do remetente, com fim espec�fico de exporta��o, cuja sa�da tenha sido classificada no c�digo "6.501 � Remessa de produ��o do estabelecimento com fim espec�fico de exporta��o". ' ) ;
INSERT_CFOP( '2504','Entrada decorrente de devolu��o de mercadoria remetida com fim espec�fico de exporta��o, adquirida ou recebida de terceiros',
                    'Classificam-se neste c�digo as devolu��es de mercadorias adquiridas ou recebidas de terceiros remetidas a trading company, a empresa comercial exportadora '
                   +'ou a outro estabelecimento do remetente, com fim espec�fico de exporta��o, cujas sa�das tenham sido classificadas no c�digo 6.502 - Remessa de mercadoria adquirida ou recebida de terceiros, com fim espec�fico de exporta��o.' ) ;
INSERT_CFOP( '2505','Entrada decorrente de devolu��o simb�lica de mercadoria remetida para forma��o de lote de exporta��o, de produto industrializado ou produzido pelo pr�prio estabelecimento.',
                    'Devolu��o simb�lica de mercadoria remetida para forma��o de lote de exporta��o, cuja sa�da tenha sido classificada no c�digo '
                   +'"6.504 � Remessa de mercadoria para forma��o de lote de exporta��o, de produto industrializado ou produzido pelo pr�prio estabelecimento". '
                   +'(ACR Ajuste SINIEF 09/2005) (Decreto 28.868/2006)' ) ;
INSERT_CFOP( '2506','Entrada decorrente de devolu��o simb�lica de mercadoria, adquirida ou recebida de terceiros, remetida para forma��o de lote de exporta��o.',
                    'Devolu��o simb�lica de mercadoria remetida para forma��o de lote de exporta��o em armaz�ns alfandegados, entrepostos aduaneiros ou outros estabelecimentos '
                   +'que venham a ser regulamentados pela legisla��o tribut�ria de cada Unidade Federada, efetuada pelo estabelecimento deposit�rio, cuja sa�da tenha sido '
                   +'classificada no c�digo "6.505 � Remessa de mercadoria, adquirida ou recebida de terceiros, para forma��o de lote de exporta��o". ' ) ;
INSERT_CFOP( '2550','OPERA��ES COM BENS DE ATIVO IMOBILIZADO E MATERIAIS PARA USO OU CONSUMO','' ) ;
INSERT_CFOP( '2551','Compra de bem para o ativo imobilizado','Classificam-se neste c�digo as compras de bens destinados ao ativo imobilizado do estabelecimento.' ) ;
INSERT_CFOP( '2552','Transfer�ncia de bem do ativo imobilizado','Classificam-se neste c�digo as entradas de bens destinados ao ativo imobilizado recebidos em transfer�ncia de outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '2553','Devolu��o de venda de bem do ativo imobilizado','Classificam-se neste c�digo as devolu��es de vendas de bens do ativo imobilizado, cujas sa�das tenham sido classificadas no c�digo 6.551 - Venda de bem do ativo imobilizado.' ) ;
INSERT_CFOP( '2554','Retorno de bem do ativo imobilizado remetido para uso fora do estabelecimento','Classificam-se neste c�digo as entradas por retorno de bens do ativo imobilizado remetidos para uso fora do estabelecimento, cujas sa�das tenham sido classificadas no c�digo 6.554 - Remessa de bem do ativo imobilizado para uso fora do estabelecimento.' ) ;
INSERT_CFOP( '2555','Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento','Classificam-se neste c�digo as entradas de bens do ativo imobilizado de terceiros, remetidos para uso no estabelecimento.' ) ;
INSERT_CFOP( '2556','Compra de material para uso ou consumo','Classificam-se neste c�digo as compras de mercadorias destinadas ao uso ou consumo do estabelecimento.' ) ;
INSERT_CFOP( '2557','Transfer�ncia de material para uso ou consumo','Classificam-se neste c�digo as entradas de materiais para uso ou consumo recebidos em transfer�ncia de outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '2600','CR�DITOS E RESSARCIMENTOS DE ICMS','' ) ;
INSERT_CFOP( '2603','Ressarcimento de ICMS retido por substitui��o tribut�ria','Classificam-se neste c�digo os lan�amentos destinados ao registro de ressarcimento de ICMS retido por substitui��o tribut�ria a contribuinte substitu�do, efetuado pelo contribuinte substituto, nas hip�teses previstas na legisla��o aplic�vel.' ) ;
INSERT_CFOP( '2650','ENTRADAS DE COMBUST�VEIS, DERIVADOS OU N�O DE PETR�LEO, E LUBRIFICANTES (ACR Ajuste SINIEF 9/2003)','' ) ;
INSERT_CFOP( '2651','Compra de combust�vel ou lubrificante para industrializa��o subseq�ente','Compra de combust�vel ou lubrificante a ser utilizados em processo de industrializa��o do pr�prio produto. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2652','Compra de combust�vel ou lubrificante para comercializa��o','Compra de combust�vel ou lubrificante a ser comercializados. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2652','Compra de combust�vel ou lubrificante para comercializa��o','Compra de combust�vel ou lubrificante a ser comercializados. ' ) ;
INSERT_CFOP( '2653','Compra de combust�vel ou lubrificante por consumidor ou usu�rio final','Compra de combust�vel ou lubrificante, a ser consumidos em processo de industrializa��o de outros produtos, na produ��o rural, na presta��o de servi�o ou por usu�rio final. ' ) ;
INSERT_CFOP( '2658','Transfer�ncia de combust�vel ou lubrificante para industrializa��o','Entrada de combust�vel ou lubrificante, recebidos em transfer�ncia de outro estabelecimento da mesma empresa, para ser utilizados em processo de industrializa��o do pr�prio produto. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2659','Transfer�ncia de combust�vel ou lubrificante para comercializa��o ','Entrada de combust�vel ou lubrificante, recebidos em transfer�ncia de outro estabelecimento da mesma empresa, para ser comercializados. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2660','Devolu��o de venda de combust�vel ou lubrificante destinados � industrializa��o subseq�ente','Devolu��o de venda de combust�vel ou lubrificante, cuja sa�da tenha sido classificada como "Venda de combust�vel ou lubrificante destinados � industrializa��o subseq�ente".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2661','Devolu��o de venda de combust�vel ou lubrificante destinados � comercializa��o','Devolu��o de venda de combust�vel ou lubrificante, cuja sa�da tenha sido classificada como "Venda de combust�vel ou lubrificante para comercializa��o".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2662','Devolu��o de venda de combust�vel ou lubrificante destinados a consumidor ou usu�rio final','Devolu��o de venda de combust�vel ou lubrificante, cuja sa�da tenha sido classificada como "Venda de combust�vel ou lubrificante por consumidor ou usu�rio final".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2663','Entrada de combust�vel ou lubrificante para armazenagem','Entrada de combust�vel ou lubrificante para armazenagem. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2664','Retorno de combust�vel ou lubrificante remetidos para armazenagem','Entrada, ainda que simb�lica, por retorno de combust�vel ou lubrificante, remetidos para armazenagem. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '2900','OUTRAS ENTRADAS DE MERCADORIAS OU AQUISI��ES DE SERVI�OS','' ) ;
INSERT_CFOP( '2901','Entrada para industrializa��o por encomenda','Classificam-se neste c�digo as entradas de insumos recebidos para industrializa��o por encomenda de outra empresa ou de outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '2902','Retorno de mercadoria remetida para industrializa��o por encomenda','Classificam-se neste c�digo o retorno dos insumos remetidos para industrializa��o por encomenda, incorporados ao produto final pelo estabelecimento industrializador.' ) ;
INSERT_CFOP( '2903','Entrada de mercadoria remetida para industrializa��o e n�o aplicada no referido processo','Classificam-se neste c�digo as entradas em devolu��o de insumos remetidos para industrializa��o e n�o aplicados no referido processo.' ) ;
INSERT_CFOP( '2904','Retorno de remessa para venda fora do estabelecimento','Classificam-se neste c�digo as entradas em retorno de mercadorias remetidas para venda fora do estabelecimento, inclusive por meio de ve�culos, e n�o comercializadas.' ) ;
INSERT_CFOP( '2905','Entrada de mercadoria recebida para dep�sito em dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo as entradas de mercadorias recebidas para dep�sito em dep�sito fechado ou armaz�m geral.' ) ;
INSERT_CFOP( '2906','Retorno de mercadoria remetida para dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo as entradas em retorno de mercadorias remetidas para dep�sito em dep�sito fechado ou armaz�m geral.' ) ;
INSERT_CFOP( '2907','Retorno simb�lico de mercadoria remetida para dep�sito fechado ou armaz�m geral',
                    'Classificam-se neste c�digo as entradas em retorno simb�lico de mercadorias remetidas para dep�sito em dep�sito fechado ou armaz�m geral, '
                   +'quando as mercadorias depositadas tenham sido objeto de sa�da a qualquer t�tulo e que n�o tenham retornado ao estabelecimento depositante.' ) ;
INSERT_CFOP( '2908','Entrada de bem por conta de contrato de comodato','Classificam-se neste c�digo as entradas de bens recebidos em cumprimento de contrato de comodato.' ) ;
INSERT_CFOP( '2909','Retorno de bem remetido por conta de contrato de comodato','Classificam-se neste c�digo as entradas de bens recebidos em devolu��o ap�s cumprido o contrato de comodato.' ) ;
INSERT_CFOP( '2910','Entrada de bonifica��o, doa��o ou brinde','Classificam-se neste c�digo as entradas de mercadorias recebidas a t�tulo de bonifica��o, doa��o ou brinde.' ) ;
INSERT_CFOP( '2911','Entrada de amostra gr�tis','Classificam-se neste c�digo as entradas de mercadorias recebidas a t�tulo de amostra gr�tis.' ) ;
INSERT_CFOP( '2912','Entrada de mercadoria ou bem recebido para demonstra��o','Classificam-se neste c�digo as entradas de mercadorias ou bens recebidos para demonstra��o.' ) ;
INSERT_CFOP( '2913','Retorno de mercadoria ou bem remetido para demonstra��o','Classificam-se neste c�digo as entradas em retorno de mercadorias ou bens remetidos para demonstra��o.' ) ;
INSERT_CFOP( '2914','Retorno de mercadoria ou bem remetido para exposi��o ou feira','Classificam-se neste c�digo as entradas em retorno de mercadorias ou bens remetidos para exposi��o ou feira.' ) ;
INSERT_CFOP( '2915','Entrada de mercadoria ou bem recebido para conserto ou reparo','Classificam-se neste c�digo as entradas de mercadorias ou bens recebidos para conserto ou reparo.' ) ;
INSERT_CFOP( '2916','Retorno de mercadoria ou bem remetido para conserto ou reparo','Classificam-se neste c�digo as entradas em retorno de mercadorias ou bens remetidos para conserto ou reparo.' ) ;
INSERT_CFOP( '2917','Entrada de mercadoria recebida em consigna��o mercantil ou industrial','Classificam-se neste c�digo as entradas de mercadorias recebidas a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '2918','Devolu��o de mercadoria remetida em consigna��o mercantil ou industrial','Classificam-se neste c�digo as entradas por devolu��o de mercadorias remetidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '2919','Devolu��o simb�lica de mercadoria vendida ou utilizada em processo industrial, remetida anteriormente em consigna��o mercantil ou industrial','Classificam-se neste c�digo as entradas por devolu��o simb�lica de mercadorias vendidas ou utilizadas em processo industrial, remetidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '2920','Entrada de vasilhame ou sacaria','Classificam-se neste c�digo as entradas de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '2921','Retorno de vasilhame ou sacaria','Classificam-se neste c�digo as entradas em retorno de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '2922','Lan�amento efetuado a t�tulo de simples faturamento decorrente de compra para recebimento futuro','Classificam-se neste c�digo os registros efetuados a t�tulo de simples faturamento decorrente de compra para recebimento futuro.' ) ;
INSERT_CFOP( '2923','Entrada de mercadoria recebida do vendedor remetente, em venda � ordem',
                    'Classificam-se neste c�digo as entradas de mercadorias recebidas do vendedor remetente, em vendas � ordem, cuja compra do adquirente origin�rio, '
                   +'foi classificada nos c�digos 2.120 - Compra para industrializa��o, em venda � ordem, j� recebida do vendedor remetente ou '
                   +'2.121 - Compra para comercializa��o, em venda � ordem, j� recebida do vendedor remetente.' ) ;
INSERT_CFOP( '2924','Entrada para industrializa��o por conta e ordem do adquirente da mercadoria, quando esta n�o transitar pelo estabelecimento do adquirente','Classificam-se neste c�digo as entradas de insumos recebidos para serem industrializados por conta e ordem do adquirente, nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente dos mesmos.' ) ;
INSERT_CFOP( '2925','Retorno de mercadoria remetida para industrializa��o por conta e ordem do adquirente da mercadoria, quando esta n�o transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo o retorno dos insumos remetidos por conta e ordem do adquirente, para industrializa��o e '
                   +'incorporados ao produto final pelo estabelecimento industrializador, nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '2931','Lan�amento efetuado pelo tomador do servi�o de transporte, quando a responsabilidade de reten��o do imposto for atribu�da ao remetente ou '
                   +'alienante da mercadoria, pelo servi�o de transporte realizado por transportador aut�nomo ou por transportador n�o-inscrito na Unidade da Federa��o '
                   +'onde se tenha iniciado o servi�o  ',
                    'Lan�amento efetuado pelo tomador do servi�o de transporte realizado por transportador aut�nomo ou por transportador n�o-inscrito na Unidade da Federa��o '
                   +'onde se tenha iniciado o servi�o, quando a responsabilidade pela reten��o do imposto for atribu�da ao remetente ou alienante da mercadoria.' ) ;
INSERT_CFOP( '2932','Aquisi��o de servi�o de transporte iniciado em Unidade da Federa��o diversa daquela onde esteja inscrito o prestador ','Aquisi��o de servi�o de transporte que tenha sido iniciado em Unidade da Federa��o diversa daquela onde o prestador esteja inscrito como contribuinte. (ACR Ajuste SINIEF 03/2004) (DECRETO N� 26.810/2004) (a partir de 01.01.2005)' ) ;
INSERT_CFOP( '2933','Aquisi��o de servi�o tributado pelo Imposto Sobre Servi�os de Qualquer Natureza','Aquisi��o de servi�o, cujo imposto � de compet�ncia municipal, desde que informado em Nota Fiscal modelo 1 e 1-A. (NR Ajuste SINIEF 06/2005) (a partir de 01.01.2006)' ) ;
INSERT_CFOP( '2934','Entrada simb�lica de mercadoria recebida para dep�sito fechado ou armaz�m geral',
                    'Classificam-se neste c�digo as entradas simb�licas de mercadorias recebidas para dep�sito em dep�sito fechado ou armaz�m geral, '
                   +'cuja remessa tenha sido classificada pelo remetente no c�digo "6.934 - Remessa simb�lica de mercadoria depositada em armaz�m geral ou dep�sito fechado '
                   +'(AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009 efeitos a partir de 1� de julho de 2010- DECRETO 36.465/2011' ) ;
INSERT_CFOP( '2949','Outra entrada de mercadoria ou presta��o de servi�o n�o especificado','Classificam-se neste c�digo as outras entradas de mercadorias ou presta��es de servi�os que n�o tenham sido especificados nos c�digos anteriores.' ) ;
end ;

procedure TInitCFOP.Execute_3000 ;
begin

INSERT_CFOP( '3000','ENTRADAS OU AQUISI��ES DE SERVI�OS DO EXTERIOR','Classificam-se, neste grupo, as entradas de mercadorias oriundas de outro pa�s, inclusive as decorrentes de aquisi��o por arremata��o, concorr�ncia ou qualquer outra forma de aliena��o promovida pelo poder p�blico, e os servi�os iniciados no exterior' ) ;
INSERT_CFOP( '3100','COMPRAS PARA INDUSTRIALIZA��O, PRODU��O RURAL, COMERCIALIZA��O OU PRESTA��O DE SERVI�OS (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','' ) ;
INSERT_CFOP( '3101','Compra para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Compra de mercadoria a ser utilizada em processo de industrializa��o ou produ��o rural, bem como a entrada de mercadoria em estabelecimento industrial ou produtor rural de cooperativa.' ) ;
INSERT_CFOP( '3102','Compra para comercializa��o','Classificam-se neste c�digo as compras de mercadorias a serem comercializadas. Tamb�m ser�o classificadas neste c�digo as entradas de mercadorias em estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '3126','Compra para utiliza��o na presta��o de servi�o sujeita ao ICMS (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011','Classificam-se neste c�digo as entradas de mercadorias a serem utilizadas nas presta��es de servi�os sujeitas ao ICMS (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010). efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011' ) ;
INSERT_CFOP( '3127','Compra para industrializa��o sob o regime de drawback ',
                    'Classificam-se neste c�digo as compras de mercadorias a serem utilizadas em processo de industrializa��o e posterior exporta��o do produto resultante, '
                   +'cujas vendas ser�o classificadas no c�digo 7.127 - Venda de produ��o do estabelecimento sob o regime de drawback.' ) ;
INSERT_CFOP( '3128','Compra para utiliza��o na presta��o de servi�o sujeita ao ISSQN(AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011','Classificam-se neste c�digo as entradas de mercadorias a serem utilizadas nas presta��es de servi�os sujeitas ao ISSQN. (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de 1� de janeiro de 2011- DECRETO 36.465/2011' ) ;
INSERT_CFOP( '3200','DEVOLU��ES DE VENDAS DE PRODU��O PR�PRIA, DE TERCEIROS OU ANULA��ES DE VALORES','�In�cio' ) ;
INSERT_CFOP( '3201','Devolu��o de venda de produ��o do estabelecimento','Devolu��o de venda de produto industrializado ou produzido pelo pr�prio estabelecimento, cuja sa�da tenha sido classificada como "Venda de produ��o do estabelecimento". ' ) ;
INSERT_CFOP( '3202','Devolu��o de venda de mercadoria adquirida ou recebida de terceiros',
                    'Classificam-se neste c�digo as devolu��es de vendas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de industrializa��o '
                   +'no estabelecimento, cujas sa�das tenham sido classificadas como Venda de mercadoria adquirida ou recebida de terceiros.' ) ;
INSERT_CFOP( '3205','Anula��o de valor relativo � presta��o de servi�o de comunica��o','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes de presta��es de servi�os de comunica��o.' ) ;
INSERT_CFOP( '3206','Anula��o de valor relativo � presta��o de servi�o de transporte','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes de presta��es de servi�os de transporte.' ) ;
INSERT_CFOP( '3207','Anula��o de valor relativo � venda de energia el�trica','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes de venda de energia el�trica.' ) ;
INSERT_CFOP( '3211','Devolu��o de venda de produ��o do estabelecimento sob o regime de drawback ','Classificam-se neste c�digo as devolu��es de vendas de produtos industrializados pelo estabelecimento sob o regime de drawback.' ) ;
INSERT_CFOP( '3250','COMPRAS DE ENERGIA EL�TRICA','' ) ;
INSERT_CFOP( '3251','Compra de energia el�trica para distribui��o ou comercializa��o','Classificam-se neste c�digo as compras de energia el�trica utilizada em sistema de distribui��o ou comercializa��o. Tamb�m ser�o classificadas neste c�digo as compras de energia el�trica por cooperativas para distribui��o aos seus cooperados.' ) ;
INSERT_CFOP( '3250','COMPRAS DE ENERGIA EL�TRICA','' ) ;
INSERT_CFOP( '3301','Aquisi��o de servi�o de comunica��o para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as aquisi��es de servi�os de comunica��o utilizados nas presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '3350','AQUISI��ES DE SERVI�OS DE TRANSPORTE','' ) ;
INSERT_CFOP( '3351','Aquisi��o de servi�o de transporte para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados nas presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '3352','Aquisi��o de servi�o de transporte por estabelecimento industrial','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento industrial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '3353','Aquisi��o de servi�o de transporte por estabelecimento comercial','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '3354','Aquisi��o de servi�o de transporte por estabelecimento de prestador de servi�o de comunica��o','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '3355','Aquisi��o de servi�o de transporte por estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '3356','Aquisi��o de servi�o de transporte por estabelecimento de produtor rural','Classificam-se neste c�digo as aquisi��es de servi�os de transporte utilizados por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '3500','ENTRADAS DE MERCADORIAS REMETIDAS COM FIM ESPEC�FICO DE EXPORTA��O E EVENTUAIS DEVOLU��ES','' ) ;
INSERT_CFOP( '3503','Devolu��o de mercadoria exportada que tenha sido recebida com fim espec�fico de exporta��o',
                    'Classificam-se neste c�digo as devolu��es de mercadorias exportadas por trading company, empresa comercial exportadora ou outro estabelecimento do remetente, '
                   +'recebidas com fim espec�fico de exporta��o, cujas sa�das tenham sido classificadas no c�digo 7.501 - Exporta��o de mercadorias recebidas com fim espec�fico de exporta��o.' ) ;
INSERT_CFOP( '3550','OPERA��ES COM BENS DE ATIVO IMOBILIZADO E MATERIAIS PARA USO OU CONSUMO','' ) ;
INSERT_CFOP( '3551','Compra de bem para o ativo imobilizado','Classificam-se neste c�digo as compras de bens destinados ao ativo imobilizado do estabelecimento.' ) ;
INSERT_CFOP( '3553','Devolu��o de venda de bem do ativo imobilizado','Classificam-se neste c�digo as devolu��es de vendas de bens do ativo imobilizado, cujas sa�das tenham sido classificadas no c�digo 7.551 - Venda de bem do ativo imobilizado.' ) ;
INSERT_CFOP( '3556','Compra de material para uso ou consumo','Classificam-se neste c�digo as compras de mercadorias destinadas ao uso ou consumo do estabelecimento.' ) ;
INSERT_CFOP( '3650','ENTRADAS DE COMBUST�VEIS, DERIVADOS OU N�O DE PETR�LEO, E LUBRIFICANTES ','' ) ;
INSERT_CFOP( '3651','Compra de combust�vel ou lubrificante para industrializa��o subseq�ente','Compra de combust�vel ou lubrificante a ser utilizados em processo de industrializa��o do pr�prio produto. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '3652','Compra de combust�vel ou lubrificante para comercializa��o','Compra de combust�vel ou lubrificante a ser comercializados. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '3653','Compra de combust�vel ou lubrificante por consumidor ou usu�rio final','Compra de combust�vel ou lubrificante, a ser consumidos em processo de industrializa��o de outros produtos, na produ��o rural, na presta��o de servi�o ou por usu�rio final. ' ) ;
INSERT_CFOP( '3900','OUTRAS ENTRADAS DE MERCADORIAS OU AQUISI��ES DE SERVI�OS','' ) ;
INSERT_CFOP( '3930','Lan�amento efetuado a t�tulo de entrada de bem sob amparo de regime especial aduaneiro de admiss�o tempor�ria','Lan�amento efetuado a t�tulo de entrada de bem amparada por regime especial aduaneiro de admiss�o tempor�ria. � (Decreto N� 26.174 de 26/11/2003). a partir 01.01.2004   ' ) ;
INSERT_CFOP( '3949','Outra entrada de mercadoria ou presta��o de servi�o n�o especificado','Outra entrada de mercadoria ou presta��o de servi�o que n�o tenham sido especificada nos c�digos anteriores. � (Decreto N� 26.174 de 26/11/2003). a partir 01.01.2004   ' ) ;
end ;

procedure TInitCFOP.Execute_5000 ;
begin

INSERT_CFOP( '5000','SA�DAS OU PRESTA��ES DE SERVI�OS PARA O ESTADO','Classificam-se, neste grupo, as opera��es ou presta��es em que o estabelecimento remetente esteja localizado na mesma unidade da Federa��o do destinat�rio.' ) ;
INSERT_CFOP( '5100','VENDAS DE PRODU��O PR�PRIA OU DE TERCEIROS','' ) ;
INSERT_CFOP( '5101','Venda de produ��o do estabelecimento','Venda de produto industrializado ou produzido pelo estabelecimento, bem como a de mercadoria por estabelecimento industrial ou produtor rural de cooperativa destinada a seus cooperados ou a estabelecimento de outra cooperativa. ' ) ;
INSERT_CFOP( '5102','Venda de mercadoria adquirida ou recebida de terceiros',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                   +'que n�o tenham sido objeto de qualquer processo industrial no estabelecimento. Tamb�m ser�o classificadas neste c�digo as vendas de mercadorias '
                   +'por estabelecimento comercial de cooperativa destinadas a seus cooperados ou estabelecimento de outra cooperativa.' ) ;
INSERT_CFOP( '5103','Venda de produ��o do estabelecimento efetuada fora do estabelecimento','Venda efetuada fora do estabelecimento, inclusive por meio de ve�culo, de produto industrializado ou produzido no estabelecimento. ' ) ;
INSERT_CFOP( '5104','Venda de mercadoria adquirida ou recebida de terceiros, efetuada fora do estabelecimento',
                    'Classificam-se neste c�digo as vendas efetuadas fora do estabelecimento, inclusive por meio de ve�culo, '
                   +'de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, que n�o tenham sido objeto de qualquer '
                   +'processo industrial no estabelecimento.' ) ;
INSERT_CFOP( '5105','Venda de produ��o do estabelecimento que n�o deva por ele transitar','Classificam-se neste c�digo as vendas de produtos industrializados no estabelecimento, armazenados em dep�sito fechado, armaz�m geral ou outro sem que haja retorno ao estabelecimento depositante.' ) ;
INSERT_CFOP( '5106','Venda de mercadoria adquirida ou recebida de terceiros, que n�o deva por ele transitar',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                   +'armazenadas em dep�sito fechado, armaz�m geral ou outro, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento '
                   +'sem que haja retorno ao estabelecimento depositante. Tamb�m ser�o classificadas neste c�digo as vendas de mercadorias importadas, '
                   +'cuja sa�da ocorra do recinto alfandegado ou da reparti��o alfandeg�ria onde se processou o desembara�o aduaneiro, '
                   +'com destino ao estabelecimento do comprador, sem transitar pelo estabelecimento do importador.' ) ;
INSERT_CFOP( '5109','Venda de produ��o do estabelecimento destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio','Venda de produto industrializado ou produzido pelo estabelecimento destinado � Zona Franca de Manaus ou �reas de Livre Com�rcio. ' ) ;
INSERT_CFOP( '5110','Venda de mercadoria, adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Comercio, '
                    +'de que trata o Anexo do Conv�nio SINIEF s/n, de 15 de dezembro de 1970, que disp�e sobre o Sistema Nacional Integrado de Informa��es Econ�mico-Fiscais ',
                    'Venda de mercadoria, adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio, desde que alcan�ada pelos benef�cios '
                    +'fiscais de que tratam o Decreto-Lei n� 288, de 28 de fevereiro de 1967, o Conv�nio ICM 65/88, de 06 de dezembro de 1988, o Conv�nio ICMS 36/97, '
                    +'de 23 de maio de 1997, e o Conv�nio ICMS 37/97, de 23 de maio de 1997. (NR Ajuste SINIEF 09/2004) (Decreto n� 26.955/2004' ) ;
INSERT_CFOP( '5111','Venda de produ��o do estabelecimento remetida anteriormente em consigna��o industrial','Classificam-se neste c�digo as vendas efetivas de produtos industrializados no estabelecimento remetidos anteriormente a t�tulo de consigna��o industrial.' ) ;
INSERT_CFOP( '5112','Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consigna��o industrial','Classificam-se neste c�digo as vendas efetivas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, remetidas anteriormente a t�tulo de consigna��o industrial.' ) ;
INSERT_CFOP( '5113','Venda de produ��o do estabelecimento remetida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as vendas efetivas de produtos industrializados no estabelecimento remetidos anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '5114','Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as vendas efetivas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, remetidas anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '5115','Venda de mercadoria adquirida ou recebida de terceiros, recebida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros, recebidas anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '5116','Venda de produ��o do estabelecimento originada de encomenda para entrega futura','Venda de produto industrializado ou produzido pelo estabelecimento, quando da sa�da real do produto, cujo faturamento tenha sido classificado no c�digo "5.922 � Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura". ' ) ;
INSERT_CFOP( '5117','Venda de mercadoria adquirida ou recebida de terceiros, originada de encomenda para entrega futura',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial '
                    +'no estabelecimento, quando da sa�da real da mercadoria, cujo faturamento tenha sido classificado no c�digo '
                    +'5.922 - Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura.' ) ;
INSERT_CFOP( '5118','Venda de produ��o do estabelecimento entregue ao destinat�rio por conta e ordem do adquirente origin�rio, em venda � ordem','Classificam-se neste c�digo as vendas � ordem de produtos industrializados pelo estabelecimento, entregues ao destinat�rio por conta e ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '5119','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinat�rio por conta e ordem do adquirente origin�rio, em venda � ordem','Classificam-se neste c�digo as vendas � ordem de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, entregues ao destinat�rio por conta e ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '5120','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinat�rio pelo vendedor remetente, em venda � ordem',
                    'Classificam-se neste c�digo as vendas � ordem de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer '
                   +'processo industrial no estabelecimento, entregues pelo vendedor remetente ao destinat�rio, cuja compra seja classificada, pelo adquirente origin�rio, '
                   +'no c�digo 1.118 - Compra de mercadoria pelo adquirente origin�rio, entregue pelo vendedor remetente ao destinat�rio, em venda � ordem.' ) ;
INSERT_CFOP( '5122','Venda de produ��o do estabelecimento remetida para industrializa��o, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as vendas de produtos industrializados no estabelecimento, remetidos para serem industrializados em outro estabelecimento, '
                   +'por conta e ordem do adquirente, sem que os produtos tenham transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '5123','Venda de mercadoria adquirida ou recebida de terceiros remetida para industrializa��o, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial '
                    +'no estabelecimento, remetidas para serem industrializadas em outro estabelecimento, por conta e ordem do adquirente, sem que as mercadorias tenham '
                    +'transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '5124','Industrializa��o efetuada para outra empresa','Classificam-se neste c�digo as sa�das de mercadorias industrializadas para terceiros, compreendendo os valores referentes aos servi�os prestados e os das mercadorias de propriedade do industrializador empregadas no processo industrial.' ) ;
INSERT_CFOP( '5125','Industrializa��o efetuada para outra empresa quando a mercadoria recebida para utiliza��o no processo de industrializa��o n�o transitar pelo estabelecimento adquirente da mercadoria',
                    'Classificam-se neste c�digo as sa�das de mercadorias industrializadas para outras empresas, em que as mercadorias recebidas para utiliza��o no processo '
                    +'de industrializa��o n�o tenham transitado pelo estabelecimento do adquirente das mercadorias, compreendendo os valores referentes aos servi�os prestados e os das mercadorias de propriedade do industrializador empregadas no processo industrial.' ) ;
INSERT_CFOP( '5150','TRANSFER�NCIAS DE PRODU��O PR�PRIA OU DE TERCEIROS','' ) ;
INSERT_CFOP( '5151','Transfer�ncia de produ��o do estabelecimento','Transfer�ncia de produto industrializado ou produzido no estabelecimento para outro estabelecimento da mesma empresa. ' ) ;
INSERT_CFOP( '5152','Transfer�ncia de mercadoria adquirida ou recebida de terceiros',
                    'Mercadoria adquirida ou recebida de terceiros para industrializa��o, comercializa��o ou utiliza��o na presta��o de servi�o e que n�o tenha sido '
                    +'objeto de qualquer processo industrial no estabelecimento, transferida para outro estabelecimento da mesma empresa. '
                    +'A partir  10 de julho de 2003. (Decreto n� 26.020/2003)' ) ;
INSERT_CFOP( '5153','Transfer�ncia de energia el�trica','Classificam-se neste c�digo as transfer�ncias de energia el�trica para outro estabelecimento da mesma empresa, para distribui��o.' ) ;
INSERT_CFOP( '5155','Transfer�ncia de produ��o do estabelecimento, que n�o deva por ele transitar',
                    'Classificam-se neste c�digo as transfer�ncias para outro estabelecimento da mesma empresa, '
                   +'de produtos industrializados no estabelecimento que tenham sido remetidos para armaz�m geral, dep�sito fechado ou outro, '
                   +'sem que haja retorno ao estabelecimento depositante.' ) ;
INSERT_CFOP( '5156','Transfer�ncia de mercadoria adquirida ou recebida de terceiros, que n�o deva por ele transitar',
                    'Classificam-se neste c�digo as transfer�ncias para outro estabelecimento da mesma empresa, '
                    +'de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                    +'que n�o tenham sido objeto de qualquer processo industrial, remetidas para armaz�m geral, dep�sito fechado ou outro, '
                    +'sem que haja retorno ao estabelecimento depositante.' ) ;
INSERT_CFOP( '5200','DEVOLU��ES DE COMPRAS PARA INDUSTRIALIZA��O, PRODU��O RURAL, COMERCIALIZA��O OU ANULA��ES DE VALORES (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','' ) ;
INSERT_CFOP( '5201','Devolu��o de compra para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Devolu��o de mercadoria adquirida para ser utilizada em processo de industrializa��o ou produ��o rural, cuja entrada tenha sido classificada como "1.101 - Compra para industrializa��o ou produ��o rural".' ) ;
INSERT_CFOP( '5202','Devolu��o de compra para comercializa��o','Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para serem comercializadas, cujas entradas tenham sido classificadas como Compra para comercializa��o.' ) ;
INSERT_CFOP( '5205','Anula��o de valor relativo a aquisi��o de servi�o de comunica��o','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes das aquisi��es de servi�os de comunica��o.' ) ;
INSERT_CFOP( '5206','Anula��o de valor relativo a aquisi��o de servi�o de transporte','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes das aquisi��es de servi�os de transporte.' ) ;
INSERT_CFOP( '5207','Anula��o de valor relativo � compra de energia el�trica','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes da compra de energia el�trica.' ) ;
INSERT_CFOP( '5208','Devolu��o de mercadoria recebida em transfer�ncia para industrializa��o ou produ��o rural ','Devolu��o de mercadoria recebida em transfer�ncia de outro estabelecimento da mesma empresa, para ser utilizada em processo de industrializa��o ou produ��o rural. ' ) ;
INSERT_CFOP( '5209','Devolu��o de mercadoria recebida em transfer�ncia para comercializa��o','Classificam-se neste c�digo as devolu��es de mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem comercializadas.' ) ;
INSERT_CFOP( '5210','Devolu��o de compra para utiliza��o na presta��o de servi�o',
                    'Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para utiliza��o na presta��o de servi�os, '
                   +'cujas entradas tenham sido classificadas nos c�digos �1.126 - Compra para utiliza��o na presta��o de servi�o sujeita ao ICMS� e '
                   +'�1.128 - Compra para utiliza��o na presta��o de servi�o sujeita ao ISSQN. (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010) efeitos a partir de '
                   +'1� de janeiro de 2011 � DECRETO 36.465/2011. Vejamais�' ) ;
INSERT_CFOP( '5250','VENDAS DE ENERGIA EL�TRICA','' ) ;
INSERT_CFOP( '5251','Venda de energia el�trica para distribui��o ou comercializa��o','Classificam-se neste c�digo as vendas de energia el�trica destinada � distribui��o ou comercializa��o. Tamb�m ser�o classificadas neste c�digo as vendas de energia el�trica destinada a cooperativas para distribui��o aos seus cooperados.' ) ;
INSERT_CFOP( '5252','Venda de energia el�trica para estabelecimento industrial','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento industrial. Tamb�m ser�o classificadas neste c�digo as vendas de energia el�trica destinada a estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '5253','Venda de energia el�trica para estabelecimento comercial','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as vendas de energia el�trica destinada a estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '5254','Venda de energia el�trica para estabelecimento prestador de servi�o de transporte','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento de prestador de servi�os de transporte.' ) ;
INSERT_CFOP( '5255','Venda de energia el�trica para estabelecimento prestador de servi�o de comunica��o','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento de prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '5256','Venda de energia el�trica para estabelecimento de produtor rural','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '5257','Venda de energia el�trica para consumo por demanda contratada','Classificam-se neste c�digo as vendas de energia el�trica para consumo por demanda contratada, que prevalecer� sobre os demais c�digos deste subgrupo.' ) ;
INSERT_CFOP( '5258','Venda de energia el�trica a n�o contribuinte','Classificam-se neste c�digo as vendas de energia el�trica a pessoas f�sicas ou a pessoas jur�dicas n�o indicadas nos c�digos anteriores.' ) ;
INSERT_CFOP( '5300','PRESTA��ES DE SERVI�OS DE COMUNICA��O','' ) ;
INSERT_CFOP( '5301','Presta��o de servi�o de comunica��o para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as presta��es de servi�os de comunica��o destinados �s presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '5302','Presta��o de servi�o de comunica��o a estabelecimento industrial','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento industrial. Tamb�m ser�o classificados neste c�digo os servi�os de comunica��o prestados a estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '5303','Presta��o de servi�o de comunica��o a estabelecimento comercial','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento comercial. Tamb�m ser�o classificados neste c�digo os servi�os de comunica��o prestados a estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '5304','Presta��o de servi�o de comunica��o a estabelecimento de prestador de servi�o de transporte','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento prestador de servi�o de transporte.' ) ;
INSERT_CFOP( '5305','Presta��o de servi�o de comunica��o a estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '5306','Presta��o de servi�o de comunica��o a estabelecimento de produtor rural','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '5307','Presta��o de servi�o de comunica��o a n�o contribuinte','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a pessoas f�sicas ou a pessoas jur�dicas n�o indicadas nos c�digos anteriores.' ) ;
INSERT_CFOP( '5350','PRESTA��ES DE SERVI�OS DE TRANSPORTE','' ) ;
INSERT_CFOP( '5351','Presta��o de servi�o de transporte para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as presta��es de servi�os de transporte destinados �s presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '5352','Presta��o de servi�o de transporte a estabelecimento industrial','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento industrial. Tamb�m ser�o classificados neste c�digo os servi�os de transporte prestados a estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '5353','Presta��o de servi�o de transporte a estabelecimento comercial','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento comercial. Tamb�m ser�o classificados neste c�digo os servi�os de transporte prestados a estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '5354','Presta��o de servi�o de transporte a estabelecimento de prestador de servi�o de comunica��o','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '5355','Presta��o de servi�o de transporte a estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '5356','Presta��o de servi�o de transporte a estabelecimento de produtor rural','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '5357','Presta��o de servi�o de transporte a n�o contribuinte','Classificam-se neste c�digo as presta��es de servi�os de transporte a pessoas f�sicas ou a pessoas jur�dicas n�o indicadas nos c�digos anteriores.' ) ;
INSERT_CFOP( '5359','Presta��o de servi�o de transporte a contribuinte ou a n�o-contribuinte, quando a mercadoria transportada esteja dispensada de emiss�o de Nota Fiscal  ',
                    'Presta��o de servi�o de transporte a contribuinte ou a n�o-contribuinte, quando n�o existir a obriga��o legal de emiss�o de Nota Fiscal para a mercadoria '
                   +'transportada. (ACR Ajuste SINIEF 03/2004) (DECRETO N� 26.810, DE 10 DE JUNHO DE 2004) (a partir de 01.01.2005)' ) ;
INSERT_CFOP( '5360','Presta��o de servi�o de transporte a contribuinte-substituto em rela��o ao servi�o de transporte (ACR) (Ajuste SINIEF 06/2007- Decreto n� 30.861/2007) � a partir de 01.01.2008','Presta��o de servi�o de transporte a contribuinte a quem tenha sido atribu�da a condi��o de contribuinte-substituto em rela��o ao imposto incidente na presta��o dos servi�os.' ) ;
INSERT_CFOP( '5400','SA�DAS DE MERCADORIAS SUJEITAS AO REGIME DE SUBSTITUI��O TRIBUT�RIA','' ) ;
INSERT_CFOP( '5401','Venda de produ��o do estabelecimento quando o produto esteja sujeito ao regime de substitui��o tribut�ria',
                    'Venda de produto industrializado ou produzido pelo estabelecimento, quando o referido produto estiver sujeito ao regime de substitui��o tribut�ria, '
                   +'bem como a de produto industrializado, por estabelecimento industrial ou produtor rural de cooperativa, sujeito ao regime de substitui��o tribut�ria. ' ) ;
INSERT_CFOP( '5402','Venda de produ��o do estabelecimento de produto sujeito ao regime de substitui��o tribut�ria, em opera��o entre contribuintes substitutos do mesmo produto','Classificam-se neste c�digo as vendas de produtos sujeitos ao regime de substitui��o tribut�ria industrializados no estabelecimento, em opera��es entre contribuintes substitutos do mesmo produto' ) ;
INSERT_CFOP( '5403','Venda de mercadoria, adquirida ou recebida de terceiros, sujeita ao regime de substitui��o tribut�ria, na condi��o de contribuinte-substituto','Venda de mercadoria, adquirida ou recebida de terceiros, sujeita ao regime de substitui��o tribut�ria, na condi��o de contribuinte-substituto.' ) ;
INSERT_CFOP( '5405','Venda de mercadoria, adquirida ou recebida de terceiros, sujeita ao regime de substitui��o tribut�ria, na condi��o de contribuinte-substitu�do','Venda de mercadoria, adquirida ou recebida de terceiros, sujeita ao regime de substitui��o tribut�ria, na condi��o de contribuinte-substitu�do.' ) ;
INSERT_CFOP( '5408','Transfer�ncia de produ��o do estabelecimento quando o produto estiver sujeito ao regime de substitui��o tribut�ria','Transfer�ncia de produto industrializado ou produzido no estabelecimento, para outro estabelecimento da mesma empresa, quando o produto estiver sujeito ao regime de substitui��o tribut�ria. ' ) ;
INSERT_CFOP( '5409','Transfer�ncia de mercadoria adquirida ou recebida de terceiros em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as transfer�ncias para outro estabelecimento da mesma empresa, '
                   +'de mercadorias adquiridas ou recebidas de terceiros que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, '
                   +'em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '5410','Devolu��o de compra para industrializa��o de mercadoria sujeita ao regime de substitui��o tribut�ria','Devolu��o de mercadoria adquirida para ser utilizada em processo de industrializa��o ou produ��o rural, cuja entrada tenha sido classificada como "Compra para industrializa��o ou produ��o rural de mercadoria sujeita ao regime de substitui��o tribut�ria". ' ) ;
INSERT_CFOP( '5411','Devolu��o de compra para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para serem comercializadas, cujas entradas tenham sido classificadas como Compra para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '5412','Devolu��o de bem do ativo imobilizado, em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as devolu��es de bens adquiridos para integrar o ativo imobilizado do estabelecimento, '
                   +'cuja entrada tenha sido classificada no c�digo 1.406 - Compra de bem para o ativo imobilizado cuja mercadoria est� sujeita '
                   +'ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '5413','Devolu��o de mercadoria destinada ao uso ou consumo, em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria.',
                    'Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para uso ou consumo do estabelecimento, '
                   +'cuja entrada tenha sido classificada no c�digo 1.407 - Compra de mercadoria para uso ou consumo cuja mercadoria est� sujeita ao '
                   +'regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '5414','Remessa de produ��o do estabelecimento para venda fora do estabelecimento, quando o produto estiver sujeito ao regime de substitui��o tribut�ria','Remessa de produto industrializado ou produzido pelo estabelecimento para ser vendido fora do estabelecimento, inclusive por meio de ve�culo, quando o mencionado produto estiver sujeito ao regime de substitui��o tribut�ria. ' ) ;
INSERT_CFOP( '5415','Remessa de mercadoria adquirida ou recebida de terceiros para venda fora do estabelecimento, em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as remessas de mercadorias adquiridas ou recebidas de terceiros para serem vendidas fora do estabelecimento, inclusive por meio de ve�culos, em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '5450','SISTEMAS DE INTEGRA��O','' ) ;
INSERT_CFOP( '5451','Remessa de animal e de insumo para estabelecimento produtor','Classificam-se neste c�digo as sa�das referentes � remessa de animais e de insumos para cria��o de animais no sistema integrado, tais como: pintos, leit�es, ra��es e medicamentos.' ) ;
INSERT_CFOP( '5500','REMESSAS PARA FORMA��O DE LOTE E COM FIM ESPEC�FICO DE EXPORTA��O E EVENTUAIS DEVOLU��ES (NR Ajuste SINIEF 09/2005)','' ) ;
INSERT_CFOP( '5501','Remessa de produ��o do estabelecimento, com fim espec�fico de exporta��o','Sa�da de produto industrializado ou produzido pelo estabelecimento, remetido com fim espec�fico de exporta��o a "trading company", empresa comercial exportadora ou outro estabelecimento do remetente' ) ;
INSERT_CFOP( '5502','Remessa de mercadoria adquirida ou recebida de terceiros, com fim espec�fico de exporta��o','Classificam-se neste c�digo as sa�das de mercadorias adquiridas ou recebidas de terceiros, remetidas com fim espec�fico de exporta��o a trading company, empresa comercial exportadora ou outro estabelecimento do remetente.' ) ;
INSERT_CFOP( '5503','Devolu��o de mercadoria recebida com fim espec�fico de exporta��o',
                    'Classificam-se neste c�digo as devolu��es efetuadas por trading company, empresa comercial exportadora ou outro estabelecimento do destinat�rio, '
                   +'de mercadorias recebidas com fim espec�fico de exporta��o, cujas entradas tenham sido classificadas no c�digo 1.501 - Entrada de mercadoria recebida com fim espec�fico de exporta��o.' ) ;
INSERT_CFOP( '5504','Remessa de mercadoria para forma��o de lote de exporta��o, de produto industrializado ou produzido pelo pr�prio estabelecimento.','Remessa de mercadoria para forma��o de lote de exporta��o, de produto industrializado ou produzido pelo pr�prio estabelecimento. ' ) ;
INSERT_CFOP( '5505','Remessa de mercadoria, adquirida ou recebida de terceiros, para forma��o de lote de exporta��o.','Remessa de mercadoria, adquirida ou recebida de terceiros, para forma��o de lote de exporta��o. ' ) ;
INSERT_CFOP( '5550','OPERA��ES COM BENS DE ATIVO IMOBILIZADO E MATERIAIS PARA USO OU CONSUMO','' ) ;
INSERT_CFOP( '5551','Venda de bem do ativo imobilizado','Classificam-se neste c�digo as vendas de bens integrantes do ativo imobilizado do estabelecimento.' ) ;
INSERT_CFOP( '5552','Transfer�ncia de bem do ativo imobilizado','Classificam-se neste c�digo os bens do ativo imobilizado transferidos para outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '5553','Devolu��o de compra de bem para o ativo imobilizado','Classificam-se neste c�digo as devolu��es de bens adquiridos para integrar o ativo imobilizado do estabelecimento, cuja entrada foi classificada no c�digo 1.551 - Compra de bem para o ativo imobilizado.' ) ;
INSERT_CFOP( '5554','Remessa de bem do ativo imobilizado para uso fora do estabelecimento','Classificam-se neste c�digo as remessas de bens do ativo imobilizado para uso fora do estabelecimento.' ) ;
INSERT_CFOP( '5555','Devolu��o de bem do ativo imobilizado de terceiro, recebido para uso no estabelecimento',
                    'Classificam-se neste c�digo as sa�das em devolu��o, de bens do ativo imobilizado de terceiros, recebidos para uso no estabelecimento, '
                   +'cuja entrada tenha sido classificada no c�digo 1.555 - Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento.' ) ;
INSERT_CFOP( '5556','Devolu��o de compra de material de uso ou consumo','Classificam-se neste c�digo as devolu��es de mercadorias destinadas ao uso ou consumo do estabelecimento, cuja entrada tenha sido classificada no c�digo 1.556 - Compra de material para uso ou consumo.' ) ;
INSERT_CFOP( '5557','Transfer�ncia de material de uso ou consumo','Classificam-se neste c�digo os materiais para uso ou consumo transferidos para outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '5600','CR�DITOS E RESSARCIMENTOS DE ICMS','' ) ;
INSERT_CFOP( '5601','Transfer�ncia de cr�dito de ICMS acumulado','Classificam-se neste c�digo os lan�amentos destinados ao registro da transfer�ncia de cr�ditos de ICMS para outras empresas.' ) ;
INSERT_CFOP( '5602','Transfer�ncia de saldo credor do ICMS, para outro estabelecimento da mesma empresa, destinado � compensa��o de saldo devedor do ICMS',
                    'Lan�amento destinado ao registro da transfer�ncia de saldo credor do ICMS, para outro estabelecimento da mesma empresa, destinado � compensa��o do '
                   +'saldo devedor desse estabelecimento, inclusive no caso de apura��o centralizada do imposto. (NR Ajuste SINIEF 09/2003 � a partir 01.01.2004)' ) ;
INSERT_CFOP( '5603','Ressarcimento de ICMS retido por substitui��o tribut�ria','Classificam-se neste c�digo os lan�amentos destinados ao registro de ressarcimento de ICMS retido por substitui��o tribut�ria a contribuinte substitu�do, efetuado pelo contribuinte substituto, nas hip�teses previstas na legisla��o aplic�vel.' ) ;
INSERT_CFOP( '5605','Transfer�ncia de saldo devedor do ICMS de outro estabelecimento da mesma empresa  ','Lan�amento destinado ao registro da transfer�ncia de saldo devedor do ICMS para outro estabelecimento da mesma empresa, para efetiva��o da apura��o centralizada do imposto. (ACR Ajuste SINIEF 03/2004) (DECRETO N� 26.810/2004) (a partir de 01.01.2005)' ) ;
INSERT_CFOP( '5606','Utiliza��o de saldo credor do ICMS para extin��o por compensa��o de d�bitos fiscais',
                    'Lan�amento destinado ao registro de utiliza��o de saldo credor do ICMS em conta gr�fica para extin��o por compensa��o de d�bitos fiscais desvinculados de conta gr�fica. '
                   +'(ACR Ajuste SINIEF 02/2005 � a partir de 01.01.2006). (DECRETO N� 27.995 de 06.06.2005) a partir de 01.01.2006' ) ;
INSERT_CFOP( '5650','SA�DAS DE COMBUST�VEIS, DERIVADOS OU N�O DE PETR�LEO, E LUBRIFICANTES ',' (ACR Ajuste SINIEF 9/2003 - a partir 01.01.2004) ( Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5651','Venda de combust�vel ou lubrificante de produ��o do estabelecimento destinados � industrializa��o subseq�ente',
                    'Venda de combust�vel ou lubrificante, industrializados no estabelecimento e destinados � industrializa��o do pr�prio produto, '
                   +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                   +'5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5652','Venda de combust�vel ou lubrificante, de produ��o do estabelecimento, destinados � comercializa��o',
                    'Venda de combust�vel ou lubrificante, industrializados no estabelecimento, destinados � comercializa��o, '
                   +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                   +'5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5653','Venda de combust�vel ou lubrificante, de produ��o do estabelecimento, destinados a consumidor ou usu�rio final',
                    'Venda de combust�vel ou lubrificante, industrializados no estabelecimento, destinados a consumo em processo de industrializa��o de outro produto, '
                   +'� presta��o de servi�o ou a usu�rio final, inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                   +'5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5654','Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � industrializa��o subseq�ente',
                    'Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � industrializa��o do pr�prio produto, '
                   +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                   +'5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5655','Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � comercializa��o',
                    'Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � comercializa��o, '
                    +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                    +'5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5656','Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados a consumidor ou usu�rio final',
                    'Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados a consumo em processo de industrializa��o de outro produto, '
                    +'� presta��o de servi�o ou a usu�rio final, inclusive aquela decorrente de encomenda para entrega futura, '
                    +'cujo faturamento tenha sido classificado no c�digo 5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".'
                    +'(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5657','Remessa de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, para venda fora do estabelecimento','Remessa de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, para ser vendidos fora do estabelecimento, inclusive por meio de ve�culos. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5658','Transfer�ncia de combust�vel ou lubrificante de produ��o do estabelecimento','Transfer�ncia de combust�vel ou lubrificante, industrializados no estabelecimento, para outro estabelecimento da mesma empresa. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5659','Transfer�ncia de combust�vel ou lubrificante adquiridos ou recebidos de terceiros','Transfer�ncia de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, para outro estabelecimento da mesma empresa. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5660','Devolu��o de compra de combust�vel ou lubrificante adquiridos para industrializa��o subseq�ente',
                    'Devolu��o de compra de combust�vel ou lubrificante, adquiridos para industrializa��o do pr�prio produto, cuja entrada tenha sido classificada '
                    +'como "Compra de combust�vel ou lubrificante para industrializa��o subseq�ente".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5661','Devolu��o de compra de combust�vel ou lubrificante adquiridos para comercializa��o','Devolu��o de compra de combust�vel ou lubrificante, adquiridos para comercializa��o, cuja entrada tenha sido classificada como "Compra de combust�vel ou lubrificante para comercializa��o".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5662','Devolu��o de compra de combust�vel ou lubrificante adquiridos por consumidor ou usu�rio final',
                    'Devolu��o de compra de combust�vel ou lubrificante, adquiridos para consumo em processo de industrializa��o de outro produto, '
                    +'na presta��o de servi�o ou por usu�rio final, cuja entrada tenha sido classificada como '
                    +'"Compra de combust�vel ou lubrificante por consumidor ou usu�rio final".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5663','Remessa para armazenagem de combust�vel ou lubrificante','Remessa para armazenagem de combust�vel ou lubrificante. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5664','Retorno de combust�vel ou lubrificante recebidos para armazenagem','Remessa, em devolu��o, de combust�vel ou lubrificante, recebidos para armazenagem. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5665','Retorno simb�lico de combust�vel ou lubrificante recebidos para armazenagem',
                     'Retorno simb�lico de combust�vel ou lubrificante, recebidos para armazenagem, quando a mercadoria armazenada tenha sido objeto de sa�da, '
                     +'a qualquer t�tulo, e n�o deva retornar ao estabelecimento depositante. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5666','Remessa, por conta e ordem de terceiros, de combust�vel ou lubrificante recebidos para armazenagem','Sa�da, por conta e ordem de terceiros, de combust�vel ou lubrificante, recebidos anteriormente para armazenagem. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '5667','Venda de combust�vel ou lubrificante a consumidor ou usu�rio final estabelecido em outra Unidade da Federa��o',
                    'Venda de combust�vel ou lubrificante a consumidor ou a usu�rio final estabelecido em outra Unidade da Federa��o, '
                   +'cujo abastecimento tenha sido efetuado na unidade da Federa��o do remetente. ACR Ajuste SINIEF 05/2009 � a partir de 01.07.2009)(Decreto n� 34.490/2009)' ) ;
INSERT_CFOP( '5900','OUTRAS SA�DAS DE MERCADORIAS OU PRESTA��ES DE SERVI�OS','' ) ;
INSERT_CFOP( '5901','Remessa para industrializa��o por encomenda','Classificam-se neste c�digo as remessas de insumos remetidos para industrializa��o por encomenda, a ser realizada em outra empresa ou em outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '5902','Retorno de mercadoria utilizada na industrializa��o por encomenda',
                    'Classificam-se neste c�digo as remessas, pelo estabelecimento industrializador, '
                    +'dos insumos recebidos para industrializa��o e incorporados ao produto final, '
                    +'por encomenda de outra empresa ou de outro estabelecimento da mesma empresa. '
                    +'O valor dos insumos nesta opera��o dever� ser igual ao valor dos insumos recebidos para industrializa��o.' ) ;
INSERT_CFOP( '5903','Retorno de mercadoria recebida para industrializa��o e n�o aplicada no referido processo','Classificam-se neste c�digo as remessas em devolu��o de insumos recebidos para industrializa��o e n�o aplicados no referido processo.' ) ;
INSERT_CFOP( '5904','Remessa para venda fora do estabelecimento','Classificam-se neste c�digo as remessas de mercadorias para venda fora do estabelecimento, inclusive por meio de ve�culos.' ) ;
INSERT_CFOP( '5905','Remessa para dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo as remessas de mercadorias para dep�sito em dep�sito fechado ou armaz�m geral.' ) ;
INSERT_CFOP( '5906','Retorno de mercadoria depositada em dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo os retornos de mercadorias depositadas em dep�sito fechado ou armaz�m geral ao estabelecimento depositante.' ) ;
INSERT_CFOP( '5907','Retorno simb�lico de mercadoria depositada em dep�sito fechado ou armaz�m geral',
                     'Classificam-se neste c�digo os retornos simb�licos de mercadorias recebidas para dep�sito em dep�sito fechado ou armaz�m geral, '
                     +'quando as mercadorias depositadas tenham sido objeto de sa�da a qualquer t�tulo e que n�o devam retornar ao estabelecimento depositante.' ) ;
INSERT_CFOP( '5908','Remessa de bem por conta de contrato de comodato','Classificam-se neste c�digo as remessas de bens para o cumprimento de contrato de comodato.' ) ;
INSERT_CFOP( '5909','Retorno de bem recebido por conta de contrato de comodato','Classificam-se neste c�digo as remessas de bens em devolu��o ap�s cumprido o contrato de comodato.' ) ;
INSERT_CFOP( '5910','Remessa em bonifica��o, doa��o ou brinde','Classificam-se neste c�digo as remessas de mercadorias a t�tulo de bonifica��o, doa��o ou brinde.' ) ;
INSERT_CFOP( '5911','Remessa de amostra gr�tis','Classificam-se neste c�digo as remessas de mercadorias a t�tulo de amostra gr�tis.' ) ;
INSERT_CFOP( '5912','Remessa de mercadoria ou bem para demonstra��o','Classificam-se neste c�digo as remessas de mercadorias ou bens para demonstra��o.' ) ;
INSERT_CFOP( '5913','Retorno de mercadoria ou bem recebido para demonstra��o','Classificam-se neste c�digo as remessas em devolu��o de mercadorias ou bens recebidos para demonstra��o.' ) ;
INSERT_CFOP( '5914','Remessa de mercadoria ou bem para exposi��o ou feira','Classificam-se neste c�digo as remessas de mercadorias ou bens para exposi��o ou feira.' ) ;
INSERT_CFOP( '5915','Remessa de mercadoria ou bem para conserto ou reparo','Classificam-se neste c�digo as remessas de mercadorias ou bens para conserto ou reparo.' ) ;
INSERT_CFOP( '5916','Retorno de mercadoria ou bem recebido para conserto ou reparo','Classificam-se neste c�digo as remessas em devolu��o de mercadorias ou bens recebidos para conserto ou reparo.' ) ;
INSERT_CFOP( '5917','Remessa de mercadoria em consigna��o mercantil ou industrial','Classificam-se neste c�digo as remessas de mercadorias a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '5918','Devolu��o de mercadoria recebida em consigna��o mercantil ou industrial','Classificam-se neste c�digo as devolu��es de mercadorias recebidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '5919','Devolu��o simb�lica de mercadoria vendida ou utilizada em processo industrial, recebida anteriormente em consigna��o mercantil ou industrial','Classificam-se neste c�digo as devolu��es simb�licas de mercadorias vendidas ou utilizadas em processo industrial, que tenham sido recebidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '5920','Remessa de vasilhame ou sacaria','Classificam-se neste c�digo as remessas de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '5921','Devolu��o de vasilhame ou sacaria','Classificam-se neste c�digo as sa�das por devolu��o de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '5922','Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura','Classificam-se neste c�digo os registros efetuados a t�tulo de simples faturamento decorrente de venda para entrega futura.' ) ;
INSERT_CFOP( '5923','Remessa de mercadoria por conta e ordem de terceiros, em venda � ordem ou em opera��es com armaz�m geral ou dep�sito fechado. (NR AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009)Vejamais� efeitos a partir de 1� de julho de 2010� DECRETO 37.993/2012.',
                    'Classificam-se neste c�digo as sa�das correspondentes � entrega de mercadorias por conta e ordem de terceiros, em vendas � ordem, '
                    +'cuja venda ao adquirente origin�rio foi classificada nos c�digos �5.118 - Venda de produ��o do estabelecimento entregue ao destinat�rio '
                    +'por conta e ordem do adquirente origin�rio, em venda � ordem� ou �5.119 - Venda de mercadoria adquirida ou recebida de terceiros entregue '
                    +'ao destinat�rio por conta e ordem do adquirente origin�rio, em venda � ordem�.' ) ;
INSERT_CFOP( '5924','Remessa para industrializa��o por conta e ordem do adquirente da mercadoria, quando esta n�o transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as sa�das de insumos com destino a estabelecimento industrializador, para serem industrializados por conta e ordem do adquirente, '
                    +'nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente dos mesmos.' ) ;
INSERT_CFOP( '5925','Retorno de mercadoria recebida para industrializa��o por conta e ordem do adquirente da mercadoria, quando aquela n�o transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as remessas, pelo estabelecimento industrializador, dos insumos recebidos, por conta e ordem do adquirente, '
                    +'para industrializa��o e incorporados ao produto final, nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente. '
                    +'O valor dos insumos nesta opera��o dever� ser igual ao valor dos insumos recebidos para industrializa��o.' ) ;
INSERT_CFOP( '5926','Lan�amento efetuado a t�tulo de reclassifica��o de mercadoria decorrente de forma��o de kit ou de sua desagrega��o','Classificam-se neste c�digo os registros efetuados a t�tulo de reclassifica��o decorrente de forma��o de kit de mercadorias ou de sua desagrega��o.' ) ;
INSERT_CFOP( '5927','Lan�amento efetuado a t�tulo de baixa de estoque decorrente de perda, roubo ou deteriora��o','Classificam-se neste c�digo os registros efetuados a t�tulo de baixa de estoque decorrente de perda, roubou ou deteriora��o das mercadorias.' ) ;
INSERT_CFOP( '5928','Lan�amento efetuado a t�tulo de baixa de estoque decorrente do encerramento da atividade da empresa','Classificam-se neste c�digo os registros efetuados a t�tulo de baixa de estoque decorrente do encerramento das atividades da empresa.' ) ;
INSERT_CFOP( '5929','Lan�amento efetuado em decorr�ncia de emiss�o de documento fiscal relativo a opera��o ou presta��o tamb�m registrada em equipamento Emissor de Cupom Fiscal - ECF','Classificam-se neste c�digo os registros relativos aos documentos fiscais emitidos em opera��es ou presta��es que tamb�m tenham sido registradas em equipamento Emissor de Cupom Fiscal - ECF.' ) ;
INSERT_CFOP( '5931','Lan�amento efetuado em decorr�ncia da responsabilidade de reten��o do imposto por substitui��o tribut�ria, '
                   +'atribu�da ao remetente ou alienante da mercadoria, pelo servi�o de transporte realizado por transportador aut�nomo ou por '
                   +'transportador n�o inscrito na unidade da Federa��o onde iniciado o servi�o',
                     'Classificam-se neste c�digo exclusivamente os lan�amentos efetuados pelo remetente ou alienante da mercadoria quando lhe for atribu�da a '
                   +'responsabilidade pelo recolhimento do imposto devido pelo servi�o de transporte realizado por transportador aut�nomo ou por transportador'
                   +'n�o inscrito na unidade da Federa��o onde iniciado o servi�o.' ) ;
INSERT_CFOP( '5932','Presta��o de servi�o de transporte iniciada em unidade da Federa��o diversa daquela onde inscrito o prestador','Classificam-se neste c�digo as presta��es de servi�o de transporte que tenham sido iniciadas em unidade da Federa��o diversa daquela onde o prestador est� inscrito como contribuinte.' ) ;
INSERT_CFOP( '5933','Presta��o de servi�o tributado pelo Imposto Sobre Servi�os de Qualquer Natureza','Presta��o de servi�o, cujo imposto � de compet�ncia municipal, desde que informado em Nota Fiscal modelo 1 ou 1-A. (NR Ajuste SINIEF 06/2005)a partir de 01/01/2006' ) ;
INSERT_CFOP( '5934','Remessa simb�lica de mercadoria depositada em armaz�m geral ou dep�sito fechado. (AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009) � DECRETO 36.465/2011.',
                    'Classificam-se neste c�digo as remessas simb�licas de mercadorias depositadas em dep�sito fechado ou armaz�m geral, '
                    +'efetuadas nas situa��es em que haja a transmiss�o de propriedade com a perman�ncia das mercadorias em dep�sito ou quando a mercadoria tenha sido '
                    +'entregue pelo remetente diretamente a dep�sito fechado ou armaz�m geral. (AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009) � DECRETO 36.465/2011.' ) ;
INSERT_CFOP( '5949','Outra sa�da de mercadoria ou presta��o de servi�o n�o especificado','Classificam-se neste c�digo as outras sa�das de mercadorias ou presta��es de servi�os que n�o tenham sido especificados nos c�digos anteriores.' ) ;
end ;

procedure TInitCFOP.Execute_6000 ;
begin

INSERT_CFOP( '6000','SA�DAS OU PRESTA��ES DE SERVI�OS PARA OUTROS ESTADOS','Classificam-se, neste grupo, as opera��es ou presta��es em que o estabelecimento remetente esteja localizado em unidade da Federa��o diversa daquela do destinat�rio' ) ;
INSERT_CFOP( '6101','Venda de produ��o do estabelecimento','Venda de produto industrializado ou produzido pelo estabelecimento, bem como a de mercadoria por estabelecimento industrial ou produtor rural de cooperativa destinada a seus cooperados ou a estabelecimento de outra cooperativa. ' ) ;
INSERT_CFOP( '6102','Venda de mercadoria adquirida ou recebida de terceiros',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                   +'que n�o tenham sido objeto de qualquer processo industrial no estabelecimento. Tamb�m ser�o classificadas neste c�digo as vendas de '
                   +'mercadorias por estabelecimento comercial de cooperativa destinadas a seus cooperados ou estabelecimento de outra cooperativa.' ) ;
INSERT_CFOP( '6103','Venda de produ��o do estabelecimento, efetuada fora do estabelecimento','venda efetuada fora do estabelecimento, inclusive por meio de ve�culo, de produto industrializado no estabelecimento. ' ) ;
INSERT_CFOP( '6104','Venda de mercadoria adquirida ou recebida de terceiros, efetuada fora do estabelecimento','venda efetuada fora do estabelecimento, inclusive por meio de ve�culo, de mercadoria adquirida ou recebida de terceiro para industrializa��o ou comercializa��o, que n�o tenha sido objeto de qualquer processo industrial no estabelecimento.' ) ;
INSERT_CFOP( '6105','Venda de produ��o do estabelecimento que n�o deva por ele transitar','Classificam-se neste c�digo as vendas de produtos industrializados no estabelecimento, armazenados em dep�sito fechado, armaz�m geral ou outro sem que haja retorno ao estabelecimento depositante.' ) ;
INSERT_CFOP( '6106','Venda de mercadoria adquirida ou recebida de terceiros, que n�o deva por ele transitar',
                    'Vendas de mercadoria adquirida ou recebida de terceiro para industrializa��o ou comercializa��o, '
                    +'armazenada em dep�sito fechado, armaz�m geral ou outro, que n�o tenha sido objeto de qualquer processo industrial no estabelecimento '
                    +'sem que haja retorno ao estabelecimento depositante. Bem como venda de mercadoria importada, cuja sa�da ocorra do recinto alfandegado ou '
                    +'da reparti��o alfandeg�ria onde se processou o desembara�o aduaneiro, com destino ao estabelecimento do comprador, '
                    +'sem que tenha transitado pelo estabelecimento do importador.' ) ;
INSERT_CFOP( '6107','Venda de produ��o do estabelecimento, destinada a n�o contribuinte','Vendas de produto industrializado no estabelecimento, ou produzido no estabelecimento do produtor rural, destinada a n�o contribuinte, bem como qualquer opera��o de venda destinada a n�o contribuinte' ) ;
INSERT_CFOP( '6108','Venda de mercadoria adquirida ou recebida de terceiros, destinada a n�o contribuinte',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                    +'que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, destinadas a n�o contribuintes. '
                    +'Quaisquer opera��es de venda destinadas a n�o contribuintes dever�o ser classificadas neste c�digo.' ) ;
INSERT_CFOP( '6109','Venda de produ��o do estabelecimento destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio','Venda de produto industrializado ou produzido pelo estabelecimento destinado � Zona Franca de Manaus ou �reas de Livre Com�rcio.' ) ;
INSERT_CFOP( '6110','Venda de mercadoria, adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio, '
                    +'de que trata o Anexo do Conv�nio SINIEF s/n, de 15 de dezembro de 1970, que disp�e sobre o Sistema Nacional Integrado '
                    +'de Informa��es Econ�mico-Fiscais (Decreto n� 26.955/2004) RETROAGINDO SEUS EFEITOS A 24.06.2004',
                    'Venda de mercadoria, adquirida ou recebida de terceiros, destinada � Zona Franca de Manaus ou �reas de Livre Com�rcio, '
                    +'desde que alcan�ada pelos benef�cios fiscais de que tratam o Decreto-Lei n� 288, de 28 de fevereiro de 1967, '
                    +'o Conv�nio ICM 65/88, de 06 de dezembro de 1988, o Conv�nio ICMS 36/97, de 23 de maio de 1997, '
                    +'e o Conv�nio ICMS 37/97, de 23 de maio de 1997. (NR Ajuste SINIEF 09/2004) (Decreto n� 26.955/2004) RETROAGINDO SEUS EFEITOS A 24.06.2004' ) ;
INSERT_CFOP( '6111','Venda de produ��o do estabelecimento remetida anteriormente em consigna��o industrial','Classificam-se neste c�digo as vendas efetivas de produtos industrializados no estabelecimento remetidos anteriormente a t�tulo de consigna��o industrial.' ) ;
INSERT_CFOP( '6112','Venda de mercadoria adquirida ou recebida de Terceiros remetida anteriormente em consigna��o industrial','Classificam-se neste c�digo as vendas efetivas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, remetidas anteriormente a t�tulo de consigna��o industrial.' ) ;
INSERT_CFOP( '6113','Venda de produ��o do estabelecimento remetida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as vendas efetivas de produtos industrializados no estabelecimento remetidos anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '6114','Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as vendas efetivas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, remetidas anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '6115','Venda de mercadoria adquirida ou recebida de terceiros, recebida anteriormente em consigna��o mercantil','Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros, recebidas anteriormente a t�tulo de consigna��o mercantil.' ) ;
INSERT_CFOP( '6116','Venda de produ��o do estabelecimento originada de encomenda para entrega futura','Venda de produto industrializado ou produzido pelo estabelecimento, quando da sa�da real do produto, cujo faturamento tenha sido classificado no c�digo "5.922 � Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura". ' ) ;
INSERT_CFOP( '6117','Venda de mercadoria adquirida ou recebida de terceiros, originada de encomenda para entrega futura',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer '
                    +'processo industrial no estabelecimento, quando da sa�da real da mercadoria, cujo faturamento tenha sido classificado no c�digo '
                    +'6.922 - Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura.' ) ;
INSERT_CFOP( '6118','Venda de produ��o do estabelecimento entregue ao destinat�rio por conta e ordem do adquirente origin�rio, em venda � ordem','Classificam-se neste c�digo as vendas � ordem de produtos industrializados pelo estabelecimento, entregues ao destinat�rio por conta e ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '6119','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinat�rio por conta e ordem do adquirente origin�rio, em venda � ordem','Classificam-se neste c�digo as vendas � ordem de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, entregues ao destinat�rio por conta e ordem do adquirente origin�rio.' ) ;
INSERT_CFOP( '6120','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinat�rio pelo vendedor remetente, em venda � ordem',
                    'Classificam-se neste c�digo as vendas � ordem de mercadorias adquiridas ou recebidas de terceiros, que n�o tenham sido objeto de qualquer '
                   +'processo industrial no estabelecimento, entregues pelo vendedor remetente ao destinat�rio, cuja compra seja classificada, pelo adquirente origin�rio, '
                   +'no c�digo 2.118 - Compra de mercadoria pelo adquirente origin�rio, entregue pelo vendedor remetente ao destinat�rio, em venda � ordem.' ) ;
INSERT_CFOP( '6122','Venda de produ��o do estabelecimento remetida para industrializa��o, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as vendas de produtos industrializados no estabelecimento, remetidos para serem industrializados em outro estabelecimento, '
                   +'por conta e ordem do adquirente, sem que os produtos tenham transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '6123','Venda de mercadoria adquirida ou recebida de terceiros remetida para industrializa��o, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros, '
                   +'que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, remetidas para serem industrializadas em outro estabelecimento, '
                   +'por conta e ordem do adquirente, sem que as mercadorias tenham transitado pelo estabelecimento do adquirente.' ) ;
INSERT_CFOP( '6124','Industrializa��o efetuada para outra empresa','Classificam-se neste c�digo as sa�das de mercadorias industrializadas para terceiros, compreendendo os valores referentes aos servi�os prestados e os das mercadorias de propriedade do industrializador empregadas no processo industrial.' ) ;
INSERT_CFOP( '6125','Industrializa��o efetuada para outra empresa quando a mercadoria recebida para utiliza��o no processo de industrializa��o n�o transitar pelo estabelecimento adquirente da mercadoria',
                    'Classificam-se neste c�digo as sa�das de mercadorias industrializadas para outras empresas, '
                    +'em que as mercadorias recebidas para utiliza��o no processo de industrializa��o n�o tenham transitado pelo estabelecimento do adquirente das mercadorias, '
                    +'compreendendo os valores referentes aos servi�os prestados e os das mercadorias de propriedade do industrializador empregadas no processo industrial.' ) ;
INSERT_CFOP( '6150','TRANSFER�NCIAS DE PRODU��O PR�PRIA OU DE TERCEIROS','' ) ;
INSERT_CFOP( '6151','Transfer�ncia de produ��o do estabelecimento','Produtos industrializado ou produzido no estabelecimento e transferido para outro estabelecimento da mesma empresa. ' ) ;
INSERT_CFOP( '6152','Transfer�ncia de mercadoria adquirida ou recebida de terceiros',
                    'Mercadoria adquirida ou recebida de terceiros para industrializa��o, '
                    +'comercializa��o ou utiliza��o na presta��o de servi�o e que n�o tenha sido objeto de qualquer processo industrial no estabelecimento, '
                    +'transferida para outro estabelecimento da mesma empresa. A partir  10 de julho de 2003. (Decreto n� 26.020/2003)' ) ;
INSERT_CFOP( '6153','Transfer�ncia de energia el�trica','Classificam-se neste c�digo as transfer�ncias de energia el�trica para outro estabelecimento da mesma empresa, para distribui��o.' ) ;
INSERT_CFOP( '6155','Transfer�ncia de produ��o do estabelecimento, que n�o deva por ele transitar',
                     'Classificam-se neste c�digo as transfer�ncias para outro estabelecimento da mesma empresa, '
                    +'de produtos industrializados no estabelecimento que tenham sido remetidos para armaz�m geral, '
                    +'dep�sito fechado ou outro, sem que haja retorno ao estabelecimento depositante.' ) ;
INSERT_CFOP( '6156','Transfer�ncia de mercadoria adquirida ou recebida de terceiros, que n�o deva por ele transitar',
                     'Classificam-se neste c�digo as transfer�ncias para outro estabelecimento da mesma empresa, '
                     +'de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                     +'que n�o tenham sido objeto de qualquer processo industrial, remetidas para armaz�m geral, '
                     +'dep�sito fechado ou outro, sem que haja retorno ao estabelecimento depositante.' ) ;
INSERT_CFOP( '6200','DEVOLU��ES DE COMPRAS PARA INDUSTRIALIZA��O, COMERCIALIZA��O OU ANULA��ES DE VALORES','' ) ;
INSERT_CFOP( '6201','Devolu��o de compra para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Devolu��o de mercadoria adquirida para ser utilizada em processo de industrializa��o ou produ��o rural, cuja entrada tenha sido classificada como "1.101 - Compra para industrializa��o ou produ��o rural".' ) ;
INSERT_CFOP( '6202','Devolu��o de compra para comercializa��o','Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para serem comercializadas, cujas entradas tenham sido classificadas como Compra para comercializa��o.' ) ;
INSERT_CFOP( '6205','Anula��o de valor relativo a aquisi��o de servi�o de comunica��o','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes das aquisi��es de servi�os de comunica��o.' ) ;
INSERT_CFOP( '6206','Anula��o de valor relativo a aquisi��o de servi�o de transporte','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes das aquisi��es de servi�os de transporte.' ) ;
INSERT_CFOP( '6207','Anula��o de valor relativo � compra de energia el�trica','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes da compra de energia el�trica.' ) ;
INSERT_CFOP( '6208','Devolu��o de mercadoria recebida em transfer�ncia para industrializa��o ou produ��o rural ','Devolu��o de mercadoria recebida em transfer�ncia de outro estabelecimento da mesma empresa, para ser utilizada em processo de industrializa��o ou produ��o rural. ' ) ;
INSERT_CFOP( '6209','Devolu��o de mercadoria recebida em transfer�ncia para comercializa��o','Classificam-se neste c�digo as devolu��es de mercadorias recebidas em transfer�ncia de outro estabelecimento da mesma empresa, para serem comercializadas.' ) ;
INSERT_CFOP( '6210','Devolu��o de compra para utiliza��o na presta��o de servi�o',
                    'Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para utiliza��o na presta��o de servi�os, '
                    +'cujas entradas tenham sido classificadas nos c�digos �2.126 - Compra para utiliza��o na presta��o de servi�o sujeita ao ICMS� '
                    +'e �2.128 Compra para utiliza��o na presta��o de servi�o sujeita ao ISSQN� (AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010). '
                    +'Vejamais� efeitos a partir de 1� de janeiro de 2011� DECRETO 36.465/2011.' ) ;
INSERT_CFOP( '6250','VENDAS DE ENERGIA EL�TRICA','' ) ;
INSERT_CFOP( '6251','Venda de energia el�trica para distribui��o ou comercializa��o','Classificam-se neste c�digo as vendas de energia el�trica destinada � distribui��o ou comercializa��o. Tamb�m ser�o classificadas neste c�digo as vendas de energia el�trica destinada a cooperativas para distribui��o aos seus cooperados.' ) ;
INSERT_CFOP( '6252','Venda de energia el�trica para estabelecimento industrial','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento industrial. Tamb�m ser�o classificadas neste c�digo as vendas de energia el�trica destinada a estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '6253','Venda de energia el�trica para estabelecimento comercial','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento comercial. Tamb�m ser�o classificadas neste c�digo as vendas de energia el�trica destinada a estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '6254','Venda de energia el�trica para estabelecimento prestador de servi�o de transporte','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento de prestador de servi�os de transporte.' ) ;
INSERT_CFOP( '6255','Venda de energia el�trica para estabelecimento prestador de servi�o de comunica��o','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento de prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '6256','Venda de energia el�trica para estabelecimento de produtor rural','Classificam-se neste c�digo as vendas de energia el�trica para consumo por estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '6257','Venda de energia el�trica para consumo por demanda contratada','Classificam-se neste c�digo as vendas de energia el�trica para consumo por demanda contratada, que prevalecer� sobre os demais c�digos deste subgrupo.' ) ;
INSERT_CFOP( '6258','Venda de energia el�trica a n�o contribuinte','Classificam-se neste c�digo as vendas de energia el�trica a pessoas f�sicas ou a pessoas jur�dicas n�o indicadas nos c�digos anteriores.' ) ;
INSERT_CFOP( '6300','PRESTA��ES DE SERVI�OS DE COMUNICA��O','�In�cio' ) ;
INSERT_CFOP( '6301','Presta��o de servi�o de comunica��o para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as presta��es de servi�os de comunica��o destinados �s presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '6302','Presta��o de servi�o de comunica��o a estabelecimento industrial','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento industrial. Tamb�m ser�o classificados neste c�digo os servi�os de comunica��o prestados a estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '6303','Presta��o de servi�o de comunica��o a estabelecimento comercial','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento comercial. Tamb�m ser�o classificados neste c�digo os servi�os de comunica��o prestados a estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '6304','Presta��o de servi�o de comunica��o a estabelecimento de prestador de servi�o de transporte','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento prestador de servi�o de transporte.' ) ;
INSERT_CFOP( '6305','Presta��o de servi�o de comunica��o a estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '6306','Presta��o de servi�o de comunica��o a estabelecimento de produtor rural','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '6307','Presta��o de servi�o de comunica��o a n�o contribuinte','Classificam-se neste c�digo as presta��es de servi�os de comunica��o a pessoas f�sicas ou a pessoas jur�dicas n�o indicadas nos c�digos anteriores.' ) ;
INSERT_CFOP( '6350','PRESTA��ES DE SERVI�OS DE TRANSPORTE','' ) ;
INSERT_CFOP( '6351','Presta��o de servi�o de transporte para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as presta��es de servi�os de transporte destinados �s presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '6352','Presta��o de servi�o de transporte a estabelecimento industrial','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento industrial. Tamb�m ser�o classificados neste c�digo os servi�os de transporte prestados a estabelecimento industrial de cooperativa.' ) ;
INSERT_CFOP( '6353','Presta��o de servi�o de transporte a estabelecimento comercial','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento comercial. Tamb�m ser�o classificados neste c�digo os servi�os de transporte prestados a estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '6354','Presta��o de servi�o de transporte a estabelecimento de prestador de servi�o de comunica��o','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento prestador de servi�os de comunica��o.' ) ;
INSERT_CFOP( '6355','Presta��o de servi�o de transporte a estabelecimento de geradora ou de distribuidora de energia el�trica','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento de geradora ou de distribuidora de energia el�trica.' ) ;
INSERT_CFOP( '6356','Presta��o de servi�o de transporte a estabelecimento de produtor rural','Classificam-se neste c�digo as presta��es de servi�os de transporte a estabelecimento de produtor rural.' ) ;
INSERT_CFOP( '6357','Presta��o de servi�o de transporte a n�o contribuinte','Classificam-se neste c�digo as presta��es de servi�os de transporte a pessoas f�sicas ou a pessoas jur�dicas n�o indicadas nos c�digos anteriores.' ) ;
INSERT_CFOP( '6359','Presta��o de servi�o de transporte a contribuinte ou a n�o-contribuinte, quando a mercadoria transportada esteja dispensada de emiss�o de Nota Fiscal  ','Presta��o de servi�o de transporte a contribuinte ou a n�o-contribuinte, quando n�o existir a obriga��o legal de emiss�o de Nota Fiscal para a mercadoria transportada. (ACR Ajuste SINIEF 03/2004) (DECRETO N� 26.810/2004) (a partir de 01.01.2005)' ) ;
INSERT_CFOP( '6360','Presta��o de servi�o de transporte a contribuinte substituto em rela��o ao servi�o de transporte  ',
                    'Presta��o de servi�o de transporte a contribuinte a quem tenha sido atribu�da a condi��o de contribuinte-substituto em rela��o '
                    +'ao imposto incidente na presta��o dos servi�os. (Ajuste SINIEF 03/2008) (Decreto n� 32.653, de 14.11.2008) a partir de 01.05.2008' ) ;
INSERT_CFOP( '6400','SA�DAS DE MERCADORIAS SUJEITAS AO REGIME DE SUBSTITUI��O TRIBUT�RIA','' ) ;
INSERT_CFOP( '6401','Venda de produ��o do estabelecimento quando o produto estiver sujeito ao regime de substitui��o tribut�ria',
                    'Venda de produto industrializado ou produzido no estabelecimento, quando o produto estiver sujeito ao regime de substitui��o tribut�ria, '
                   +'bem como a venda de produto industrializado por estabelecimento industrial ou rural de cooperativa, quando o produto estiver sujeito ao referido regime.' ) ;
INSERT_CFOP( '6402','Venda de produ��o do estabelecimento de produto sujeito ao regime de substitui��o tribut�ria, em opera��o entre contribuintes substitutos do mesmo produto','Classificam-se neste c�digo as vendas de produtos sujeitos ao regime de substitui��o tribut�ria industrializados no estabelecimento, em opera��es entre contribuintes substitutos do mesmo produto.' ) ;
INSERT_CFOP( '6403','Venda de mercadoria adquirida ou recebida de terceiros em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria, na condi��o de contribuinte substituto','Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros, na condi��o de contribuinte substituto, em opera��o com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6404','Venda de mercadoria sujeita ao regime de substitui��o tribut�ria, cujo imposto j� tenha sido retido anteriormente','Classificam-se neste c�digo as vendas de mercadorias sujeitas ao regime de substitui��o tribut�ria, na condi��o de substituto tribut�rio, exclusivamente nas hip�teses em que o imposto j� tenha sido retido anteriormente.' ) ;
INSERT_CFOP( '6408','Transfer�ncia de produ��o do estabelecimento quando o produto estiver sujeito ao regime de substitui��o tribut�ria','Transfer�ncia de produto industrializado ou produzido no estabelecimento, para outro estabelecimento da mesma empresa, quando o produto estiver sujeito ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6409','Transfer�ncia de mercadoria adquirida ou recebida de terceiros, sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as transfer�ncias para outro estabelecimento da mesma empresa, de mercadorias adquiridas ou recebidas de terceiros '
                    +'que n�o tenham sido objeto de qualquer processo industrial no estabelecimento, em opera��es com mercadorias sujeitas ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6410','Devolu��o de compra para industrializa��o ou ptrodu��o rural quando a mercadoria sujeita ao regime de substitui��o tribut�ria','Devolu��o de mercadoria adquirida para ser utilizada em processo de industrializa��o ou produ��o rural, cuja entrada tenha sido classificada como "Compra para industrializa��o ou produ��o rural de mercadoria sujeita ao regime de substitui��o tribut�ria". ' ) ;
INSERT_CFOP( '6411','Devolu��o de compra para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para serem comercializadas, cujas entradas tenham sido classificadas como Compra para comercializa��o em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6412','Devolu��o de bem do ativo imobilizado, em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as devolu��es de bens adquiridos para integrar o ativo imobilizado do estabelecimento, '
                    +'cuja entrada tenha sido classificada no c�digo 2.406 - Compra de bem para o ativo imobilizado cuja mercadoria est� '
                    +'sujeita ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6413','Devolu��o de mercadoria destinada ao uso ou consumo, em opera��o com mercadoria sujeita ao regime de substitui��o tribut�ria',
                    'Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para uso ou consumo do estabelecimento, cuja entrada tenha sido classificada '
                   +'no c�digo 2.407 - Compra de mercadoria para uso ou consumo cuja mercadoria est� sujeita ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6414','Remessa de produ��o do estabelecimento para venda fora do estabelecimento, quando o produto estiver sujeito ao regime de substitui��o tribut�ria','Remessa de produto industrializado ou produzido pelo estabelecimento para ser vendido fora do estabelecimento, inclusive por meio de ve�culo, quando o mencionado produto estiver sujeito ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6415','Remessa de mercadoria adquirida ou recebida de terceiros para venda fora do estabelecimento, quando a referida ra��o com mercadoria sujeita ao regime de substitui��o tribut�ria','Remessa de mercadoria adquirida ou recebida de terceiro para serem vendida fora do estabelecimento, inclusive por meio de ve�culo, quando a referida mercadorias estiver sujeita ao regime de substitui��o tribut�ria.' ) ;
INSERT_CFOP( '6500','REMESSAS COM FIM ESPEC�FICO DE EXPORTA��O E EVENTUAIS DEVOLU��ES','' ) ;
INSERT_CFOP( '6501','Remessa de produ��o do estabelecimento, com fim espec�fico de exporta��o','Sa�da de produto industrializado ou produzido pelo estabelecimento, remetido com fim espec�fico de exporta��o a "trading company", empresa comercial exportadora ou outro estabelecimento do remetente. ' ) ;
INSERT_CFOP( '6502','Remessa de mercadoria adquirida ou recebida de terceiros, com fim espec�fico de exporta��o','Classificam-se neste c�digo as sa�das de mercadorias adquiridas ou recebidas de terceiros, remetidas com fim espec�fico de exporta��o a trading company, empresa comercial exportadora ou outro estabelecimento do remetente.' ) ;
INSERT_CFOP( '6503','Devolu��o de mercadoria recebida com fim espec�fico de exporta��o',
                    'Classificam-se neste c�digo as devolu��es efetuadas por trading company, empresa comercial exportadora ou outro estabelecimento do destinat�rio, '
                    +'de mercadorias recebidas com fim espec�fico de exporta��o, cujas entradas tenham sido classificadas no c�digo '
                    +'2.501 - Entrada de mercadoria recebida com fim espec�fico de exporta��o.' ) ;
INSERT_CFOP( '6504','Remessa de mercadoria para forma��o de lote de exporta��o, de produto industrializado ou produzido pelo pr�prio estabelecimento.','Remessa de mercadoria para forma��o de lote de exporta��o, de produto industrializado ou produzido pelo pr�prio estabelecimento. ' ) ;
INSERT_CFOP( '6505','Remessa de mercadoria, adquirida ou recebida de terceiros, para forma��o de lote de exporta��o.','Remessa de mercadoria, adquirida ou recebida de terceiros, para forma��o de lote de exporta��o. ' ) ;
INSERT_CFOP( '6550','OPERA��ES COM BENS DE ATIVO IMOBILIZADO E MATERIAIS PARA USO OU CONSUMO','' ) ;
INSERT_CFOP( '6551','Venda de bem do ativo imobilizado','Vendas de bem integrante do ativo imobilizado do estabelecimento. �a  partir 01.01.2004-  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6552','Transfer�ncia de bem do ativo imobilizado','Transfer�ncia de bem do ativo imobilizado para outro estabelecimento da mesma empresa. �a  partir 01.01.2004-  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6553','Devolu��o de compra de bem para o ativo imobilizado','Devolu��o de bem adquirido para integrar o ativo imobilizado do estabelecimento, cuja entrada foi classificada no c�digo 2.551 - Compra de bem para o ativo imobilizado. �a  partir 01.01.2004-  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6554','Remessa de bem do ativo imobilizado para uso fora do estabelecimento','Remessa de bem do ativo imobilizado para uso fora do estabelecimento. �a  partir 01.01.2004-  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6555','Devolu��o de bem do ativo imobilizado de terceiro, recebido para uso no estabelecimento',
                    'Sa�da em devolu��o, de bem do ativo imobilizado de terceiros, recebidos para uso no estabelecimento, cuja entrada tenha sido classificada no c�digo '
                    +'2.555 - Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento. �a  partir 01.01.2004-  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6556','Devolu��o de compra de material de uso ou consumo','Devolu��o de mercadoria destinada ao uso ou consumo do estabelecimento, cuja entrada tenha sido classificada no c�digo 2.556 - compra de material para uso ou consumo �a partir 01.01.2004-  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6557','Transfer�ncia de material de uso ou consumo','Transfer�ncia de material de uso ou consumo para outro estabelecimento da mesma empresa. �a  partir 01.01.2004-  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6600','CR�DITOS E RESSARCIMENTOS DE ICMS','' ) ;
INSERT_CFOP( '6603','Ressarcimento de ICMS retido por substitui��o tribut�ria','Classificam-se neste c�digo os lan�amentos destinados ao registro de ressarcimento de ICMS retido por substitui��o tribut�ria a contribuinte substitu�do, efetuado pelo contribuinte substituto, nas hip�teses previstas na legisla��o aplic�vel.' ) ;
INSERT_CFOP( '6650','SA�DAS DE COMBUST�VEIS, DERIVADOS OU N�O DE PETR�LEO, E LUBRIFICANTE ',' (ACR Ajuste SINIEF 9/2003 - a partir 01.01.2004) �  Decreto N� 26.174 de 26/11/2003' ) ;
INSERT_CFOP( '6651','Venda de combust�vel ou lubrificante, de produ��o do estabelecimento, destinados � industrializa��o subseq�ente',
                     'Venda de combust�vel ou lubrificante, industrializados no estabelecimento e destinados � industrializa��o do pr�prio produto, '
                     +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                     +'6.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6652','Venda de combust�vel ou lubrificante, de produ��o do estabelecimento, destinados � comercializa��o',
                    'Venda de combust�vel ou lubrificante, industrializados no estabelecimento e destinados � comercializa��o, '
                   +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                   +'6.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6653','Venda de combust�vel ou lubrificante, de produ��o do estabelecimento, destinados a consumidor ou usu�rio final ',
                    'Venda de combust�vel ou lubrificante, industrializados no estabelecimento e destinados a consumo em processo de industrializa��o de outro produto, '
                   +'� presta��o de servi�o ou a usu�rio final, inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no '
                   +'c�digo 6.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".'
                   +'(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6654','Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � industrializa��o subseq�ente ',
                    'Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � industrializa��o do pr�prio produto, '
                   +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                   +'5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6655','Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � comercializa��o',
                    'Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados � comercializa��o, '
                   +'inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado no c�digo '
                   +'5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6656','Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados a consumidor ou usu�rio final',
                    'Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados a consumo em processo de industrializa��o de outro produto, '
                   +'� presta��o de servi�o ou a usu�rio final, inclusive aquela decorrente de encomenda para entrega futura, cujo faturamento tenha sido classificado '
                   +'no c�digo 5.922 � "Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6657','Remessa de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, para venda fora do estabelecimento','Remessa de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, para ser vendidos fora do estabelecimento, inclusive por meio de ve�culos. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6658','Transfer�ncia de combust�vel ou lubrificante de produ��o do estabelecimento','Transfer�ncia de combust�vel ou lubrificante, industrializados no estabelecimento, para outro estabelecimento da mesma empresa. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6659','Transfer�ncia de combust�vel ou lubrificante adquiridos ou recebidos de terceiros','Transfer�ncia de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, para outro estabelecimento da mesma empresa. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6660','Devolu��o de compra de combust�vel ou lubrificante adquiridos para industrializa��o subseq�ente',
                    'Devolu��o de compra de combust�vel ou lubrificante, adquiridos para industrializa��o do pr�prio produto, '
                    +'cuja entrada tenha sido classificada como "Compra de combust�vel ou lubrificante para industrializa��o subseq�ente".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6661','Devolu��o de compra de combust�vel ou lubrificante adquiridos para comercializa��o','Devolu��o de compra de combust�vel ou lubrificante, adquiridos para comercializa��o, cuja entrada tenha sido classificada como "Compra de combust�vel ou lubrificante para comercializa��o".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6662','Devolu��o de compra de combust�vel ou lubrificante adquiridos por consumidor ou usu�rio final',
                    'Devolu��o de compra de combust�vel ou lubrificante, adquiridos para consumo em processo de industrializa��o de outro produto, '
                   +'na presta��o de servi�o ou por usu�rio final, cuja entrada tenha sido classificada como "Compra de combust�vel ou lubrificante por consumidor ou usu�rio final".(a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6663','Remessa para armazenagem de combust�vel ou lubrificante','Remessa para armazenagem de combust�vel ou lubrificante. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6664','Retorno de combust�vel ou lubrificante recebidos para armazenagem','Remessa, em devolu��o, de combust�vel ou lubrificante, recebidos para armazenagem. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6665','Retorno simb�lico de combust�vel ou lubrificante recebidos para armazenagem',
                    'Retorno simb�lico de combust�vel ou lubrificante, recebidos para armazenagem, '
                    +'quando a mercadoria armazenada tenha sido objeto de sa�da, a qualquer t�tulo, e n�o deva retornar ao estabelecimento depositante. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6666','Remessa, por conta e ordem de terceiros, de combust�vel ou lubrificante recebidos para armazenagem','Sa�da, por conta e ordem de terceiros, de combust�vel ou lubrificante, recebidos anteriormente para armazenagem. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '6667','Venda de combust�vel ou lubrificante a consumidor ou usu�rio final estabelecido em outra Unidade da Federa��o diferente da que ocorrer o consumo','Venda de combust�vel ou lubrificante a consumidor ou a usu�rio final, cujo abastecimento tenha sido efetuado em Unidade da Federa��o diferente do remetente e do destinat�rio. ACR Ajuste SINIEF 05/2009 � a partir de 01.07.2009)(Decreto n� 34.490/2009)' ) ;
INSERT_CFOP( '6900','OUTRAS SA�DAS DE MERCADORIAS OU PRESTA��ES DE SERVI�OS','' ) ;
INSERT_CFOP( '6901','Remessa para industrializa��o por encomenda','Classificam-se neste c�digo as remessas de insumos remetidos para industrializa��o por encomenda, a ser realizada em outra empresa ou em outro estabelecimento da mesma empresa.' ) ;
INSERT_CFOP( '6902','Retorno de mercadoria utilizada na industrializa��o por encomenda',
                    'Classificam-se neste c�digo as remessas, pelo estabelecimento industrializador, dos insumos recebidos para industrializa��o e incorporados ao produto final, '
                    +'por encomenda de outra empresa ou de outro estabelecimento da mesma empresa. O valor dos insumos nesta opera��o dever� ser igual ao valor dos insumos recebidos para industrializa��o.' ) ;
INSERT_CFOP( '6903','Retorno de mercadoria recebida para industrializa��o e n�o aplicada no referido processo','Classificam-se neste c�digo as remessas em devolu��o de insumos recebidos para industrializa��o e n�o aplicados no referido processo.' ) ;
INSERT_CFOP( '6904','Remessa para venda fora do estabelecimento','Classificam-se neste c�digo as remessas de mercadorias para venda fora do estabelecimento, inclusive por meio de ve�culos.' ) ;
INSERT_CFOP( '6905','Remessa para dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo as remessas de mercadorias para dep�sito em dep�sito fechado ou armaz�m geral.' ) ;
INSERT_CFOP( '6906','Retorno de mercadoria depositada em dep�sito fechado ou armaz�m geral','Classificam-se neste c�digo os retornos de mercadorias depositadas em dep�sito fechado ou armaz�m geral ao estabelecimento depositante.' ) ;
INSERT_CFOP( '6907','Retorno simb�lico de mercadoria depositada em dep�sito fechado ou armaz�m geral',
                    'Classificam-se neste c�digo os retornos simb�licos de mercadorias recebidas para dep�sito em dep�sito fechado ou armaz�m geral, '
                   +'quando as mercadorias depositadas tenham sido objeto de sa�da a qualquer t�tulo e que n�o devam retornar ao estabelecimento depositante.' ) ;
INSERT_CFOP( '6908','Remessa de bem por conta de contrato de comodato','Classificam-se neste c�digo as remessas de bens para o cumprimento de contrato de comodato.' ) ;
INSERT_CFOP( '6909','Retorno de bem recebido por conta de contrato de comodato','Classificam-se neste c�digo as remessas de bens em devolu��o ap�s cumprido o contrato de comodato.' ) ;
INSERT_CFOP( '6910','Remessa em bonifica��o, doa��o ou brinde','Classificam-se neste c�digo as remessas de mercadorias a t�tulo de bonifica��o, doa��o ou brinde.' ) ;
INSERT_CFOP( '6911','Remessa de amostra gr�tis','Classificam-se neste c�digo as remessas de mercadorias a t�tulo de amostra gr�tis.' ) ;
INSERT_CFOP( '6912','Remessa de mercadoria ou bem para demonstra��o','Classificam-se neste c�digo as remessas de mercadorias ou bens para demonstra��o.' ) ;
INSERT_CFOP( '6913','Retorno de mercadoria ou bem recebido para demonstra��o','Classificam-se neste c�digo as remessas em devolu��o de mercadorias ou bens recebidos para demonstra��o.' ) ;
INSERT_CFOP( '6914','Remessa de mercadoria ou bem para exposi��o ou feira','Classificam-se neste c�digo as remessas de mercadorias ou bens para exposi��o ou feira.' ) ;
INSERT_CFOP( '6915','Remessa de mercadoria ou bem para conserto ou reparo','Classificam-se neste c�digo as remessas de mercadorias ou bens para conserto ou reparo.' ) ;
INSERT_CFOP( '6916','Retorno de mercadoria ou bem recebido para conserto ou reparo','Classificam-se neste c�digo as remessas em devolu��o de mercadorias ou bens recebidos para conserto ou reparo.' ) ;
INSERT_CFOP( '6917','Remessa de mercadoria em consigna��o mercantil ou industrial','Classificam-se neste c�digo as remessas de mercadorias a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '6918','Devolu��o de mercadoria recebida em consigna��o mercantil ou industrial','Classificam-se neste c�digo as devolu��es de mercadorias recebidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '6919','Devolu��o simb�lica de mercadoria vendida ou utilizada em processo industrial, recebida anteriormente em consigna��o mercantil ou industrial','Classificam-se neste c�digo as devolu��es simb�licas de mercadorias vendidas ou utilizadas em processo industrial, que tenham sido recebidas anteriormente a t�tulo de consigna��o mercantil ou industrial.' ) ;
INSERT_CFOP( '6920','Remessa de vasilhame ou sacaria','Classificam-se neste c�digo as remessas de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '6921','Devolu��o de vasilhame ou sacaria','Classificam-se neste c�digo as sa�das por devolu��o de vasilhame ou sacaria.' ) ;
INSERT_CFOP( '6922','Lan�amento efetuado a t�tulo de simples faturamento decorrente de venda para entrega futura','Classificam-se neste c�digo os registros efetuados a t�tulo de simples faturamento decorrente de venda para entrega futura.' ) ;
INSERT_CFOP( '6923','Remessa de mercadoria por conta e ordem de terceiros, em venda � ordem ou em opera��es com armaz�m geral ou dep�sito fechado Vejamais�(NR AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009) efeitos a partir de 1� de julho de 2010� DECRETO 36.465/2011.',
                    'Classificam-se neste c�digo as sa�das correspondentes � entrega de mercadorias por conta e ordem de terceiros, '
                    +'em vendas � ordem, cuja venda ao adquirente origin�rio foi classificada nos c�digos '
                    +'�6.118 - Venda de produ��o do estabelecimento entregue ao destinat�rio por conta e ordem do adquirente origin�rio, '
                    +'em venda � ordem� ou �6.119 - Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinat�rio por conta e ordem do adquirente origin�rio, '
                    +'em venda � ordem�. ' ) ;
INSERT_CFOP( '6924','Remessa para industrializa��o por conta e ordem do adquirente da mercadoria, quando esta n�o transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as sa�das de insumos com destino a estabelecimento industrializador, para serem industrializados por conta e ordem do adquirente, '
                   +'nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente dos mesmos.' ) ;
INSERT_CFOP( '6925','Retorno de mercadoria recebida para industrializa��o por conta e ordem do adquirente da mercadoria, quando aquela n�o transitar pelo estabelecimento do adquirente',
                    'Classificam-se neste c�digo as remessas, pelo estabelecimento industrializador, dos insumos recebidos, '
                    +'por conta e ordem do adquirente, para industrializa��o e incorporados ao produto final, '
                    +'nas hip�teses em que os insumos n�o tenham transitado pelo estabelecimento do adquirente. '
                    +'O valor dos insumos nesta opera��o dever� ser igual ao valor dos insumos recebidos para industrializa��o.' ) ;
INSERT_CFOP( '6929','Lan�amento efetuado em decorr�ncia de emiss�o de documento fiscal relativo a opera��o ou presta��o tamb�m registrada em equipamento Emissor de Cupom Fiscal - ECF','Classificam-se neste c�digo os registros relativos aos documentos fiscais emitidos em opera��es ou presta��es que tamb�m tenham sido registradas em equipamento Emissor de Cupom Fiscal - ECF.' ) ;
INSERT_CFOP( '6931','Lan�amento efetuado em decorr�ncia da responsabilidade de reten��o do imposto por substitui��o tribut�ria, '
                   +'atribu�da ao remetente ou alienante da mercadoria, pelo servi�o de transporte realizado por transportador aut�nomo '
                   +'ou por transportador n�o inscrito na unidade da Federa��o onde iniciado o servi�o',
                   'Classificam-se neste c�digo exclusivamente os lan�amentos efetuados pelo remetente ou alienante da mercadoria quando lhe for atribu�da '
                   +'a responsabilidade pelo recolhimento do imposto devido pelo servi�o de transporte realizado por transportador aut�nomo '
                   +'ou por transportador n�o inscrito na unidade da Federa��o onde iniciado o servi�o.' ) ;
INSERT_CFOP( '6932','Presta��o de servi�o de transporte iniciada em unidade da Federa��o diversa daquela onde inscrito o prestador','Classificam-se neste c�digo as presta��es de servi�o de transporte que tenham sido iniciadas em unidade da Federa��o diversa daquela onde o prestador est� inscrito como contribuinte.' ) ;
INSERT_CFOP( '6933','Presta��o de servi�o tributado pelo Imposto Sobre Servi�os de Qualquer Natureza ','Presta��o de servi�o, cujo imposto�� � de compet�ncia municipal, desde que informado em nota fiscal modelo 1 ou 1-A. (ACR Ajuste SINIEF 03/2004 e Ajuste SINIEF 06/2005) (DECRETO N� 26.868/2006)' ) ;
INSERT_CFOP( '6934','Remessa simb�lica de mercadoria depositada em armaz�m geral ou dep�sito fechado- (ACR AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009) efeitos a partir de 1� de julho de 2010 � DECRETO 36.465/2011.',
                    'Remessa simb�lica de mercadoria depositada em dep�sito fechado ou armaz�m geral, '
                   +'efetuada nas situa��es em que haja a transmiss�o de propriedade com a perman�ncia da mercadoria em dep�sito ou quando a mercadoria tenha '
                   +'sido entregue pelo remetente diretamente a dep�sito fechado ou armaz�m geral. (ACR AJUSTE SINIEF 14, DE 11 DE DEZEMBRO DE 2009) '
                   +'efeitos a partir de 1� de julho de 2010� DECRETO 36.465/2011.' ) ;
INSERT_CFOP( '6949','Outra sa�da de mercadoria ou presta��o de servi�o n�o especificado','Classificam-se neste c�digo as outras sa�das de mercadorias ou presta��es de servi�os que n�o tenham sido especificados nos c�digos anteriores.' ) ;
end ;

procedure TInitCFOP.Execute_7000 ;
begin

INSERT_CFOP( '7000','SA�DAS OU PRESTA��ES DE SERVI�OS PARA O EXTERIOR','Classificam-se, neste grupo, as opera��es ou presta��es em que o destinat�rio esteja localizado em outro pa�s' ) ;
INSERT_CFOP( '7100','VENDAS DE PRODU��O PR�PRIA OU DE TERCEIROS','' ) ;
INSERT_CFOP( '7101','Venda de produ��o do estabelecimento','Venda de produto industrializado ou produzido pelo estabelecimento, bem como a de mercadoria por estabelecimento industrial ou produtor rural de cooperativa destinada a seus cooperados ou a estabelecimento de outra cooperativa. ' ) ;
INSERT_CFOP( '7102','Venda de mercadoria adquirida ou recebida de terceiros',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                   +'que n�o tenham sido objeto de qualquer processo industrial no estabelecimento. Tamb�m ser�o classificadas neste c�digo as vendas de mercadorias por estabelecimento comercial de cooperativa.' ) ;
INSERT_CFOP( '7105','Venda de produ��o do estabelecimento, que n�o deva por ele transitar','Classificam-se neste c�digo as vendas de produtos industrializados no estabelecimento, armazenados em dep�sito fechado, armaz�m geral ou outro sem que haja retorno ao estabelecimento depositante.' ) ;
INSERT_CFOP( '7106','Venda de mercadoria adquirida ou recebida de terceiros, que n�o deva por ele transitar',
                    'Classificam-se neste c�digo as vendas de mercadorias adquiridas ou recebidas de terceiros para industrializa��o ou comercializa��o, '
                   +'armazenadas em dep�sito fechado, armaz�m geral ou outro, que n�o tenham sido objeto de qualquer processo industrial no estabelecimento '
                   +'sem que haja retorno ao estabelecimento depositante. Tamb�m ser�o classificadas neste c�digo as vendas de mercadorias importadas, '
                   +'cuja sa�da ocorra do recinto alfandegado ou da reparti��o alfandeg�ria onde se processou o desembara�o aduaneiro, com destino ao '
                   +'estabelecimento do comprador, sem transitar pelo estabelecimento do importador.' ) ;
INSERT_CFOP( '7127','Venda de produ��o do estabelecimento sob o regime de drawback ','Classificam-se neste c�digo as vendas de produtos industrializados no estabelecimento sob o regime de drawback , cujas compras foram classificadas no c�digo 3.127 - Compra para industrializa��o sob o regime de drawback.' ) ;
INSERT_CFOP( '7200','DEVOLU��ES DE COMPRAS PARA INDUSTRIALIZA��O, COMERCIALIZA��O OU ANULA��ES DE VALORES','' ) ;
INSERT_CFOP( '7201','Devolu��o de compra para industrializa��o ou produ��o rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Devolu��o de mercadoria adquirida para ser utilizada em processo de industrializa��o ou produ��o rural, cuja entrada tenha sido classificada como "1.101 - Compra para industrializa��o ou produ��o rural".' ) ;
INSERT_CFOP( '7202','Devolu��o de compra para comercializa��o','Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para serem comercializadas, cujas entradas tenham sido classificadas como Compra para comercializa��o.' ) ;
INSERT_CFOP( '7205','Anula��o de valor relativo � aquisi��o de servi�o de comunica��o','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes das aquisi��es de servi�os de comunica��o.' ) ;
INSERT_CFOP( '7206','Anula��o de valor relativo a aquisi��o de servi�o de transporte','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes das aquisi��es de servi�os de transporte.' ) ;
INSERT_CFOP( '7207','Anula��o de valor relativo � compra de energia el�trica','Classificam-se neste c�digo as anula��es correspondentes a valores faturados indevidamente, decorrentes da compra de energia el�trica.' ) ;
INSERT_CFOP( '7210','Devolu��o de compra para utiliza��o na presta��o de servi�o',
                    'Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para utiliza��o na presta��o de servi�os, cujas entradas tenham sido classificadas nos c�digos �3.126 - Compra para utiliza��o na presta��o de servi�o sujeita ao ICMS� '
                   +'e �3.128 - Compra para utiliza��o na presta��o de servi�o sujeita ao ISSQN Vejamais�(AJUSTE SINIEF 4, DE 9 DE JULHO DE 2010). efeitos a partir de 1� de janeiro de 2011� DECRETO 36.465/2011.' ) ;
INSERT_CFOP( '7211','Devolu��o de compras para industrializa��o sob o regime de drawback ',
                    'Classificam-se neste c�digo as devolu��es de mercadorias adquiridas para serem utilizadas em processo de industrializa��o sob o regime de drawback e n�o utilizadas no referido processo, '
                   +'cujas entradas tenham sido classificadas no c�digo 3.127 - Compra para industrializa��o sob o regime de drawback.' ) ;
INSERT_CFOP( '7250','VENDAS DE ENERGIA EL�TRICA','' ) ;
INSERT_CFOP( '7251','Venda de energia el�trica para o exterior','Classificam-se neste c�digo as vendas de energia el�trica para o exterior.' ) ;
INSERT_CFOP( '7300','PRESTA��ES DE SERVI�OS DE COMUNICA��O','' ) ;
INSERT_CFOP( '7301','Presta��o de servi�o de comunica��o para execu��o de servi�o da mesma natureza','Classificam-se neste c�digo as presta��es de servi�os de comunica��o destinados �s presta��es de servi�os da mesma natureza.' ) ;
INSERT_CFOP( '7300','PRESTA��ES DE SERVI�OS DE COMUNICA��O','' ) ;
INSERT_CFOP( '7358','Presta��o de servi�o de transporte','Classificam-se neste c�digo as presta��es de servi�os de transporte destinado a estabelecimento no exterior.' ) ;
INSERT_CFOP( '7500','EXPORTA��O DE MERCADORIAS RECEBIDAS COM FIM ESPEC�FICO DE EXPORTA��O','' ) ;
INSERT_CFOP( '7501','Exporta��o de mercadorias recebidas com fim espec�fico de exporta��o',
                    'Classificam-se neste c�digo as exporta��es das mercadorias recebidas anteriormente com finalidade espec�fica de exporta��o, '
                   +'cujas entradas tenham sido classificadas nos c�digos 1.501 - Entrada de mercadoria recebida com fim espec�fico de exporta��o ou '
                   +'2.501 - Entrada de mercadoria recebida com fim espec�fico de exporta��o.' ) ;
INSERT_CFOP( '7550','OPERA��ES COM BENS DE ATIVO IMOBILIZADO E MATERIAIS PARA USO OU CONSUMO','' ) ;
INSERT_CFOP( '7551','Venda de bem do ativo imobilizado','Classificam-se neste c�digo as vendas de bens integrantes do ativo imobilizado do estabelecimento.' ) ;
INSERT_CFOP( '7553','Devolu��o de compra de bem para o ativo imobilizado','Classificam-se neste c�digo as devolu��es de bens adquiridos para integrar o ativo imobilizado do estabelecimento, cuja entrada foi classificada no c�digo 3.551 - Compra de bem para o ativo imobilizado.' ) ;
INSERT_CFOP( '7556','Devolu��o de compra de material de uso ou consumo','Classificam-se neste c�digo as devolu��es de mercadorias destinadas ao uso ou consumo do estabelecimento, cuja entrada tenha sido classificada no c�digo 3.556 - Compra de material para uso ou consumo.' ) ;
INSERT_CFOP( '7650','SA�DAS DE COMBUST�VEIS, DERIVADOS OU N�O DE PETR�LEO, E LUBRIFICANTES ',' (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '7651','Venda de combust�vel ou lubrificante de produ��o do estabelecimento','Venda de combust�vel ou lubrificante industrializados no estabelecimento e destinados ao exterior. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '7654','Venda de combust�vel ou lubrificante adquiridos ou recebidos de terceiros','Venda de combust�vel ou lubrificante, adquiridos ou recebidos de terceiros, destinados ao exterior. (a partir 01.01.2004 -  Decreto N� 26.174 de 26/11/2003)' ) ;
INSERT_CFOP( '7667','Venda de combust�vel ou lubrificante a consumidor ou usu�rio final','Venda de combust�vel ou lubrificante a consumidor ou a usu�rio final, cuja opera��o tenha sido equiparada a uma exporta��o. ACR Ajuste SINIEF 05/2009 � a partir de 01.07.2009)(Decreto n� 34.490/2009)' ) ;
INSERT_CFOP( '7900','OUTRAS SAIDAS DE MERCADORIA OU PRESTA��ES DE SERVI�OS','' ) ;
INSERT_CFOP( '7930','Lan�amento efetuado a t�tulo de devolu��o de bem cuja entrada tenha ocorrido sob amparo de regime especial aduaneiro de admiss�o tempor�ria','Classificam-se neste c�digo os lan�amentos efetuados a t�tulo de sa�da em devolu��o de bens cuja entrada tenha ocorrido sob amparo de regime especial aduaneiro de admiss�o tempor�ria.' ) ;
INSERT_CFOP( '7949','Outra sa�da de mercadoria ou presta��o de servi�o n�o especificado','Classificam-se neste c�digo as outras sa�das de mercadorias ou presta��es de servi�os que n�o tenham sido especificados nos c�digos anteriores.' ) ;

end ;

end.
