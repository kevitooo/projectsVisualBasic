VERSION 5.00
Begin VB.Form CargaTicket 
   Caption         =   "Ticket Peaje"
   ClientHeight    =   5205
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6570
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5205
   ScaleWidth      =   6570
   Begin VB.CommandButton btnSalir 
      Caption         =   "Salir"
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
      Left            =   3720
      TabIndex        =   4
      Top             =   3720
      Width           =   1455
   End
   Begin VB.CommandButton btnSeguir 
      Caption         =   "Seguir"
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
      Left            =   1440
      TabIndex        =   3
      Top             =   3720
      Width           =   1455
   End
   Begin VB.ComboBox cmbCat 
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
      TabIndex        =   2
      Top             =   2520
      Width           =   2535
   End
   Begin VB.TextBox txtFecha 
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
      Height          =   495
      Left            =   2880
      MaxLength       =   8
      TabIndex        =   1
      Top             =   1800
      Width           =   1695
   End
   Begin VB.TextBox txtNro 
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
      Height          =   495
      Left            =   2880
      MaxLength       =   6
      TabIndex        =   0
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "Categoria"
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
      Left            =   1320
      TabIndex        =   7
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Fecha"
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
      Left            =   1320
      TabIndex        =   6
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Nro. Ticket"
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
      Left            =   1320
      TabIndex        =   5
      Top             =   1200
      Width           =   1455
   End
End
Attribute VB_Name = "CargaTicket"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Nro_tic As Integer
Dim Fec_tic As Date
Dim Cat_tic As Integer

Sub Limpiar()
txtNro.SetFocus
txtNro.Text = ""
txtFecha.Text = ""
cmbCat.Text = ""
txtFecha.Enabled = False
cmbCat.Enabled = False
btnSeguir.Enabled = False
End Sub

Private Sub btnSeguir_Click()
Nro_tic = Val(txtNro.Text)
Fec_tic = txtFecha.Text
Cat_tic = Mid(cmbCat.Text, 1, 1)

Write #1, Nro_tic, Fec_tic, Cat_tic

msg = MsgBox("Exito al cargar los datos", vbOKOnly, "Atención")

Limpiar
End Sub

Private Sub Form_Load()
Me.Height = 5790
Me.Width = 6810
Me.Top = ((Screen.Height - Me.Height) / 2) - 650
Me.Left = ((Screen.Width - Me.Width) / 2)

Open "ticket.dat" For Output As #1

cmbCat.AddItem "1 - Motos"
cmbCat.AddItem "2 - Autos"
cmbCat.AddItem "3 - Camionetas"
cmbCat.AddItem "4 - Camiones y otros"
End Sub

Private Sub btnSalir_Click()
Unload Me
Close #1
End Sub

Private Sub cmbCat_Click()
If IsNumeric(cmbCat.Text) Or cmbCat.Text = "" Then
    cmbCat.SetFocus
Else
    btnSeguir.Enabled = True
    btnSeguir.SetFocus
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
Close #1
Unload Me
End Sub

Private Sub txtFecha_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    If Val(txtFecha.Text) = 0 Or txtFecha.Text = "" Then
        txtFecha.SetFocus
    Else
        cmbCat.Enabled = True
        cmbCat.SetFocus
    End If
End If
End Sub

Private Sub txtNro_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    If Val(txtNro.Text) = 0 Or txtNro.Text = "" Then
        txtNro.SetFocus
    Else
        txtFecha.Enabled = True
        txtFecha.SetFocus
    End If
End If
End Sub
