#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

User Function TELA1()

    Private cGCod      := Space(5)
    Private cGEndereco := Space(20)
    Private cGNome     := Space(10)

    // Array de armazenamento
    Private aDados := {}

    SetPrvt("oDlg1","oSCod","oSNome","oSEndereco","oGCod","oGNome","oGEndereco","oBIncluir","oBMostraTodos")

    // Tela principal
    oDlg1      := MSDialog():New( 092,232,274,927,"CRUD - ADVPL",,,.F.,,,,,,.T.,,,.T. )

    // Rotulos dos campos
    oSCod      := TSay():New( 008,012,{||"Código"},oDlg1,,,.F.,.F.,.F.,.T.,CLR_BLACK,CLR_WHITE,032,008)
    oSNome     := TSay():New( 008,076,{||"Nome"},oDlg1,,,.F.,.F.,.F.,.T.,CLR_BLACK,CLR_WHITE,032,008)
    oSEndereco := TSay():New( 008,139,{||"Endereço"},oDlg1,,,.F.,.F.,.F.,.T.,CLR_BLACK,CLR_WHITE,032,008)

    // Gets para recepcao dos valores
    oGCod      := TGet():New( 020,012,{|u| If(PCount()>0,cGCod:=u,cGCod)},oDlg1,060,008,'',,CLR_BLACK,CLR_WHITE,,,,.T.,"",,,.F.,.F.,,.F.,.F.,"","cGCod",,)
    oGNome     := TGet():New( 020,076,{|u| If(PCount()>0,cGNome:=u,cGNome)},oDlg1,060,008,'',,CLR_BLACK,CLR_WHITE,,,,.T.,"",,,.F.,.F.,,.F.,.F.,"","cGNome",,)
    oGEndereco := TGet():New( 020,139,{|u| If(PCount()>0,cGEndereco:=u,cGEndereco)},oDlg1,060,008,'',,CLR_BLACK,CLR_WHITE,,,,.T.,"",,,.F.,.F.,,.F.,.F.,"","cGEndereco",,)

    // Botoes para interacao
    oBIncluir  := TButton():New( 018,208,"Incluir",oDlg1,,037,012,,,,.T.,,"",,,,.F. )
    oBMostraTo := TButton():New( 064,012,"Mostrar todos",oDlg1,,037,012,,,,.T.,,"",,,,.F. )

    oDlg1:Activate(,,,.T.)

Return

Static Function fInclui(cCod, cNome, cEndereco)

    If Empty(Alltrim(cCod)) .Or. Empty(Alltrim(cNome)) .Or. Empty(Alltrim(cEndereco))
        Alert("Existem campos vazios! Favor preencher!", "ATENÇÃO") 
    Else
        Aadd(aDados, {cCod, cNome, cEndereco})
        MsgInfo("Inclusao feita com sucesso!", "AVISO")
    EndIf

Return
