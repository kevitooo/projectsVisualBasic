VERSION 5.00
Begin VB.Form CargaVentas 
   BackColor       =   &H80000005&
   Caption         =   "Cargar ventas"
   ClientHeight    =   8940
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8265
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8940
   ScaleWidth      =   8265
   Begin VB.CommandButton btnLimpiar 
      Caption         =   "&Limpiar"
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
      Height          =   615
      Left            =   4440
      TabIndex        =   9
      Top             =   7200
      Width           =   1695
   End
   Begin VB.CommandButton btnGuardar 
      Caption         =   "&Guardar"
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
      Height          =   615
      Left            =   2160
      TabIndex        =   8
      Top             =   7200
      Width           =   1695
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
      Left            =   3120
      TabIndex        =   3
      Text            =   "Seleccionar rubro"
      Top             =   6000
      Width           =   2295
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
      Left            =   3240
      TabIndex        =   2
      Text            =   "Seleccionar sección"
      Top             =   5280
      Width           =   2535
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
      Left            =   4440
      TabIndex        =   1
      Top             =   4560
      Width           =   1815
   End
   Begin VB.TextBox txtNum 
      Alignment       =   1  'Right Justify
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
      Left            =   3480
      TabIndex        =   0
      Top             =   3840
      Width           =   1815
   End
   Begin VB.Image Image1 
      Height          =   1725
      Left            =   3120
      Picture         =   "CargaVentas.frx":0000
      Top             =   960
      Width           =   1920
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
      Left            =   2160
      TabIndex        =   7
      Top             =   6120
      Width           =   855
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
      Left            =   2160
      TabIndex        =   6
      Top             =   5400
      Width           =   975
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
      Left            =   2160
      TabIndex        =   5
      Top             =   4680
      Width           =   2175
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
      Left            =   2160
      TabIndex        =   4
      Top             =   3960
      Width           =   1215
   End
End
Attribute VB_Name = "CargaVentas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Nro_tic_ven As Integer
Dim Imp_tic_ven As Double
Dim Sec_tic_ven As Integer
Dim Rub_tic_ven As Integer

Sub Limpiar()
    txtNum.SetFocus
    txtNum.Text = ""
    txtImporte.Text = ""
    cmbSeccion.Text = ""
    cmbRubro.Text = ""
    txtImporte.Enabled = False
    btnGuardar.Enabled = False
    btnLimpiar.Enabled = False
    cmbSeccion.Enabled = False
    cmbRubro.Enabled = False
    cmbSeccion.Text = "Seleccionar sección"
    cmbRubro.Text = "Seleccionar rubro"
End Sub

Private Sub btnGuardar_Click()
    Nro_tic_ven = Val(txtNum.Text)
    Imp_tic_ven = Format(txtImporte.Text, "###,##0.00")
    Sec_tic_ven = Mid(cmbSeccion.Text, 1, 1)
    Rub_tic_ven = Mid(cmbRubro.Text, 1, 1)
    
    Write #1, Nro_tic_ven, Imp_tic_ven, Sec_tic_ven, Rub_tic_ven
    
    msg = MsgBox("Venta cargada exitosamente.", vbOKOnly, "Atención")
    
    Limpiar
End Sub

Private Sub btnLimpiar_Click()
    Limpiar
End Sub

Private Sub Form_Load()
    Me.Height = 9525
    Me.Width = 8505
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
    
    Open "ventas.dat" For Output As #1
    
    cmbSeccion.AddItem "1 - Mayorista"
    cmbSeccion.AddItem "2 - Minorista"
    cmbSeccion.AddItem "3 - Otro"
    
    cmbRubro.AddItem "1 - Comestibles"
    cmbRubro.AddItem "2 - Fiambres"
    cmbRubro.AddItem "3 - Verduras"
    cmbRubro.AddItem "4 - Limpieza"
    cmbRubro.AddItem "5 - General"
End Sub

Private Sub cmbRubro_Click()
    If IsNumeric(cmbSeccion.Text) Or cmbSeccion.Text = "" Then
        cmbRubro.SetFocus
    Else
        btnGuardar.Enabled = True
        btnGuardar.SetFocus
    End If
End Sub

Private Sub cmbSeccion_Click()
    If IsNumeric(cmbSeccion.Text) Or cmbSeccion.Text = "" Then
        cmbSeccion.SetFocus
    Else
        cmbRubro.Enabled = True
        cmbRubro.SetFocus
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
    Unload Me
End Sub

Private Sub txtImporte_keypress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtImporte.Text) = 0 Or txtImporte = "" Then
            txtImporte.SetFocus
        Else
            cmbSeccion.Enabled = True
            cmbSeccion.SetFocus
            btnLimpiar.Enabled = True
        End If
    End If
End Sub

Private Sub txtNum_keypress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtNum.Text) < 0 Then
            txtNum.SetFocus
        Else
            If Val(txtNum.Text) = 999999 Then
                btnSalir.Enabled = True
                btnSalir.SetFocus
                Exit Sub
            End If
            txtImporte.Enabled = True
            txtImporte.SetFocus
            btnLimpiar.Enabled = True
        End If
    End If
End Sub
