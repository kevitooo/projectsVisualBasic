VERSION 5.00
Begin VB.Form GrabarToner 
   BackColor       =   &H80000003&
   Caption         =   "Grabar Toner"
   ClientHeight    =   6720
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8010
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6720
   ScaleWidth      =   8010
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
      TabIndex        =   3
      Text            =   "Seleccionar modelo"
      Top             =   2400
      Width           =   2535
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
      TabIndex        =   2
      Text            =   "Seleccionar marca"
      Top             =   1800
      Width           =   2535
   End
   Begin VB.CommandButton btnSalir 
      Caption         =   "&Salir"
      Height          =   615
      Left            =   5280
      TabIndex        =   8
      Top             =   4800
      Width           =   1455
   End
   Begin VB.CommandButton btnCancelar 
      Caption         =   "&Cancelar"
      Enabled         =   0   'False
      Height          =   615
      Left            =   3240
      TabIndex        =   7
      Top             =   4800
      Width           =   1455
   End
   Begin VB.CommandButton btnAceptar 
      Caption         =   "&Aceptar"
      Enabled         =   0   'False
      Height          =   615
      Left            =   1200
      TabIndex        =   6
      Top             =   4800
      Width           =   1455
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
      Top             =   3600
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
      TabIndex        =   4
      Top             =   2985
      Width           =   2055
   End
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
      TabIndex        =   1
      Top             =   1140
      Width           =   2055
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
      TabIndex        =   12
      Top             =   3720
      Width           =   975
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
      TabIndex        =   11
      Top             =   3090
      Width           =   1335
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
      Top             =   2460
      Width           =   1215
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
      TabIndex        =   9
      Top             =   1830
      Width           =   975
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
      TabIndex        =   0
      Top             =   1200
      Width           =   2055
   End
End
Attribute VB_Name = "GrabarToner"
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
    cmbMarca.Enabled = False
    cmbModelo.Enabled = False
    txtCant.Enabled = False
    txtPrecio.Enabled = False
    btnCancelar.Enabled = False
End Sub

Private Sub btnAceptar_Click()
    cod_ton = Val(txtCod.Text)
    marca_ton = marca
    modelo_ton = modelo
    cant_ton = Val(txtCant.Text)
    precio_ton = Val(txtPrecio.Text)
    
    Write #1, cod_ton, marca_ton, modelo_ton, cant_ton, precio_ton
    LIMPIAR
    btnAceptar.Enabled = False
    txtCod.SetFocus
End Sub

Private Sub btnCancelar_Click()
    LIMPIAR
    txtCod.SetFocus
    cmbMarca.Enabled = False
    cmbModelo.Enabled = False
    txtCant.Enabled = False
    txtPrecio.Enabled = False
    btnAceptar.Enabled = False
End Sub

Private Sub Form_Load()

    cmbMarca.AddItem "1 - Brother"
    cmbMarca.AddItem "2 - Canon"
    cmbMarca.AddItem "3 - Samsung"
    cmbMarca.AddItem "4 - Xerox"
    
    Open "toner.dat" For Output As #1
    
End Sub

Private Sub btnSalir_Click()
    Close #1
    Unload Me
End Sub

Private Sub txtPrecio_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtPrecio.Text) = 0 Or txtPrecio.Text = "" Then
            txtPrecio.SetFocus
            Else
            btnAceptar.Enabled = True
            btnAceptar.SetFocus
        End If
    End If
End Sub

Private Sub txtCant_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtCant.Text) = 0 Or txtCant.Text = "" Then
            txtCant.SetFocus
            Else
            txtPrecio.Enabled = True
            txtPrecio.SetFocus
        End If
    End If
End Sub

Private Sub cmbModelo_Click()
    If IsNumeric(cmbModelo.Text) Or cmbModelo.Text = "" Then
        cmbModelo.SetFocus
        Else
        txtCant.Enabled = True
        txtCant.SetFocus
        
        modelo = Mid(cmbModelo.Text, 1, 2)
    End If
End Sub

Private Sub cmbMarca_Click()
    If IsNumeric(cmbMarca.Text) Or cmbMarca.Text = "" Then
        txtMarca.SetFocus
        Else
        cmbModelo.Enabled = True
        cmbModelo.SetFocus

        marca = Mid(cmbMarca.Text, 1, 1)
        
        Select Case marca
            Case "1"
            cmbModelo.Clear
            cmbModelo.AddItem "11 - HL-1200"
            cmbModelo.AddItem "12 - HL-1212W"
            cmbModelo.AddItem "13 - HL-L2360DW"
            cmbModelo.AddItem "14 - HL-L5100DN"
                
            Case "2"
            cmbModelo.Clear
            cmbModelo.AddItem "21 - PC 740"
            cmbModelo.AddItem "22 - PC 750"
            cmbModelo.AddItem "23 - PC 760"
            cmbModelo.AddItem "24 - PC 770"
            
            Case "3"
            cmbModelo.Clear
            cmbModelo.AddItem "31 - 1710 Kennen"
            cmbModelo.AddItem "32 - 2850 Kennen"
            cmbModelo.AddItem "33 - D4550B Kennen"
            cmbModelo.AddItem "34 - D1630A Kennen"
            
            Case "4"
            cmbModelo.Clear
            cmbModelo.AddItem "41 - 3020 3025"
            cmbModelo.AddItem "42 - 106R02773"
        End Select
    End If
End Sub

Private Sub txtCod_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtCod.Text) = 0 Or txtCod.Text = "" Then
            txtCod.SetFocus
        Else
            cmbMarca.Enabled = True
            btnCancelar.Enabled = True
            cmbMarca.SetFocus
        End If
    End If
End Sub
