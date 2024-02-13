VERSION 5.00
Begin VB.MDIForm MDIPersonas 
   BackColor       =   &H80000002&
   Caption         =   "Personas"
   ClientHeight    =   9570
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   11775
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu CargarPersonas 
      Caption         =   "&Cargar"
   End
   Begin VB.Menu LeerPersonas 
      Caption         =   "&Leer"
   End
   Begin VB.Menu VerPersonas 
      Caption         =   "&Resultados"
   End
End
Attribute VB_Name = "MDIPersonas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CargarPersonas_Click()
    CargaPersonas.Show
End Sub

Private Sub LeerPersonas_Click()
    LecturaPersonas.Show
End Sub

Private Sub VerPersonas_Click()
    MuestraPersonas.Show
End Sub
