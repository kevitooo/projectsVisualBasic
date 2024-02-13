VERSION 5.00
Begin VB.Form BusquedaAuto 
   BackColor       =   &H80000003&
   Caption         =   "Filtro de búsqueda"
   ClientHeight    =   10110
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10560
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   10110
   ScaleWidth      =   10560
   Begin VB.CommandButton btnSalir 
      Caption         =   "&Salir"
      Height          =   615
      Left            =   8280
      TabIndex        =   3
      Top             =   8760
      Width           =   1695
   End
   Begin VB.TextBox txtNum2 
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
      Left            =   7560
      MaxLength       =   4
      TabIndex        =   14
      Top             =   4920
      Width           =   1215
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
      Left            =   7560
      MaxLength       =   25
      TabIndex        =   13
      Top             =   6600
      Width           =   1815
   End
   Begin VB.TextBox txtPrecio2 
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
      Left            =   7560
      MaxLength       =   6
      TabIndex        =   12
      Top             =   7440
      Width           =   1815
   End
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
      Left            =   7560
      TabIndex        =   11
      Top             =   5760
      Width           =   2415
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
      Left            =   2400
      MaxLength       =   4
      TabIndex        =   5
      Top             =   4920
      Width           =   1215
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
      Left            =   2400
      MaxLength       =   25
      TabIndex        =   0
      Top             =   6600
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
      Left            =   2400
      MaxLength       =   6
      TabIndex        =   6
      Top             =   7440
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
      Left            =   2400
      TabIndex        =   4
      Top             =   5760
      Width           =   2415
   End
   Begin VB.CommandButton btnCaro 
      Caption         =   "Buscar modelo más caro"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   6480
      TabIndex        =   2
      Top             =   3360
      Width           =   2535
   End
   Begin VB.CommandButton btnBarato 
      Caption         =   "Buscar modelo más barato"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1440
      TabIndex        =   1
      Top             =   3360
      Width           =   2535
   End
   Begin VB.Image Image2 
      Height          =   1920
      Left            =   6840
      Picture         =   "BusquedaAuto.frx":0000
      Top             =   600
      Width           =   1920
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   1680
      Picture         =   "BusquedaAuto.frx":1084A
      Top             =   600
      Width           =   1920
   End
   Begin VB.Label Label8 
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
      Left            =   5640
      TabIndex        =   18
      Top             =   5040
      Width           =   1815
   End
   Begin VB.Label Label7 
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
      Left            =   6720
      TabIndex        =   17
      Top             =   5880
      Width           =   735
   End
   Begin VB.Label Label6 
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
      Left            =   6600
      TabIndex        =   16
      Top             =   6720
      Width           =   855
   End
   Begin VB.Label Label5 
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
      Left            =   6720
      TabIndex        =   15
      Top             =   7560
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
      Left            =   480
      TabIndex        =   10
      Top             =   5040
      Width           =   1815
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
      Left            =   1560
      TabIndex        =   9
      Top             =   5880
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
      Left            =   1440
      TabIndex        =   8
      Top             =   6720
      Width           =   855
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
      Left            =   1560
      TabIndex        =   7
      Top             =   7560
      Width           =   735
   End
End
Attribute VB_Name = "BusquedaAuto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim num_auto As Integer
Dim mar_auto As Integer
Dim mod_auto As String
Dim pre_auto As Double
Dim aux_pre_min_auto As Double
Dim aux_mod_min_auto As String
Dim aux_mar_min_auto As String
Dim aux_num_min_auto As Integer
Dim aux_pre_max_auto As Double
Dim aux_mod_max_auto As String
Dim aux_mar_max_auto As String
Dim aux_num_max_auto As Integer

Private Sub btnBarato_Click()
    Open "autos.dat" For Input As #1
    Min = 999999
    
    Do Until EOF(1)
        Input #1, num_auto, mar_auto, mod_auto, pre_auto
        If pre_auto < Min Then
            aux_num_min_auto = num_auto
            aux_pre_min_auto = pre_auto
            aux_mod_min_auto = mod_auto
            aux_mar_min_auto = mar_auto
            Min = aux_pre_min_auto
        End If
    Loop
    
    Select Case aux_mar_min_auto
    
    Case 1
    aux_mar_min_auto = "CHEVROLET"
    
    Case 2
    aux_mar_min_auto = "FORD"
    
    Case 3
    aux_mar_min_auto = "RENAULT"
    
    Case 4
    aux_mar_min_auto = "TOYOTA"
    
    Case 5
    aux_mar_min_auto = "MERCEDES"
    
    End Select
    
    txtNum.Text = aux_num_min_auto
    cmbMarca.Text = aux_mar_min_auto
    txtModelo.Text = aux_mod_min_auto
    txtPrecio.Text = aux_pre_min_auto
    
    btnSalir.Enabled = True
    btnSalir.SetFocus
    Close #1
End Sub

Private Sub btnCaro_Click()
    Open "autos.dat" For Input As #1
    Max = 0
    
    Do Until EOF(1)
        Input #1, num_auto, mar_auto, mod_auto, pre_auto
        If pre_auto > Max Then
            aux_num_max_auto = num_auto
            aux_pre_max_auto = pre_auto
            aux_mod_max_auto = mod_auto
            aux_mar_max_auto = mar_auto
            Max = aux_pre_max_auto
        End If
    Loop
    
    Select Case aux_mar_max_auto
    
    Case 1
    aux_mar_max_auto = "CHEVROLET"
    
    Case 2
    aux_mar_max_auto = "FORD"
    
    Case 3
    aux_mar_max_auto = "RENAULT"
    
    Case 4
    aux_mar_max_auto = "TOYOTA"
    
    Case 5
    aux_mar_max_auto = "MERCEDES"
    
    End Select
    
    txtNum2.Text = aux_num_max_auto
    cmbMarca2.Text = aux_mar_max_auto
    txtModelo2.Text = aux_mod_max_auto
    txtPrecio2.Text = aux_pre_max_auto
    
    btnSalir.Enabled = True
    btnSalir.SetFocus
    Close #1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Close #1
End Sub

Private Sub Form_Load()
    Me.Height = 10695
    Me.Width = 10800
    Me.Top = ((Screen.Height - Me.Height) / 2) - 650
    Me.Left = ((Screen.Width - Me.Width) / 2)
End Sub

Private Sub btnSalir_Click()
    Close #1
    Unload Me
End Sub
