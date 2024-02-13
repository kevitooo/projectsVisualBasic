VERSION 5.00
Begin VB.Form IniciarSesion 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Sistema Bancario"
   ClientHeight    =   8145
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14610
   FillStyle       =   0  'Solid
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8145
   ScaleWidth      =   14610
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btnIniciar 
      BackColor       =   &H8000000D&
      Caption         =   "Iniciar sesión"
      BeginProperty Font 
         Name            =   "Candara"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9360
      MaskColor       =   &H80000005&
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   4680
      UseMaskColor    =   -1  'True
      Width           =   3375
   End
   Begin VB.TextBox txtContrasena 
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
      Left            =   9360
      TabIndex        =   1
      Top             =   3720
      Width           =   3375
   End
   Begin VB.TextBox txtUsuario 
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
      Left            =   9360
      TabIndex        =   0
      Top             =   2520
      Width           =   3375
   End
   Begin VB.Image Image3 
      Height          =   555
      Left            =   8640
      Picture         =   "IniciarSesion.frx":0000
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   585
   End
   Begin VB.Image Image2 
      DragIcon        =   "IniciarSesion.frx":1084A
      Height          =   585
      Left            =   8640
      Picture         =   "IniciarSesion.frx":21094
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   615
   End
End
Attribute VB_Name = "IniciarSesion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
