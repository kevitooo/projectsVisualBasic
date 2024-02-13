VERSION 5.00
Begin VB.MDIForm MDITicket 
   BackColor       =   &H8000000C&
   Caption         =   "Ticket Peaje"
   ClientHeight    =   3015
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   4560
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu CargaTickets 
      Caption         =   "Cargar"
   End
   Begin VB.Menu TotalesTickets 
      Caption         =   "Totales"
   End
End
Attribute VB_Name = "MDITicket"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CargaTickets_Click()
CargaTicket.Show
End Sub

Private Sub TotalesTickets_Click()
TotalTicket.Show
End Sub
