VERSION 5.00
Begin VB.Form MuestraPersonas 
   BackColor       =   &H80000005&
   Caption         =   "Muestra de datos"
   ClientHeight    =   8355
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7365
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8355
   ScaleWidth      =   7365
   Begin VB.CommandButton btnComenzar 
      Caption         =   "&Comenzar"
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
      TabIndex        =   7
      Top             =   6840
      Width           =   1935
   End
   Begin VB.TextBox txtRes 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   5
      Top             =   4080
      Width           =   735
   End
   Begin VB.TextBox txtRes3 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   3
      Top             =   5520
      Width           =   735
   End
   Begin VB.TextBox txtRes2 
      Alignment       =   2  'Center
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   2
      Top             =   4800
      Width           =   735
   End
   Begin VB.Image Image1 
      Height          =   1845
      Left            =   2760
      Picture         =   "MuestraPersonas.frx":0000
      Top             =   600
      Width           =   1920
   End
   Begin VB.Label lblFin 
      BackColor       =   &H80000005&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2760
      TabIndex        =   6
      Top             =   3120
      Width           =   1935
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000005&
      Caption         =   "Total personas:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2400
      TabIndex        =   4
      Top             =   4200
      Width           =   2175
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000005&
      Caption         =   "Total femeninos:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Top             =   5640
      Width           =   2295
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000005&
      Caption         =   "Total masulinos:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2280
      TabIndex        =   0
      Top             =   4920
      Width           =   2295
   End
End
Attribute VB_Name = "MuestraPersonas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim nro_per As Integer
Dim ayn_per As String
Dim dom_per As String
Dim loc_per As String
Dim cpos_per As Integer
Dim pcia_per As Integer
Dim tel_per As String
Dim dni_per As Double
Dim sex_per As String
Dim nro_mas As Integer
Dim ayn_mas As String
Dim dom_mas As String
Dim loc_mas As String
Dim cpos_mas As Integer
Dim pcia_mas As Integer
Dim tel_mas As String
Dim dni_mas As Double
Dim sex_mas As String
Dim nro_fem As Integer
Dim ayn_fem As String
Dim dom_fem As String
Dim loc_fem As String
Dim cpos_fem As Integer
Dim pcia_fem As Integer
Dim tel_fem As String
Dim dni_fem As Double
Dim sex_fem As String

Private Sub btnComenzar_Click()
    Open "personas.dat" For Input As #1
    Open "masculino.dat" For Output As #2
    Open "femenino.dat" For Output As #3
    
    Do Until EOF(1)
        Input #1, nro_per, ayn_per, dom_per, loc_per, cpos_per, pcia_per, tel_per, dni_per, sex_per
        TotalPer = TotalPer + 1
        
        Select Case sex_per
            Case "M"
            nro_masc = nro_per
            ayn_masc = ayn_per
            dom_masc = dom_per
            loc_masc = loc_per
            cpos_masc = cpos_per
            pcia_masc = pcia_per
            tel_masc = tel_per
            dni_masc = dni_per
            
            Write #2, nro_mas, ayn_mas, dom_mas, loc_mas, cpos_mas, pcia_mas, tel_mas, dni_mas, sex_mas
            cont1 = cont1 + 1
            
            Case "F"
            nro_fem = nro_per
            ayn_fem = ayn_per
            dom_fem = dom_per
            loc_fem = loc_per
            cpos_fem = cpos_per
            pcia_fem = pcia_per
            tel_fem = tel_per
            dni_fem = dni_per
            
            Write #3, nro_fem, ayn_fem, dom_fem, loc_fem, cpos_fem, pcia_fem, tel_fem, dni_fem, sex_fem
            cont2 = cont2 + 1
        End Select
    Loop
    lblFin.Visible = True
    lblFin.Caption = "Fin proceso"
    btnComenzar.Enabled = False
    txtRes.Text = TotalPer
    txtRes2.Text = cont1
    txtRes3.Text = cont2
End Sub

Private Sub Form_Load()
    Me.Height = 8940
    Me.Width = 7365
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = (Screen.Width - Me.Width) / 2
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
    Close #2
    Close #3
    Unload Me
End Sub
