VERSION 5.00
Begin VB.Form LecturaVentas 
   BackColor       =   &H80000005&
   Caption         =   "Leer ventas"
   ClientHeight    =   8520
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6225
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8520
   ScaleWidth      =   6225
   Begin VB.TextBox txtNum 
      Alignment       =   1  'Right Justify
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   2400
      TabIndex        =   4
      Top             =   3840
      Width           =   1815
   End
   Begin VB.TextBox txtImporte 
      Alignment       =   1  'Right Justify
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   3360
      TabIndex        =   3
      Top             =   4560
      Width           =   1815
   End
   Begin VB.ComboBox cmbSeccion 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   2160
      TabIndex        =   2
      Top             =   5280
      Width           =   2535
   End
   Begin VB.ComboBox cmbRubro 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   2040
      TabIndex        =   1
      Top             =   6000
      Width           =   2295
   End
   Begin VB.CommandButton btnLeer 
      Caption         =   "&Leer"
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
      Left            =   2280
      TabIndex        =   0
      Top             =   7200
      Width           =   1695
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   2160
      Picture         =   "LecturaVentas.frx":0000
      Top             =   720
      Width           =   1920
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000005&
      Caption         =   "Nro Ticket:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   8
      Top             =   3960
      Width           =   1215
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000005&
      Caption         =   "Importe de la venta:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   7
      Top             =   4680
      Width           =   2175
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000005&
      Caption         =   "Sección:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   6
      Top             =   5400
      Width           =   975
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000005&
      Caption         =   "Rubro:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   5
      Top             =   6120
      Width           =   855
   End
End
Attribute VB_Name = "LecturaVentas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Nro_tic_ven As Integer
Dim Imp_tic_ven As Double
Dim Sec_tic_ven As Integer
Dim Rub_tic_ven As Integer

Private Sub btnLeer_Click()
    Open "ventas.dat" For Input As #1
    Do Until EOF(1)
        Input #1, Nro_tic_ven, Imp_tic_ven, Sec_tic_ven, Rub_tic_ven
        Select Case Sec_tic_ven
        Case 1
        seccion = "1 - Mayorista"
        Case 2
        seccion = "2 - Minorista"
        Case 3
        seccion = "3 - Otro"
        End Select
        
        Select Case Rub_tic_ven
        Case 1
        Rubro = "1 - Comestibles"
        Case 2
        Rubro = "2 - Fiambres"
        Case 3
        Rubro = "3 - Verduras"
        Case 4
        Rubro = "4 - Limpieza"
        Case 5
        Rubro = "5 - General"
        End Select
        
        txtNum.Text = Nro_tic_ven
        txtImporte.Text = Format(Imp_tic_ven, "$###,##0.00")
        cmbSeccion.Text = seccion
        cmbRubro.Text = Rubro
    Loop
    msg = MsgBox("Fin de los registros cargados", vbOKOnly, "Atención")
    btnLeer.Enabled = False
    Close #1
End Sub

Private Sub Form_Load()
    Me.Height = 9105
    Me.Width = 6465
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
    Unload Me
End Sub
