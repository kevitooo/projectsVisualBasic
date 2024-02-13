VERSION 5.00
Begin VB.Form LecturaPersonas 
   BackColor       =   &H80000005&
   Caption         =   "Lectura de personas"
   ClientHeight    =   12315
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7185
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   12315
   ScaleWidth      =   7185
   Begin VB.TextBox txtSex 
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
      MaxLength       =   20
      TabIndex        =   18
      Top             =   9480
      Width           =   2415
   End
   Begin VB.TextBox txtProv 
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
      MaxLength       =   20
      TabIndex        =   17
      Top             =   7320
      Width           =   3015
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
      Left            =   3120
      MaxLength       =   4
      TabIndex        =   7
      Top             =   3720
      Width           =   1455
   End
   Begin VB.TextBox txtNom 
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
      MaxLength       =   25
      TabIndex        =   6
      Top             =   4440
      Width           =   3375
   End
   Begin VB.TextBox txtDom 
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
      MaxLength       =   20
      TabIndex        =   5
      Top             =   5160
      Width           =   3015
   End
   Begin VB.TextBox txtLoc 
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
      MaxLength       =   20
      TabIndex        =   4
      Top             =   5880
      Width           =   3015
   End
   Begin VB.TextBox txtCod 
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
      Left            =   3120
      MaxLength       =   4
      TabIndex        =   3
      Top             =   6600
      Width           =   975
   End
   Begin VB.TextBox txtTel 
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
      Left            =   3120
      MaxLength       =   10
      TabIndex        =   2
      Top             =   8040
      Width           =   1695
   End
   Begin VB.TextBox txtDNI 
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
      Left            =   3120
      MaxLength       =   8
      TabIndex        =   1
      Top             =   8760
      Width           =   1455
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
      Left            =   2880
      TabIndex        =   0
      Top             =   10680
      Width           =   1575
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   2640
      Picture         =   "LecturaPersonas.frx":0000
      Top             =   960
      Width           =   1920
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000005&
      Caption         =   "Número de persona:"
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
      Left            =   600
      TabIndex        =   16
      Top             =   3840
      Width           =   2295
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000005&
      Caption         =   "Nombre y apellido:"
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
      Left            =   840
      TabIndex        =   15
      Top             =   4560
      Width           =   2055
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000005&
      Caption         =   "Domicilio:"
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
      Left            =   1800
      TabIndex        =   14
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000005&
      Caption         =   "Localidad:"
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
      Left            =   1680
      TabIndex        =   13
      Top             =   6000
      Width           =   1215
   End
   Begin VB.Label Label5 
      BackColor       =   &H80000005&
      Caption         =   "Código postal:"
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
      TabIndex        =   12
      Top             =   6720
      Width           =   1575
   End
   Begin VB.Label Label6 
      BackColor       =   &H80000005&
      Caption         =   "Provincia:"
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
      Left            =   1800
      TabIndex        =   11
      Top             =   7440
      Width           =   1095
   End
   Begin VB.Label Label7 
      BackColor       =   &H80000005&
      Caption         =   "Teléfono:"
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
      Left            =   1800
      TabIndex        =   10
      Top             =   8160
      Width           =   1095
   End
   Begin VB.Label Label8 
      BackColor       =   &H80000005&
      Caption         =   "DNI:"
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
      Left            =   2280
      TabIndex        =   9
      Top             =   8880
      Width           =   615
   End
   Begin VB.Label Label9 
      BackColor       =   &H80000005&
      Caption         =   "Sexo:"
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
      TabIndex        =   8
      Top             =   9600
      Width           =   735
   End
End
Attribute VB_Name = "LecturaPersonas"
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

Private Sub btnLeer_Click()
    If EOF(1) Then
        btnCancelar.Enabled = True
    Else
        Input #1, nro_per, ayn_per, dom_per, loc_per, cpos_per, pcia_per, tel_per, dni_per, sex_per
        
        txtNum.Text = Format(nro_per, "0000")
        txtNom.Text = ayn_per
        txtDom.Text = dom_per
        txtLoc.Text = loc_per
        txtCod.Text = cpos_per
        txtProv.Text = pcia_per
        txtTel.Text = tel_per
        txtDNI.Text = dni_per
        txtSex.Text = sex_per
    End If
    btnLeer.Enabled = False
    msg = MsgBox("Se ha finalizado el archivo", vbOKOnly, "Atención")
End Sub

Private Sub Form_Load()
    Me.Height = 12900
    Me.Width = 7425
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = (Screen.Width - Me.Width) / 2
    Open "personas.dat" For Input As #1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
    Unload Me
End Sub

Private Sub txtProv_Change()
    Select Case txtProv.Text
        Case "01"
        txtProv.Text = "BUENOS AIRES"
    
        Case "02"
        txtProv.Text = "CATAMARCA"
        
        Case "03"
        txtProv.Text = "CHACO"
        
        Case "04"
        txtProv.Text = "CHUBUT"
    
        Case "05"
        txtProv.Text = "CÓRDOBA"
    
        Case "06"
        txtProv.Text = "CORRIENTES"
    
        Case "07"
        txtProv.Text = "ENTRE RÍOS"
    
        Case "08"
        txtProv.Text = "FORMOSA"
    
        Case "09"
        txtProv.Text = "JUJUY"
    
        Case "10"
        txtProv.Text = "LA PAMPA"
    
        Case "11"
        txtProv.Text = "LA RIOJA"
    
        Case "12"
        txtProv.Text = "MENDOZA"
    
        Case "13"
        txtProv.Text = "MISIONES"
    
        Case "14"
        txtProv.Text = "NEUQUÉN"
    
        Case "15"
        txtProv.Text = "RÍO NEGRO"
    
        Case "16"
        txtProv.Text = "SALTA"
    
        Case "17"
        txtProv.Text = "SAN JUAN"
    
        Case "18"
        txtProv.Text = "SAN LUIS"
    
        Case "19"
        txtProv.Text = "SANTA CRUZ"
        
        Case "20"
        txtProv.Text = "SANTA FE"
        
        Case "21"
        txtProv.Text = "SANTIAGO DEL ESTERO"
    
        Case "22"
        txtProv.Text = "TIERRA DEL FUEGO"
    
        Case "23"
        txtProv.Text = "TUCUMÁN"
    End Select
End Sub

Private Sub txtSex_Change()
    Select Case txtSex.Text
        Case "M"
        txtSex.Text = "MASCULINO"
        
        Case "F"
        txtSex.Text = "FEMENINO"
    End Select
End Sub
