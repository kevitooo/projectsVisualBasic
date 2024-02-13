Imports System.Data.SqlClient
Public Class Register
    Private Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Try
            Dim cmd As New SqlCommand
            Abrir()
            cmd = New SqlCommand("insertar_usuario", connection)
            cmd.CommandType = 4
            cmd.Parameters.AddWithValue("@Login", txtLogin.Text)
            cmd.Parameters.AddWithValue("@nombres", txtNombres.Text)
            cmd.Parameters.AddWithValue("@Password", txtPass.Text)
            cmd.ExecuteNonQuery()
            Cerrar()
        Catch ex As Exception : MsgBox(ex.Message, MsgBoxStyle.Information, "Registro")

        End Try
        Limpiar()
    End Sub

    Sub Limpiar()
        txtLogin.Clear()
        txtNombres.Clear()
        txtPass.Clear()
        btnRegister.Enabled = False
        txtNombres.Enabled = False
        txtPass.Enabled = False
    End Sub

    Private Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Close()
    End Sub

    Private Sub Register_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        btnRegister.Enabled = False
        txtNombres.Enabled = False
        txtPass.Enabled = False
    End Sub

    Private Sub txtLogin_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtLogin.KeyPress
        If Asc(e.KeyChar) = 13 Then
            Dim mensaje As String
            If txtLogin.Text = "" Then
                txtLogin.Focus()
                mensaje = MsgBox("No podes dejar el campo vacio", MsgBoxStyle.Critical, "Error")
            Else
                txtNombres.Focus()
                txtNombres.Enabled = True
            End If
        End If
    End Sub

    Private Sub txtNombres_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtNombres.KeyPress
        If Asc(e.KeyChar) = 13 Then
            Dim mensaje As String
            If txtNombres.Text = "" Then
                txtNombres.Focus()
                mensaje = MsgBox("No podes dejar el campo vacio", MsgBoxStyle.Critical, "Error")
            Else
                txtPass.Focus()
                txtPass.Enabled = True
            End If
        End If
    End Sub

    Private Sub txtPass_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtPass.KeyPress
        If Asc(e.KeyChar) = 13 Then
            Dim mensaje As String
            If txtPass.Text = "" Then
                txtPass.Focus()
                mensaje = MsgBox("No podes dejar el campo vacio", MsgBoxStyle.Critical, "Error")
            Else
                btnRegister.Enabled = True
            End If
        End If
    End Sub
End Class