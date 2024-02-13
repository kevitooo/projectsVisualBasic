Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class Usuarios
    Sub Mostrar()
        Dim dt As New DataTable
        Dim da As SqlDataAdapter
        Dim procedimiento As String
        procedimiento = "select idUsuario, Nombre_y_Apellidos as Nombre_y_Apellidos, Login as Login, Password as Password, Icono, Nombre_de_Icono, Correo, Rol, Estado from USUARIO2"
        Try
            abrir()
            da = New SqlDataAdapter(procedimiento, conexion)
            dataListado.DataSource = dt
            cerrar()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try

        Try
            dataListado.Columns(0).Width = 40
            dataListado.Columns(1).Visible = False
            dataListado.Columns(5).Visible = False
            dataListado.Columns(6).Visible = False
            dataListado.Columns(7).Visible = False
            dataListado.Columns(8).Visible = False
            dataListado.Columns(4).Visible = False
            dataListado.Columns(1).Width = 300

            Me.dataListado.EnableHeadersVisualStyles = False
            Dim styCabeceras As DataGridViewCellStyle = New DataGridViewCellStyle()
            styCabeceras.BackColor = Color.White
            styCabeceras.ForeColor = Color.Black
            styCabeceras.Font = New Font("Segoe UI", 10, FontStyle.Regular Or FontStyle.Bold)
            Me.dataListado.ColumnHeadersDefaultCellStyle = styCabeceras

            For Each row As DataGridViewRow In dataListado.Rows
                If row.Cells("Estado").Value = "ELIMINADO" Then
                    row.DefaultCellStyle.Font = New Font("Segoe UI", 10, FontStyle.Strikeout Or FontStyle.Bold)
                    row.DefaultCellStyle.ForeColor = Color.Red
                End If
            Next
        Catch ex As Exception

        End Try
    End Sub

    Public Function Validar_Mail(ByVal sMail As String) As Boolean
        Return Regex.IsMatch(sMail, "^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$")
    End Function

    Private Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        If Validar_Mail(LCase(txtMail.Text)) = False Then
            MessageBox.Show("Dirección de correo no válida, el correo debe tener el formato: nombre@dominio.com, " & "por favor seleccione un correo válido", "Validación de correo electrónico", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
            txtMail.Focus()
            txtMail.SelectAll()
        Else
            Dim Contrasena_Encryptada As String
            Contrasena_Encryptada = Encriptar(Me.txtContrasena.Text.Trim)
            If txtNom.Text <> "" Or txtContrasena.Text <> "" And cmbRol.Text <> "" Then
                Try
                    Dim cmd As New SqlCommand
                    abrir()
                    cmd = New SqlCommand("insertar_usuario", conexion)
                    cmd.CommandType = 4
                    cmd.Parameters.AddWithValue("@Nombre_y_Apellidos", txtNom.Text)
                    cmd.Parameters.AddWithValue("@Login", txtUsuario.Text)
                    cmd.Parameters.AddWithValue("@Password", txtContrasena.Text)
                    cmd.Parameters.AddWithValue("@Correo", txtMail.Text)
                    cmd.Parameters.AddWithValue("@Rol", cmbRol.Text)
                    cmd.Parameters.AddWithValue("@Estado", "ACTIVO")
                    cmd.ExecuteNonQuery()
                    cerrar()
                    Mostrar()
                    PnlAgregarUsuarios.Visible = False
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            Else
                MessageBox.Show("Asegúrese de haber llenado todos los campos para poder continuar", "Error al registrarse", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        End If
    End Sub

    Private Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Dim Contrasena_Encryptada2 As String
        Contrasena_Encryptada2 = Encriptar(Me.txtContrasena.Text.Trim)
        Dim cmd As New SqlCommand
        If txtNom.Text <> "" And cmbRol.Text <> "" Then
            Try
                abrir()
                cmd = New SqlCommand("editar_usuario", conexion)
                cmd.CommandType = 4
                cmd.Parameters.AddWithValue("@idUsuario", dataListado.SelectedCells.Item(1).Value)
                cmd.Parameters.AddWithValue("@Nombre_y_Apellidos", txtNom.Text)
                cmd.Parameters.AddWithValue("@Password", Contrasena_Encryptada2)
            Catch ex As Exception

            End Try
        End If
    End Sub

    Private Sub dataListado_CellDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles dataListado.CellDoubleClick

    End Sub
End Class