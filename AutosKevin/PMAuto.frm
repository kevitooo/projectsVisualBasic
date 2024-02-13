VERSION 5.00
Begin VB.Form PMAuto 
   BackColor       =   &H80000003&
   Caption         =   "Precio medio de los vehículos"
   ClientHeight    =   5835
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6570
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5835
   ScaleWidth      =   6570
   Begin VB.CommandButton btnCalcular 
      Caption         =   "Calcular precio medio"
      Height          =   735
      Left            =   1680
      TabIndex        =   0
      Top             =   3000
      Width           =   3255
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   2400
      Picture         =   "PMAuto.frx":0000
      Top             =   480
      Width           =   1920
   End
   Begin VB.Label lblPreMed 
      Alignment       =   2  'Center
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
      Height          =   495
      Left            =   1680
      TabIndex        =   1
      Top             =   4560
      Width           =   3255
   End
End
Attribute VB_Name = "PMAuto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim num_auto As Integer
Dim mar_auto As Integer
Dim mod_auto As String
Dim pre_auto As Double
Dim cantAutos As Integer
Dim auxPreTotal As Double

Private Sub btnCalcular_Click()
    Open "autos.dat" For Input As #1
    
    cantAutos = 0
    auxPreTotal = 0
    Do Until EOF(1)
        Input #1, num_auto, mar_auto, mod_auto, pre_auto
        auxPreTotal = auxPreTotal + pre_auto
        cantAutos = cantAutos + 1
    Loop
    Close #1
    
    lblPreMed.Caption = auxPreTotal / cantAutos
End Sub

Private Sub Form_Load()
    Me.Height = 6420
    Me.Width = 6810
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
End Sub
