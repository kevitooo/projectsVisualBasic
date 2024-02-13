VERSION 5.00
Begin VB.Form LecturaToner 
   BackColor       =   &H80000003&
   Caption         =   "Lectura Toner"
   ClientHeight    =   6735
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8130
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6735
   ScaleWidth      =   8130
   Begin VB.TextBox txtCod 
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
      Left            =   3720
      MaxLength       =   4
      TabIndex        =   7
      Top             =   1080
      Width           =   2055
   End
   Begin VB.TextBox txtCant 
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
      Left            =   3720
      MaxLength       =   4
      TabIndex        =   6
      Top             =   2925
      Width           =   2055
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
      Height          =   435
      Left            =   3720
      MaxLength       =   4
      TabIndex        =   5
      Top             =   3540
      Width           =   2055
   End
   Begin VB.CommandButton btnAceptar 
      Caption         =   "&Aceptar"
      Height          =   615
      Left            =   1200
      TabIndex        =   4
      Top             =   4740
      Width           =   1455
   End
   Begin VB.CommandButton btnCancelar 
      Caption         =   "&Cancelar"
      Enabled         =   0   'False
      Height          =   615
      Left            =   3240
      TabIndex        =   3
      Top             =   4740
      Width           =   1455
   End
   Begin VB.CommandButton btnSalir 
      Caption         =   "&Salir"
      Height          =   615
      Left            =   5280
      TabIndex        =   2
      Top             =   4740
      Width           =   1455
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
      Left            =   3720
      TabIndex        =   1
      Text            =   "Seleccionar marca"
      Top             =   1740
      Width           =   2535
   End
   Begin VB.ComboBox cmbModelo 
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
      Left            =   3720
      TabIndex        =   0
      Text            =   "Seleccionar modelo"
      Top             =   2340
      Width           =   2535
   End
   Begin VB.Label LblCod 
      BackColor       =   &H80000003&
      Caption         =   "COD DE TONER:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   12
      Top             =   1140
      Width           =   2055
   End
   Begin VB.Label LblMarca 
      BackColor       =   &H80000003&
      Caption         =   "MARCA:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   11
      Top             =   1770
      Width           =   975
   End
   Begin VB.Label LblMod 
      BackColor       =   &H80000003&
      Caption         =   "MODELO:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   10
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label LblCant 
      BackColor       =   &H80000003&
      Caption         =   "CANTIDAD:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   9
      Top             =   3030
      Width           =   1335
   End
   Begin VB.Label LblPrecio 
      BackColor       =   &H80000003&
      Caption         =   "PRECIO:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   8
      Top             =   3660
      Width           =   975
   End
End
Attribute VB_Name = "LecturaToner"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cod_ton As Integer
Dim marca_ton As String
Dim modelo_ton As String
Dim cant_ton As Integer
Dim precio_ton As Integer
Dim marca
Dim modelo

Sub LIMPIAR()
    txtCod.Text = ""
    cmbMarca.Text = ""
    cmbModelo.Text = ""
    txtCant.Text = ""
    txtPrecio.Text = ""
    txtCod.Enabled = False
    cmbMarca.Enabled = False
    cmbModelo.Enabled = False
    txtCant.Enabled = False
    txtPrecio.Enabled = False
    btnCancelar.Enabled = False
End Sub

'EOF End Of File
Private Sub btnAceptar_Click()
    If EOF(1) Then
        btnCancelar.Enabled = True
        btnCancelar.SetFocus
    Else
        Input #1, cod_ton, marca_ton, modelo_ton, cant_ton, precio_ton
        txtCod.Text = Format(cod_ton, "0000")
        cmbMarca.Text = marca_ton
        cmbModelo.Text = modelo_ton
        txtCant.Text = Format(cant_ton, "0.00")
        txtPrecio.Text = Format(precio_ton, "$###0.00")
    End If
End Sub

Private Sub btnCancelar_Click()
    LIMPIAR
    txtCod.Enabled = False
    cmbMarca.Enabled = False
    cmbModelo.Enabled = False
    txtCant.Enabled = False
    txtPrecio.Enabled = False
    btnAceptar.Enabled = False
End Sub

Private Sub btnSalir_Click()
    Close #1
    Unload Me
End Sub

Private Sub Form_Load()
    Open "toner.dat" For Input As #1
End Sub

Private Sub cmbMarca_Change()
    Select Case cmbMarca.Text
        Case "1"
        cmbMarca.Text = "1 - Brother"
    
        Case "2"
        cmbMarca.Text = "2 - Canon"
    
        Case "3"
        cmbMarca.Text = "3 - Samsung"
    
        Case "4"
        cmbMarca.Text = "4 - Xerox"
    End Select
End Sub

Private Sub cmbModelo_Change()
    Select Case cmbModelo.Text
        Case "11"
        cmbModelo.Text = "11 - HL-1200"

        Case "12"
        cmbModelo.Text = "12 - HL-1212W"

        Case "13"
        cmbModelo.Text = "13 - HL-L2360DW"

        Case "14"
        cmbModelo.Text = "14 - HL-L5100DN"

        Case "21"
        cmbModelo.Text = "21 - PC 740"

        Case "22"
        cmbModelo.Text = "22 - PC 750"

        Case "23"
        cmbModelo.Text = "23 - PC 760"

        Case "24"
        cmbModelo.Text = "24 - PC 770"

        Case "31"
        cmbModelo.Text = "31 - 1710 Kennen"

        Case "32"
        cmbModelo.Text = "32 - 2850 Kennen"

        Case "33"
        cmbModelo.Text = "33 - D4550B Kennen"

        Case "34"
        cmbModelo.Text = "34 - D1630A Kennen"

        Case "41"
        cmbModelo.Text = "41 - 3020 3025"

        Case "42"
        cmbModelo.Text = "42 - 106RO2773"
    End Select
End Sub
