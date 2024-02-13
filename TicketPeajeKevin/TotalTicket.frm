VERSION 5.00
Begin VB.Form TotalTicket 
   Caption         =   "Ticket Peaje"
   ClientHeight    =   9240
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15435
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9240
   ScaleWidth      =   15435
   Begin VB.CommandButton btnTotal 
      Caption         =   "Total"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   6600
      TabIndex        =   0
      Top             =   7560
      Width           =   2295
   End
   Begin VB.Label lblDecimo 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4320
      TabIndex        =   18
      Top             =   5880
      Width           =   2295
   End
   Begin VB.Label lblNoveno 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3840
      TabIndex        =   17
      Top             =   4920
      Width           =   1575
   End
   Begin VB.Label lblOctavo 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   12120
      TabIndex        =   16
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label lblSeptimo 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9240
      TabIndex        =   15
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label lblSexto 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6360
      TabIndex        =   14
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label lblQuinto 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3720
      TabIndex        =   13
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label Label8 
      Caption         =   "Camiones y otros"
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
      Left            =   12600
      TabIndex        =   12
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label Label7 
      Caption         =   "Camionetas"
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
      Left            =   9720
      TabIndex        =   11
      Top             =   360
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "Autos"
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
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Motos"
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
      Left            =   4320
      TabIndex        =   9
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "Importes recaudados por categorias"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   8
      Top             =   1080
      Width           =   2895
   End
   Begin VB.Label lblPrimero 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3720
      TabIndex        =   7
      Top             =   1080
      Width           =   2295
   End
   Begin VB.Label Label4 
      Caption         =   "Cantidad de ticket por categoria"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   6
      Top             =   2640
      Width           =   2895
   End
   Begin VB.Label lblSegundo 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6360
      TabIndex        =   5
      Top             =   1080
      Width           =   2415
   End
   Begin VB.Label lblCuarto 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   12240
      TabIndex        =   4
      Top             =   1080
      Width           =   2415
   End
   Begin VB.Label Label3 
      Caption         =   "Total de dinero recaudado"
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
      Left            =   840
      TabIndex        =   3
      Top             =   6000
      Width           =   3375
   End
   Begin VB.Label lblTercero 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9240
      TabIndex        =   2
      Top             =   1080
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "Total general de ticket"
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
      Left            =   840
      TabIndex        =   1
      Top             =   5040
      Width           =   2895
   End
End
Attribute VB_Name = "TotalTicket"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Nro_tic As Integer
Dim Fec_tic As Double
Dim Cat_tic As Integer
Dim TotalTicket As Integer
Dim TotalDinero As Double

Private Sub btnTotal_Click()
Open "ticket.dat" For Input As #1

Do Until EOF(1)
    Input #1, Nro_tic, Fec_tic, Cat_tic
    Select Case Cat_tic
        Case 1
        AuxPreTotal = AuxPreTotal + 100
        CantTickets = CantTickets + 1
        Case 2
        AuxPreTotal2 = AuxPreTotal2 + 150
        CantTickets2 = CantTickets2 + 1
        Case 3
        AuxPreTotal3 = AuxPreTotal3 + 200
        CantTickets3 = CantTickets3 + 1
        Case 4
        AuxPreTotal4 = AuxPreTotal4 + 500
        CantTickets4 = CantTickets4 + 1
    End Select
    TotalDinero = AuxPreTotal + AuxPreTotal2 + AuxPreTotal3 + AuxPreTotal4
    TotalTicket = CantTickets + CantTickets2 + CantTickets3 + CantTickets4
Loop
Close #1

lblPrimero.Caption = Format(AuxPreTotal, "$##0.00")
lblSegundo.Caption = Format(AuxPreTotal2, "$##0.00")
lblTercero.Caption = Format(AuxPreTotal3, "$##0.00")
lblCuarto.Caption = Format(AuxPreTotal4, "$##0.00")
lblQuinto.Caption = CantTickets
lblSexto.Caption = CantTickets2
lblSeptimo.Caption = CantTickets3
lblOctavo.Caption = CantTickets4
lblNoveno.Caption = TotalTicket
lblDecimo.Caption = Format(TotalDinero, "$##0.00")

btnTotal.Enabled = False
End Sub

Private Sub Form_Load()
Me.Height = 9825
Me.Width = 15675
Me.Top = ((Screen.Height - Me.Height) / 2) - 650
Me.Left = ((Screen.Width - Me.Width) / 2)
End Sub

Private Sub Form_Unload(Cancel As Integer)
Close #1
Unload Me
End Sub

