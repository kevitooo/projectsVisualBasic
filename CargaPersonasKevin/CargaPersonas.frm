VERSION 5.00
Begin VB.Form CargaPersonas 
   BackColor       =   &H80000005&
   Caption         =   "Carga de personas"
   ClientHeight    =   12330
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7185
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   12330
   ScaleWidth      =   7185
   Begin VB.ComboBox cmbSex 
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      TabIndex        =   9
      Text            =   "Seleccionar sexo"
      Top             =   9480
      Width           =   2295
   End
   Begin VB.ComboBox cmbProv 
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      TabIndex        =   6
      Text            =   "Seleccionar provincia"
      Top             =   7320
      Width           =   3015
   End
   Begin VB.CommandButton btnLimpiar 
      Caption         =   "&Limpiar"
      Enabled         =   0   'False
      Height          =   615
      Left            =   4080
      TabIndex        =   11
      Top             =   10680
      Width           =   1575
   End
   Begin VB.CommandButton btnGuardar 
      Caption         =   "&Guardar"
      Enabled         =   0   'False
      Height          =   615
      Left            =   1560
      TabIndex        =   10
      Top             =   10680
      Width           =   1575
   End
   Begin VB.TextBox txtDNI 
      Alignment       =   1  'Right Justify
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      MaxLength       =   8
      TabIndex        =   8
      Top             =   8760
      Width           =   1455
   End
   Begin VB.TextBox txtTel 
      Alignment       =   1  'Right Justify
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      MaxLength       =   10
      TabIndex        =   7
      Top             =   8040
      Width           =   1695
   End
   Begin VB.TextBox txtCod 
      Alignment       =   1  'Right Justify
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      MaxLength       =   4
      TabIndex        =   5
      Top             =   6600
      Width           =   975
   End
   Begin VB.TextBox txtLoc 
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      MaxLength       =   20
      TabIndex        =   4
      Top             =   5880
      Width           =   3015
   End
   Begin VB.TextBox txtDom 
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      MaxLength       =   20
      TabIndex        =   3
      Top             =   5160
      Width           =   3015
   End
   Begin VB.TextBox txtNom 
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      MaxLength       =   25
      TabIndex        =   2
      Top             =   4440
      Width           =   3375
   End
   Begin VB.TextBox txtNum 
      Alignment       =   1  'Right Justify
      Height          =   420
      Left            =   3120
      MaxLength       =   4
      TabIndex        =   1
      Top             =   3720
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   2760
      Picture         =   "CargaPersonas.frx":0000
      Top             =   840
      Width           =   1920
   End
   Begin VB.Label Label9 
      BackColor       =   &H80000005&
      Caption         =   "Sexo:"
      Height          =   375
      Left            =   2160
      TabIndex        =   19
      Top             =   9600
      Width           =   735
   End
   Begin VB.Label Label8 
      BackColor       =   &H80000005&
      Caption         =   "DNI:"
      Height          =   375
      Left            =   2280
      TabIndex        =   18
      Top             =   8880
      Width           =   615
   End
   Begin VB.Label Label7 
      BackColor       =   &H80000005&
      Caption         =   "Teléfono:"
      Height          =   375
      Left            =   1800
      TabIndex        =   17
      Top             =   8160
      Width           =   1095
   End
   Begin VB.Label Label6 
      BackColor       =   &H80000005&
      Caption         =   "Provincia:"
      Height          =   375
      Left            =   1800
      TabIndex        =   16
      Top             =   7440
      Width           =   1095
   End
   Begin VB.Label Label5 
      BackColor       =   &H80000005&
      Caption         =   "Código postal:"
      Height          =   375
      Left            =   1320
      TabIndex        =   15
      Top             =   6720
      Width           =   1575
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000005&
      Caption         =   "Localidad:"
      Height          =   375
      Left            =   1680
      TabIndex        =   14
      Top             =   6000
      Width           =   1215
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000005&
      Caption         =   "Domicilio:"
      Height          =   375
      Left            =   1800
      TabIndex        =   13
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000005&
      Caption         =   "Nombre y apellido:"
      Height          =   375
      Left            =   840
      TabIndex        =   12
      Top             =   4560
      Width           =   2055
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000005&
      Caption         =   "Número de persona:"
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   3840
      Width           =   2295
   End
End
Attribute VB_Name = "CargaPersonas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim nro_per As Integer
Dim ayn_per As String
Dim dom_per As String
Dim loc_per As String
Dim cpos_per As Integer
Dim pcia_per As String
Dim tel_per As String
Dim dni_per As Double
Dim sex_per As String

Sub LIMPIAR()
    txtNum.Text = ""
    txtNom.Text = ""
    txtDom.Text = ""
    txtLoc.Text = ""
    txtCod.Text = ""
    cmbProv.Text = ""
    txtTel.Text = ""
    txtDNI.Text = ""
    cmbSex.Text = ""
    cmbProv.Text = "Seleccionar provincia"
    cmbSex.Text = "Seleccionar sexo"
    txtNom.Enabled = False
    txtDom.Enabled = False
    txtLoc.Enabled = False
    txtCod.Enabled = False
    cmbProv.Enabled = False
    txtTel.Enabled = False
    txtDNI.Enabled = False
    cmbSex.Enabled = False
    btnGuardar.Enabled = False
    btnLimpiar.Enabled = False
End Sub

Private Sub btnLimpiar_Click()
    LIMPIAR
End Sub

Private Sub Form_Load()
    CargaPersonas.Height = 12915
    CargaPersonas.Width = 7425
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = (Screen.Width - Me.Width) / 2
    
    cmbProv.AddItem "01 - Buenos Aires"
    cmbProv.AddItem "02 - Catamarca"
    cmbProv.AddItem "03 - Chaco"
    cmbProv.AddItem "04 - Chubut"
    cmbProv.AddItem "05 - Córdoba"
    cmbProv.AddItem "06 - Corrientes"
    cmbProv.AddItem "07 - Entre Ríos"
    cmbProv.AddItem "08 - Formosa"
    cmbProv.AddItem "09 - Jujuy"
    cmbProv.AddItem "10 - La Pampa"
    cmbProv.AddItem "11 - La Rioja"
    cmbProv.AddItem "12 - Mendoza"
    cmbProv.AddItem "13 - Misiones"
    cmbProv.AddItem "14 - Neuquén"
    cmbProv.AddItem "15 - Río Negro"
    cmbProv.AddItem "16 - Salta"
    cmbProv.AddItem "17 - San Juan"
    cmbProv.AddItem "18 - San Luis"
    cmbProv.AddItem "19 - Santa Cruz"
    cmbProv.AddItem "20 - Santa Fe"
    cmbProv.AddItem "21 - Santiago del Estero"
    cmbProv.AddItem "22 - Tierra del Fuego"
    cmbProv.AddItem "23 - Tucumán"

    cmbSex.AddItem "Masculino"
    cmbSex.AddItem "Femenino"
    
    Open "personas.dat" For Output As #1
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
    Unload Me
End Sub

Private Sub btnGuardar_Click()
    nro_per = Val(txtNum.Text)
    ayn_per = txtNom.Text
    dom_per = txtDom.Text
    loc_per = txtLoc.Text
    cpos_per = txtCod.Text
    pcia_per = Mid(cmbProv.Text, 1, 2)
    tel_per = Val(txtTel.Text)
    dni_per = Val(txtDNI.Text)
    sex_per = Mid(cmbSex.Text, 1, 1)
    
    Write #1, nro_per, ayn_per, dom_per, loc_per, cpos_per, pcia_per, tel_per, dni_per, sex_per
    
    msg = MsgBox("Hemos guardado los datos. ¿Desea seguir la carga?", vbYesNo, "Atencion")
    If msg = 6 Then
        LIMPIAR
        txtNum.SetFocus
    Else
        txtNum.Enabled = False
    End If
    LIMPIAR
    btnGuardar.Enabled = False
End Sub

Private Sub cmbSex_Click()
    If IsNumeric(cmbSex.Text) Or cmbSex.Text = "" Then
        cmbSex.SetFocus
    Else
        btnGuardar.Enabled = True
        btnGuardar.SetFocus
    End If
End Sub

Private Sub txtDNI_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtDNI.Text) = 0 Or txtDNI.Text = "" Then
            txtDNI.SetFocus
        Else
            cmbSex.Enabled = True
            cmbSex.SetFocus
        End If
    End If
End Sub

Private Sub txtTel_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtTel.Text) = 0 Or txtTel.Text = "" Then
            txtTel.SetFocus
        Else
            txtDNI.Enabled = True
            txtDNI.SetFocus
        End If
    End If
End Sub

Private Sub cmbProv_Click()
    If IsNumeric(cmbProv.Text) Or cmbProv.Text = "" Then
        cmbProv.SetFocus
    Else
        txtTel.Enabled = True
        txtTel.SetFocus
    End If
End Sub

Private Sub txtCod_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtCod.Text) = 0 Or txtCod.Text = "" Then
            txtCod.SetFocus
        Else
            cmbProv.Enabled = True
            cmbProv.SetFocus
        End If
    End If
End Sub

Private Sub txtLoc_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If txtLoc.Text = "" Then
            txtLoc.SetFocus
        Else
            txtLoc.Text = UCase(txtLoc.Text)
            txtCod.Enabled = True
            txtCod.SetFocus
        End If
    End If
End Sub

Private Sub txtDom_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If txtDom.Text = "" Then
            txtDom.SetFocus
        Else
            txtDom.Text = UCase(txtDom.Text)
            txtLoc.Enabled = True
            txtLoc.SetFocus
        End If
    End If
End Sub

Private Sub txtNom_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If txtNom.Text = "" Then
            txtNom.SetFocus
        Else
            txtNom.Text = UCase(txtNom.Text)
            txtDom.Enabled = True
            txtDom.SetFocus
        End If
    End If
End Sub

Private Sub txtNum_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Val(txtNum.Text) = 0 Or txtNum.Text = "" Then
            txtNum.SetFocus
        Else
            txtNom.Enabled = True
            txtNom.SetFocus
            btnLimpiar.Enabled = True
        End If
    End If
End Sub
