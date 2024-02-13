VERSION 5.00
Begin VB.MDIForm MDIAuto 
   BackColor       =   &H80000014&
   Caption         =   "Proyecto Autos"
   ClientHeight    =   3015
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   4560
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu C 
      Caption         =   "Carga"
   End
   Begin VB.Menu B 
      Caption         =   "Busqueda"
   End
   Begin VB.Menu P 
      Caption         =   "Preguntar"
   End
   Begin VB.Menu PM 
      Caption         =   "Precio Medio"
   End
End
Attribute VB_Name = "MDIAuto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub B_Click()
    BusquedaAuto.Show
End Sub

Private Sub C_Click()
    CargaAuto.Show
End Sub

Private Sub P_Click()
    PreguntarAuto.Show
End Sub

Private Sub PM_Click()
    PMAuto.Show
End Sub
