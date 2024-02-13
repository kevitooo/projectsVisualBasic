VERSION 5.00
Begin VB.Form TotalesVentas 
   BackColor       =   &H80000005&
   Caption         =   "Totales"
   ClientHeight    =   10890
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6990
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   10890
   ScaleWidth      =   6990
   Begin VB.CommandButton btnTotal 
      Caption         =   "&Total"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2520
      TabIndex        =   0
      Top             =   9480
      Width           =   1935
   End
   Begin VB.Label lblRub5 
      BackColor       =   &H80000005&
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
      Left            =   3840
      TabIndex        =   12
      Top             =   8400
      Width           =   2175
   End
   Begin VB.Label Label9 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000005&
      Caption         =   "Total vendido en rubro general:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   11
      Top             =   8160
      Width           =   3015
   End
   Begin VB.Label lblRub4 
      BackColor       =   &H80000005&
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
      Left            =   3840
      TabIndex        =   10
      Top             =   7320
      Width           =   2175
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000005&
      Caption         =   "Total vendido en rubro limpieza:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   9
      Top             =   7080
      Width           =   3015
   End
   Begin VB.Label lblRub3 
      BackColor       =   &H80000005&
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
      Left            =   3840
      TabIndex        =   8
      Top             =   6240
      Width           =   2175
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000005&
      Caption         =   "Total vendido en rubro verduras:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   7
      Top             =   6000
      Width           =   3015
   End
   Begin VB.Label lblRub2 
      BackColor       =   &H80000005&
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
      Left            =   3840
      TabIndex        =   6
      Top             =   5160
      Width           =   2175
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000005&
      Caption         =   "Total vendido en rubro fiambres:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   5
      Top             =   4920
      Width           =   3015
   End
   Begin VB.Label lblRub1 
      BackColor       =   &H80000005&
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
      Left            =   3840
      TabIndex        =   4
      Top             =   4080
      Width           =   2175
   End
   Begin VB.Label lbl 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000005&
      Caption         =   "Total vendido en rubro comestibles:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   3
      Top             =   3840
      Width           =   3015
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   2520
      Picture         =   "TotalesVentas.frx":0000
      Top             =   600
      Width           =   1920
   End
   Begin VB.Label lblTotGen 
      BackColor       =   &H80000005&
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
      Left            =   4080
      TabIndex        =   2
      Top             =   3000
      Width           =   2175
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000005&
      Caption         =   "Total vendido en general:"
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
      Left            =   720
      TabIndex        =   1
      Top             =   3000
      Width           =   3255
   End
End
Attribute VB_Name = "TotalesVentas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Nro_tic_ven As Integer
Dim Imp_tic_ven As Double
Dim Sec_tic_ven As Integer
Dim Rub_tic_ven As Integer
Dim TotalGeneral As Double

Private Sub btnTotal_Click()
    Open "ventas.dat" For Input As #1
    TotalGeneral = 0
    Do Until EOF(1)
        Input #1, Nro_tic_ven, Imp_tic_ven, Sec_tic_ven, Rub_tic_ven
        TotalGeneral = TotalGeneral + Imp_tic_ven
        Select Case Rub_tic_ven
        Case 1
        lblRub1.Caption = Format(Imp_tic_ven, "$####0.00")
        Case 2
        lblRub2.Caption = Format(Imp_tic_ven, "$####0.00")
        Case 3
        lblRub3.Caption = Format(Imp_tic_ven, "$####0.00")
        Case 4
        lblRub4.Caption = Format(Imp_tic_ven, "$####0.00")
        Case 5
        lblRub5.Caption = Format(Imp_tic_ven, "$####0.00")
        End Select
    Loop
    lblTotGen.Caption = Format(TotalGeneral, "$####0.00")
    btnTotal.Enabled = False
    Close #1
End Sub

Private Sub Form_Load()
    Me.Height = 11475
    Me.Width = 7230
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
    Unload Me
End Sub
