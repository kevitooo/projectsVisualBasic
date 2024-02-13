Imports System.Data.SqlClient
Public Class Login
    Private Sub btnNewUser_Click(sender As Object, e As EventArgs) Handles btnNewUser.Click
        Register.Visible = True
    End Sub

    Private Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        Close()
    End Sub

    'Sub CargarUsuarios()
    '    Dim dt As New DataTable
    '    Dim da As SqlDataAdapter
    '    Try
    '        Abrir()
    '        da = New SqlDataAdapter("validar_usuario", connection)
    '        da.SelectCommand.CommandType = 4
    '        da.SelectCommand.Parameters.AddWithValue("@Login", txtUser.Text)
    '        da.SelectCommand.Parameters.AddWithValue("@Password", txtPassword.Text)
    '        da.Fill(dt)
    '        datalistado.DataSource = dt
    '        Cerrar()
    '    Catch ex As Exception
    '        MessageBox.Show(ex.Message)
    '    End Try
    'End Sub

    'Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
    '    CargarUsuarios()
    '    If datalistado.RowCount > 0 Then
    '        Dispose()
    '        MainPage.ShowDialog()
    '    Else
    '        MessageBox.Show("Verifique su usuario y contraseña", "Error al iniciar sesión", MessageBoxButtons.OK, MessageBoxIcon.Error)
    '    End If
    'End Sub
End Class
