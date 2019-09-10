unit ModuleDesktopFinanceiro;

interface

uses
  WinApi.Windows, WinApi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics, VCL.Controls, VCL.Forms,
  VCL.ImgList, VCL.ActnList, VCL.StdCtrls, Tabs, DockTabSet, VirtualTrees, VCL.ExtCtrls,
  VCL.Buttons, JvExExtCtrls, JvExtComponent, JvPanel, DockedDeskTop, UFloatDeskTop,
  pngimage, System.Actions, System.ImageList, JvClock, Tc.VCL.Application;

type
  TFinDesktop = class(TModuleDesktopBase)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create ( AOwner : TComponent  ) ; override ;
  end;

implementation

uses Tc.DBRTL.AbstractDB  ;

{$R *.dfm}

{ TFloatDesktop2 }

constructor TFinDesktop.Create(AOwner: TComponent);
var
  Master, EntradaDados, Movimentacao, Estoque : PVirtualNode;
begin

  inherited;

  try
    if not Assigned ( TTcAbstractDB.GetByAlias('FINANCEIRO') ) then
      TComponentClass ( GetClass ( 'TDBFinanceiro' ) ).Create( self ) ;
    //showMessage('TDBFinanceiro = OK') ;
  except On E : Exception do
     raise Exception.Create('GetClass ( "TDBFinanceiro" ) ).Create( self ) : ' + E.Message);
  end;

  try
    if not Assigned ( TTcAbstractDB.GetByAlias('ENTIDADES') ) then
      TComponentClass ( GetClass ( 'TDBEntidades' ) ).Create( self ) ;
    //showMessage('TDBEntidades = OK') ;
  except On E : Exception do
     raise Exception.Create('GetClass ( "TDBEntidades" ) ).Create( self ) : ' + E.Message);

  end;

  FLargeImageList := ImageList3 ;
  FSmallImageList := nil ; //ImageList2 ;


  Master := AddMenuItem( nil, 'Entrada de Dados',                '' ) ;
    EntradaDados := AddMenuItem( Master, 'Recebimentos',         '' ) ;
      AddMenuItem( EntradaDados, 'Lan�amentos Completos',        'TfrmVENDAS_Pedido' ) ;
      AddMenuItem( EntradaDados, 'Lan�amentos Simplificados',    'TFIN_OutrasReceitasWizard') ;
//      AddMenuItem( EntradaDados, 'Recebimentos',                 'TFin_BaixaAReceberWizard' ) ;
      AddMenuItem( EntradaDados, 'Recebimentos',                   'TfrmFIN_DesktopRecebimentos' ) ;

    EntradaDados := AddMenuItem( Master, 'Pagamentos', '' ) ;
      AddMenuItem( EntradaDados, 'Lan�amentos Completos',        'TfrmCOMPRAS_Pedido'        ) ;
      AddMenuItem( EntradaDados, 'Lan�amentos Simplificados',    'TFIN_OutrasDespesasWizard' ) ;
      AddMenuItem( EntradaDados, 'Devolu��es',                   'TfrmDEVOLUCOES_Pedido'     ) ;
      AddMenuItem( EntradaDados, 'Pagamentos',                   'TfrmFIN_DesktopPagamentos' ) ;

//    AddMenuItem( Master, 'Devolu��es', '' ) ;
//    AddMenuItem( Master, 'Importar NFe', '' ) ;

//  Master := AddMenuItem( nil, 'Estoque',               '' ) ;
    Movimentacao := AddMenuItem( Master, 'Movimenta��o de Estoque', '' ) ;
      AddMenuItem( Movimentacao, 'Entrada de Produtos',              'TFIN_EntradaEstoqueWizard') ;
      AddMenuItem( Movimentacao, 'Sa�da de Produtos',                'TfrmFIN_DesktopSaidas' {'TFIN_SaidaEstoqueWizard'}) ;
      AddMenuItem( Movimentacao, 'Encerramento Mensal',              'TfrmFIN_FechamentoMensal' ) ;

    AddMenuItem( Master, 'Financiamentos',           'TFIN_FinanciamentosWizard' ) ;
    AddMenuItem( Master, 'Compensa��o de cheques', 'TFIN_AjustaSaldoWizard' ) ;
    AddMenuItem( Master, 'Transfer�ncia de valores', 'TfrmFIN_TransferenciaValores' ) ;


  Master := AddMenuItem( nil, 'Relat�rios',  '' ) ;
    AddMenuItem( Master, 'Fluxo de Caixa',   'TfwzFIN_FluxoCaixa2' ) ;
    AddMenuItem( Master, 'Contas a Pagar',   'TFIN_ContasAPagarReportWizard' ) ;
    AddMenuItem( Master, 'Contas a Receber', 'TFIN_ContasAReceberReportWizard' ) ;

    AddMenuItem( Master, 'Despesas e Receitas',  'TfrmFIN_DespesasReceitas' ) ;

    AddMenuItem( Master, 'Pagamentos e Recebimentos',  'TfrmFIN_PagamentosRecebimentos' ) ;

    AddMenuItem( Master, 'D.R.E. Caixa e Compet�ncia',  'TfrmFIN_DRE' ) ;

    AddMenuItem( Master, 'Cheques Emitidos',     'TFIN_ChequesReportWizard' ) ;
    AddMenuItem( Master, 'Movimenta��o banc�ria',         'TFIN_MovimentacaoContasWizard' ) ;
    AddMenuItem( Master, 'Deprecia��es',         'TEST_DepreciacoesReportWizard' ) ;
    Estoque :=  AddMenuItem( Master, 'Estoque',  '' ) ;
      AddMenuItem( Estoque, 'Balan�o',          'TEST_ProdutosInsumosReportWizard' ) ; // Estoque
      AddMenuItem( Estoque, 'Entradas',         'TEST_EntradasReportWizard' ) ;
      AddMenuItem( Estoque, 'Saidas',           'TEST_SaidasReportWizard' ) ;
      AddMenuItem( Estoque, 'Estoque m�nimo',   'TEST_CompraEstoqueMinimoReport' ) ;
//    AddMenuItem( Master, 'Fluxo de Caixa Realizado',   'TFIN_FluxoCaixaRealizadoWizard' ) ;


//    AddMenuItem( Master, 'Fluxo de Caixa',          'TfrmFIN_FluxoCaixa' ) ;
//    AddMenuItem( Master, 'Movimento de Contas',       '' ) ;
//    AddMenuItem( Master, 'Demonstrativo Mensal',      '' ) ;
//    AddMenuItem( Master, 'Fornecedores',              '' ) ;
//    AddMenuItem( Master, 'Plano de Contas',           '' ) ;
//    AddMenuItem( Master, 'Centro de Custos',          '' ) ;
//    AddMenuItem( Master, 'Patrimonio',                '' ) ;
//    AddMenuItem( Master, 'Indicadores Financeiros',   '' ) ;


  Master := AddMenuItem( nil, 'Cadastros',      '' ) ;
    AddMenuItem( Master, 'Patrim�nio',          'TFin_CadastroPatrimonioWizard'  ) ;
    AddMenuItem( Master, 'Clientes',            'TfrmCAD_Clientes'     ) ;
    AddMenuItem( Master, 'Fornecedores',        'TfrmCAD_Fornecedores' ) ;
    AddMenuItem( Master, 'Produtos / Servi�os', 'TfrmEST_Produtos'  ) ;
    AddMenuItem( Master, 'Contas',              'TfrmFIN_Contas2'      ) ;
//    AddMenuItem( Master, 'Bancos',             'TfrmFIN_Bancos'       ) ;

(*
  Master := AddMenuItem( nil, 'Configura��es', '' ) ;
    AddMenuItem( Master, 'Centro de Custos',   'TfrmFIN_CentrosCusto'  ) ;
    AddMenuItem( Master, 'Plano de Contas',    'TfrmFIN_PlanoContas2'  ) ;
*)

  Subscribe ;

end;

Initialization
   RegisterClass (  TFinDesktop ) ;
end.

