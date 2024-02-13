VERSION 5.00
Begin VB.MDIForm MDIVentas 
   BackColor       =   &H80000002&
   Caption         =   "Ventas"
   ClientHeight    =   4320
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   6570
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu CargaDeVentas 
      Caption         =   "&Cargar"
   End
   Begin VB.Menu LecturaDeVentas 
      Caption         =   "&Leer"
   End
   Begin VB.Menu DividirVentas 
      Caption         =   "&Dividir"
   End
   Begin VB.Menu TotalVentas 
      Caption         =   "&Totales"
   End
End
Attribute VB_Name = "MDIVentas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CargaDeVentas_Click()
    CargaVentas.Show
End Sub

Private Sub DividirVentas_Click()
    DivideVentas.Show
End Sub

Private Sub LecturaDeVentas_Click()
    LecturaVentas.Show
End Sub

Private Sub MDIForm_Load()

End Sub

Private Sub TotalVentas_Click()
    TotalesVentas.Show
End Sub
