VERSION 5.00
Begin VB.Form PreguntarAuto 
   BackColor       =   &H80000003&
   Caption         =   "Preguntar por modelo y marca"
   ClientHeight    =   8610
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12510
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8610
   ScaleWidth      =   12510
   Begin VB.ComboBox cmbMarca2 
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
      Left            =   9000
      TabIndex        =   9
      Top             =   4200
      Width           =   2415
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
      Left            =   9000
      MaxLength       =   6
      TabIndex        =   8
      Top             =   5880
      Width           =   1815
   End
   Begin VB.TextBox txtModelo2 
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
      Left            =   9000
      MaxLength       =   25
      TabIndex        =   7
      Top             =   5040
      Width           =   1815
   End
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
      Height          =   420
      Left            =   9000
      MaxLength       =   4
      TabIndex        =   6
      Top             =   3360
      Width           =   1215
   End
   Begin VB.ComboBox cmbMarca 
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
      Left            =   1920
      TabIndex        =   3
      Top             =   3360
      Width           =   2415
   End
   Begin VB.TextBox txtModelo 
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
      Left            =   1920
      MaxLength       =   25
      TabIndex        =   2
      Top             =   4200
      Width           =   1815
   End
   Begin VB.CommandButton btnGuardar 
      Caption         =   "&Guardar"
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
      Left            =   8400
      TabIndex        =   1
      Top             =   7080
      Width           =   1695
   End
   Begin VB.CommandButton btnBuscar 
      Caption         =   "&Buscar"
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
      Left            =   1800
      TabIndex        =   0
      Top             =   5400
      Width           =   1695
   End
   Begin VB.Image Image2 
      Height          =   1920
      Left            =   8400
      Picture         =   "PreguntarAuto.frx":0000
      Top             =   600
      Width           =   1920
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   1800
      Picture         =   "PreguntarAuto.frx":1084A
      Top             =   720
      Width           =   1920
   End
   Begin VB.Label Label8 
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
      Left            =   8160
      TabIndex        =   13
      Top             =   6000
      Width           =   735
   End
   Begin VB.Label Label7 
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
      Left            =   8040
      TabIndex        =   12
      Top             =   5160
      Width           =   855
   End
   Begin VB.Label Label6 
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
      Left            =   8160
      TabIndex        =   11
      Top             =   4320
      Width           =   735
   End
   Begin VB.Label Label5 
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
      Left            =   7080
      TabIndex        =   10
      Top             =   3480
      Width           =   1815
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
      Left            =   960
      TabIndex        =   5
      Top             =   4320
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
      Left            =   1080
      TabIndex        =   4
      Top             =   3480
      Width           =   735
   End
End
Attribute VB_Name = "PreguntarAuto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim num_auto As Integer
Dim mar_auto As Integer
Dim mod_auto As String
Dim pre_auto As Double
Dim marca

Private Sub btnBuscar_Click()
    flag = 0
    Open "autos.dat" For Input As #1
    Do Until EOF(1)
        Input #1, num_auto, mar_auto, mod_auto, pre_auto
        Select Case mar_auto
        Case 1
        marca_auto = "1 - CHEVROLET"
    
        Case 2
        marca_auto = "2 - FORD"
    
        Case 3
        marca_auto = "3 - RENAULT"
    
        Case 4
        marca_auto = "4 - TOYOTA"
    
        Case 5
        marca_auto = "5 - MERCEDES"
    
        End Select
        If marca_auto = cmbMarca.Text And mod_auto = txtModelo.Text Then
            flag = 1
            txtNum.Text = num_auto
            txtPrecio.Text = pre_auto
            cmbMarca2.Text = marca_auto
            txtModelo2.Text = mod_auto
            msg = MsgBox("¿Quiere cambiar el precio?", vbYesNo, "Atención")
            If msg = 6 Then
                txtPrecio.Enabled = True
            End If
        End If
    Loop
    If flag = 0 Then
       msg2 = MsgBox("No se encontro el modelo y marca", vbOKOnly, "Atención")
    End If
    Close #1
End Sub

Private Sub btnGuardar_Click()
    Open "autos.dat" For Append As #1
    
    'preguntar al profe
    
    num_auto = Val(txtNum.Text)
    marca = Mid(cmbMarca.Text, 1, 1)
    mar_auto = marca
    mod_auto = txtModelo2.Text
    pre_auto = txtPrecio.Text
    
    Write #1, num_auto, mar_auto, mod_auto, pre_auto
    
    Close #1
End Sub

Private Sub Form_Load()
    Me.Height = 9195
    Me.Width = 12750
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
    
    cmbMarca.AddItem "1 - CHEVROLET"
    cmbMarca.AddItem "2 - FORD"
    cmbMarca.AddItem "3 - RENAULT"
    cmbMarca.AddItem "4 - TOYOTA"
    cmbMarca.AddItem "5 - MERCEDES"
    
    cmbMarca2.AddItem "1 - CHEVROLET"
    cmbMarca2.AddItem "2 - FORD"
    cmbMarca2.AddItem "3 - RENAULT"
    cmbMarca2.AddItem "4 - TOYOTA"
    cmbMarca2.AddItem "5 - MERCEDES"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
End Sub

Private Sub btnSalir_Click()
    Close #1
    End
End Sub

Private Sub cmbMarca_Click()
    If IsNumeric(cmbMarca.Text) Or cmbMarca.Text = "" Then
        cmbMarca.SetFocus
    Else
        txtModelo.Enabled = True
        txtModelo.SetFocus
        btnBuscar.Enabled = True
    End If
End Sub

Private Sub txtModelo_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If txtModelo.Text = "" Then
            txtModelo.SetFocus
        Else
            txtModelo.Text = UCase(txtModelo.Text)
            btnBuscar.SetFocus
        End If
    End If
End Sub

Private Sub txtPrecio_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtNum.Text) = 0 Or txtNum.Text = "" Then
            txtPrecio.SetFocus
        Else
            btnSalir.Enabled = True
        End If
    End If
End Sub
