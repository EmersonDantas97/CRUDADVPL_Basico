#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

User Function TELA2()

Private cGCodigo   := Space(1)
Private cGEndereco := Space(1)
Private cGNome     := Space(1)

Private cSCodigo   := Space(1)
Private cSEndereco := Space(1)
Private cSNome     := Space(1)

SetPrvt("oDlg1","oSCodigo","oSNome","oSEndereco","oGCodigo","oGNome","oGEndereco","oBIncluir","oBBuscarRegistros")
SetPrvt("oBtn4","oBExcluir")

oDlg1      := MSDialog():New( 092,232,586,800,"CRUD - ADVPL",,,.F.,,,,,,.T.,,,.T. )

oSCodigo   := TSay():New( 007,008,{||"Codigo"},oDlg1,,,.F.,.F.,.F.,.T.,CLR_BLACK,CLR_WHITE,032,008)
oSNome     := TSay():New( 007,053,{||"Nome"},oDlg1,,,.F.,.F.,.F.,.T.,CLR_BLACK,CLR_WHITE,032,008)
oSEndereco := TSay():New( 007,169,{||"Endereco"},oDlg1,,,.F.,.F.,.F.,.T.,CLR_BLACK,CLR_WHITE,032,008)
oGCodigo   := TGet():New( 016,008,{|u| If(PCount()>0,cGCodigo:=u,cGCodigo)},oDlg1,044,008,'',,CLR_BLACK,CLR_WHITE,,,,.T.,"",,,.F.,.F.,,.F.,.F.,"","cGCodigo",,)
oGNome     := TGet():New( 016,053,{|u| If(PCount()>0,cGNome:=u,cGNome)},oDlg1,115,008,'',,CLR_BLACK,CLR_WHITE,,,,.T.,"",,,.F.,.F.,,.F.,.F.,"","cGNome",,)
oGEndereco := TGet():New( 016,169,{|u| If(PCount()>0,cGEndereco:=u,cGEndereco)},oDlg1,106,008,'',,CLR_BLACK,CLR_WHITE,,,,.T.,"",,,.F.,.F.,,.F.,.F.,"","cGEndereco",,)
oBIncluir  := TButton():New( 032,008,"Incluir",oDlg1,,052,012,,,,.T.,,"",,,,.F. )
oBBuscarRe := TButton():New( 032,061,"Buscar registro",oDlg1,,052,012,,,,.T.,,"",,,,.F. )
oBAlterar  := TButton():New( 032,115,"Mostrar todos",oDlg1,,052,012,,,,.T.,,"",,,,.F. )
oBtn4      := TButton():New( 032,168,"Alterar",oDlg1,,052,012,,,,.T.,,"",,,,.F. )
oBExcluir  := TButton():New( 032,222,"Excluir",oDlg1,,052,012,,,,.T.,,"",,,,.F. )

oDlg1:Activate(,,,.T.)

Return
