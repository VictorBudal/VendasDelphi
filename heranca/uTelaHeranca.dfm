object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O TITULO'
  ClientHeight = 633
  ClientWidth = 1073
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pgPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1073
    Height = 576
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    ExplicitTop = -6
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 1065
        Height = 81
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 32
          Top = 30
          Width = 353
          Height = 23
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua Pesquisa'
        end
        object btnPesquisar: TBitBtn
          Left = 400
          Top = 29
          Width = 121
          Height = 25
          Caption = '&PESQUISAR'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 81
        Width = 1065
        Height = 465
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodaPe: TPanel
    Left = 0
    Top = 576
    Width = 1073
    Height = 57
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 36
    ExplicitTop = 578
    object btnNovo: TBitBtn
      Left = 36
      Top = 14
      Width = 75
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 132
      Top = 14
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 228
      Top = 14
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 324
      Top = 14
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 420
      Top = 14
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 986
      Top = 14
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 501
      Top = 16
      Width = 212
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object QryListagem: TZQuery
    Connection = dtmConnection.ConnectionDB
    Params = <>
    Left = 652
    Top = 42
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 732
    Top = 42
  end
end
