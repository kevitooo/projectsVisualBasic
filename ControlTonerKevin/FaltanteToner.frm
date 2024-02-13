VERSION 5.00
Begin VB.Form FaltanteToner 
   BackColor       =   &H80000003&
   Caption         =   "FaltanteToner"
   ClientHeight    =   4470
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7965
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   4470
   ScaleWidth      =   7965
   Begin VB.CommandButton btnSalir 
      Caption         =   "&Salir"
      Height          =   735
      Left            =   4440
      TabIndex        =   1
      Top             =   2040
      Width           =   2295
   End
   Begin VB.CommandButton btnComienzo 
      Caption         =   "&Comienzo"
      Height          =   735
      Left            =   1440
      TabIndex        =   0
      Top             =   2040
      Width           =   2295
   End
   Begin VB.Label lblFin 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3360
      TabIndex        =   2
      Top             =   480
      Width           =   1815
   End
End
Attribute VB_Name = "FaltanteToner"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cod_ton As Integer
Dim marca_ton As String
Dim modelo_ton As String
Dim cant_ton As Integer
Dim precio_ton As Integer

Dim cod_tonF As Integer
Dim marca_tonF As String
Dim modelo_tonF As String
Dim cant_tonF As Integer
Dim precio_tonF As Integer

Private Sub btnComienzo_Click()
    Do Until EOF(1)
        Input #1, cod_ton, marca_ton, modelo_ton, cant_ton, precio_ton
        
        If cant_ton < 5 Then
            cod_tonF = cod_ton
            marca_tonF = marca_ton
            modelo_tonF = modelo_ton
            cant_tonF = cant_ton
            precio_tonF = precio_ton
            
            Write #2, cod_tonF, marca_tonF, modelo_tonF, cant_tonF, precio_tonF
        End If
    Loop
        lblFin.Visible = True
        lblFin.Caption = "Fin proceso"
        btnSalir.Enabled = True
        btnSalir.SetFocus
        btnComienzo.Enabled = False
End Sub

Private Sub btnSalir_Click()
    Close #1
    Close #2
    Unload Me
End Sub

Private Sub Form_Load()
    Open "toner.dat" For Input As #1
    Open "faltante.dat" For Output As #2
End Sub
