Imports System.Data.SqlClient
Module MasterConnection
    Public connection As New SqlConnection("Data Source=USUARIO-PC\SQLEXPRESS;Initial Catalog=BASEPRUEBA;Integrated Security=True")

    Sub Abrir()
        If connection.State = 0 Then
            connection.Open()
        End If
    End Sub

    Sub Cerrar()
        If connection.State = 1 Then
            connection.Close()
        End If
    End Sub
End Module
