VERSION 5.00
Begin VB.Form Autos 
   BackColor       =   &H8000000E&
   Caption         =   "Autos"
   ClientHeight    =   9225
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7245
   LinkTopic       =   "Form1"
   ScaleHeight     =   9225
   ScaleWidth      =   7245
   StartUpPosition =   2  'CenterScreen
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
      Left            =   1680
      TabIndex        =   4
      Top             =   7560
      Width           =   1695
   End
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
      Left            =   3840
      TabIndex        =   5
      Top             =   7560
      Width           =   1695
   End
   Begin VB.TextBox txtNum 
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
      Left            =   3960
      MaxLength       =   4
      TabIndex        =   0
      Top             =   3600
      Width           =   1335
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
      Left            =   3000
      MaxLength       =   25
      TabIndex        =   2
      Top             =   5400
      Width           =   1815
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
      Left            =   2880
      MaxLength       =   6
      TabIndex        =   3
      Top             =   6240
      Width           =   1815
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
      Left            =   2880
      TabIndex        =   1
      Text            =   "Seleccionar marca"
      Top             =   4560
      Width           =   2415
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   2640
      Picture         =   "Autos.frx":0000
      Top             =   720
      Width           =   1920
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000014&
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
      Left            =   2040
      TabIndex        =   9
      Top             =   4680
      Width           =   735
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000014&
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
      Left            =   2040
      TabIndex        =   8
      Top             =   5520
      Width           =   855
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000014&
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
      Left            =   2040
      TabIndex        =   7
      Top             =   6360
      Width           =   735
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000E&
      Caption         =   "Numero de auto:"
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
      Left            =   2040
      TabIndex        =   6
      Top             =   3720
      Width           =   1815
   End
End
Attribute VB_Name = "Autos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Me.Height = 9810
    Me.Width = 7485
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
    
    camino = App.Path
    Set db = OpenDatabase(camino & "\DbAutos.mdb")
    Set TBAUTOS = db.OpenRecordset("Autos")
    TBAUTOS.Index = "PrimaryKey"
End Sub

Private Sub btnLimpiar_Click()
    LIMPIAR
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
    End If
End Sub

Private Sub txtNum_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtNum.Text) = 0 Or txtNum.Text = "" Then
            txtNum.SetFocus
        Else
            TBAUTOS.Seek = Val(txtNum.Text)
            If TBAUTOS.NoMatch Then
                btnLimpiar.Enabled = True
                cmbMarca.Enabled = True
                cmbMarca.SetFocus
            Else
                TBAUTOS.Edit
            End If
        End If
    End If
End Sub

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
