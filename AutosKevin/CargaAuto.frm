VERSION 5.00
Begin VB.Form CargaAuto 
   BackColor       =   &H80000003&
   Caption         =   "Carga de datos"
   ClientHeight    =   9225
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7245
   HasDC           =   0   'False
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9225
   ScaleWidth      =   7245
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
      Left            =   2760
      TabIndex        =   5
      Top             =   7800
      Width           =   1695
   End
   Begin VB.ComboBox cmbMarca 
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
      Left            =   3360
      TabIndex        =   1
      Text            =   "Seleccionar marca"
      Top             =   4680
      Width           =   2415
   End
   Begin VB.CommandButton btnSalir 
      Caption         =   "&Salir"
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
      Left            =   4920
      TabIndex        =   6
      Top             =   7800
      Width           =   1695
   End
   Begin VB.CommandButton btnAceptar 
      Caption         =   "&Aceptar"
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
      Left            =   600
      TabIndex        =   4
      Top             =   7800
      Width           =   1695
   End
   Begin VB.TextBox txtPrecio 
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
      Height          =   420
      Left            =   3360
      MaxLength       =   6
      TabIndex        =   3
      Top             =   6360
      Width           =   1815
   End
   Begin VB.TextBox txtModelo 
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
      Left            =   3360
      MaxLength       =   25
      TabIndex        =   2
      Top             =   5520
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
      Height          =   420
      Left            =   3360
      MaxLength       =   4
      TabIndex        =   0
      Top             =   3840
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   2640
      Picture         =   "CargaAuto.frx":0000
      Top             =   840
      Width           =   1920
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000003&
      Caption         =   "Precio:"
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
      Left            =   2520
      TabIndex        =   10
      Top             =   6480
      Width           =   735
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000003&
      Caption         =   "Modelo:"
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
      Left            =   2400
      TabIndex        =   9
      Top             =   5640
      Width           =   855
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000003&
      Caption         =   "Marca:"
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
      Left            =   2520
      TabIndex        =   8
      Top             =   4800
      Width           =   735
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000003&
      Caption         =   "Número de auto:"
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
      Left            =   1440
      TabIndex        =   7
      Top             =   3960
      Width           =   1815
   End
End
Attribute VB_Name = "CargaAuto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim num_auto As Integer
Dim mar_auto As Integer
Dim mod_auto As String
Dim pre_auto As Double
Dim marca

Sub LIMPIAR()
    txtNum.Text = ""
    cmbMarca.Text = ""
    txtModelo.Text = ""
    txtPrecio.Text = ""
    cmbMarca.Enabled = False
    cmbMarca.Text = "Seleccionar marca"
    txtModelo.Enabled = False
    txtPrecio.Enabled = False
    txtNum.SetFocus
End Sub

Private Sub btnAceptar_Click()
    num_auto = Val(txtNum.Text)
    mar_auto = marca
    mod_auto = txtModelo.Text
    pre_auto = Val(txtPrecio.Text)
    
    Write #1, num_auto, mar_auto, mod_auto, pre_auto
    
    msg = MsgBox("Desea seguir la carga?", vbYesNo, "Atencion")
    
    If msg = 6 Then
        LIMPIAR
        txtNum.SetFocus
    Else
        btnSalir.Enabled = True
        btnSalir.SetFocus
    End If
End Sub

Private Sub btnLimpiar_Click()
    LIMPIAR
End Sub

Private Sub btnSalir_Click()
    Close #1
    Unload Me
End Sub

Private Sub Form_Load()
    Me.Height = 9810
    Me.Width = 7485
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
        
    cmbMarca.AddItem "1 - CHEVROLET"
    cmbMarca.AddItem "2 - FORD"
    cmbMarca.AddItem "3 - RENAULT"
    cmbMarca.AddItem "4 - TOYOTA"
    cmbMarca.AddItem "5 - MERCEDES"
    
    Open "autos.dat" For Output As #1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
End Sub

Private Sub txtPrecio_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtPrecio.Text) = 0 Or txtPrecio.Text = "" Then
            txtPrecio.SetFocus
        Else
            txtPrecio.Text = txtPrecio.Text
            btnAceptar.Enabled = True
            btnAceptar.SetFocus
        End If
    End If
End Sub

Private Sub txtModelo_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If txtModelo.Text = "" Then
            txtModelo.SetFocus
        Else
            txtModelo.Text = UCase(txtModelo.Text)
            txtPrecio.Enabled = True
            txtPrecio.SetFocus
        End If
    End If
End Sub

Private Sub cmbMarca_Click()
    If IsNumeric(cmbMarca.Text) Or cmbMarca.Text = "" Then
        cmbMarca.SetFocus
    Else
        txtModelo.Enabled = True
        txtModelo.SetFocus
        marca = Mid(cmbMarca.Text, 1, 1)
    End If
End Sub

Private Sub txtNum_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtNum.Text) = 0 Or txtNum.Text = "" Then
            txtNum.SetFocus
        Else
            cmbMarca.Enabled = True
            cmbMarca.SetFocus
            btnLimpiar.Enabled = True
        End If
    End If
End Sub
