VERSION 5.00
Begin VB.Form DivideVentas 
   BackColor       =   &H80000005&
   Caption         =   "Form1"
   ClientHeight    =   4980
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6840
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   4980
   ScaleWidth      =   6840
   Begin VB.CommandButton btnVenMay 
      Caption         =   "Ventas mayoristas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   4080
      TabIndex        =   1
      Top             =   3360
      Width           =   1815
   End
   Begin VB.CommandButton btnVenMin 
      Caption         =   "Ventas minoristas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   840
      TabIndex        =   0
      Top             =   3360
      Width           =   1815
   End
   Begin VB.Image Image1 
      Height          =   1725
      Left            =   2160
      Picture         =   "DivideVentas.frx":0000
      Top             =   840
      Width           =   1920
   End
End
Attribute VB_Name = "DivideVentas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Nro_tic_ven As Integer
Dim Imp_tic_ven As Double
Dim Sec_tic_ven As Integer
Dim Rub_tic_ven As Integer
Dim Nro_min As Integer
Dim Imp_min As Double
Dim Sec_min As Integer
Dim Rub_min As Integer
Dim Nro_may As Integer
Dim Imp_may As Double
Dim Sec_may As Integer
Dim Rub_may As Integer

Private Sub btnVenMay_Click()
    Open "ventas.dat" For Input As #1
    Open "mayorista.dat" For Output As #3
    Do Until EOF(1)
        Input #1, Nro_tic_ven, Imp_tic_ven, Sec_tic_ven, Rub_tic_ven
        If Sec_tic_ven = 1 Then
            Nro_may = Nro_tic_ven
            Imp_may = Imp_tic_ven
            Sec_may = Sec_tic_ven
            Rub_may = Rub_tic_ven
            Write #3, Nro_may, Imp_may, Sec_may, Rub_may
        End If
    Loop
    msg2 = MsgBox("Se grabo registro mayorista", vbOKOnly, "Atencion")
    btnVenMay.Enabled = False
    Close #1
    Close #3
End Sub

Private Sub btnVenMin_Click()
    Open "ventas.dat" For Input As #1
    Open "minorista.dat" For Output As #2
    Do Until EOF(1)
        Input #1, Nro_tic_ven, Imp_tic_ven, Sec_tic_ven, Rub_tic_ven
        If Sec_tic_ven = 2 Then
            Nro_min = Nro_tic_ven
            Imp_min = Imp_tic_ven
            Sec_min = Sec_tic_ven
            Rub_min = Rub_tic_ven
            Write #2, Nro_min, Imp_min, Sec_min, Rub_min
        End If
    Loop
    msg = MsgBox("Se grabo registro minorista", vbOKOnly, "Atencion")
    btnVenMin.Enabled = False
    Close #1
    Close #2
End Sub

Private Sub Form_Load()
    DivideVentas.Height = 5565
    DivideVentas.Width = 7080
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = (Screen.Width - Me.Width) / 2
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Me
End Sub
