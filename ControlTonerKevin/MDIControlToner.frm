VERSION 5.00
Begin VB.MDIForm MDIControlToner 
   BackColor       =   &H80000002&
   Caption         =   "Control Toner"
   ClientHeight    =   12585
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   18165
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu GuardarToner 
      Caption         =   "&Guardar"
   End
   Begin VB.Menu LeerToner 
      Caption         =   "&Leer"
   End
   Begin VB.Menu StockToner 
      Caption         =   "&Faltante"
   End
   Begin VB.Menu Salir 
      Caption         =   "&Salir"
   End
End
Attribute VB_Name = "MDIControlToner"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub GuardarToner_Click()
    GrabarToner.Show
End Sub

Private Sub LeerToner_Click()
    LecturaToner.Show
End Sub

Private Sub StockToner_Click()
    FaltanteToner.Show
End Sub

Private Sub Salir_Click()
    End
End Sub
