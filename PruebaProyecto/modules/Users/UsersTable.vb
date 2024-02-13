Imports System.Data.SqlClient
Public Class UsersTable
    Sub SHOWME()
        Dim dt As New DataTable
        Dim da As SqlDataAdapter
        Try
            Abrir()
            da = New SqlDataAdapter("mostrar_usuario", connection)
            da.Fill(dt)
            dataListado.DataSource = dt
            Cerrar()
        Catch ex As Exception : MessageBox.Show(ex.Message)

        End Try
    End Sub

    Private Sub UsersTable_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        PanelAddUser.Visible = False
        SHOWME()
    End Sub

    Private Sub ImageAddUser_Click(sender As Object, e As EventArgs) Handles ImageAddUser.Click
        PanelAddUser.Visible = True
    End Sub

    Private Sub btnVolver_Click(sender As Object, e As EventArgs) Handles btnVolver.Click
        PanelAddUser.Visible = False
    End Sub

    Private Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click

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
            SHOWME()
        Catch ex As Exception : MsgBox(ex.Message, MsgBoxStyle.Information, "Registro")

        End Try
    End Sub

    Private Sub btnCambiar_Click(sender As Object, e As EventArgs) Handles btnCambiar.Click
        Try
            Dim cmd As New SqlCommand
            Abrir()
            cmd = New SqlCommand("editar_usuario", connection)
            cmd.CommandType = 4
            cmd.Parameters.AddWithValue("@IDUsuario", lblID.Text)
            cmd.Parameters.AddWithValue("@Login", txtLogin.Text)
            cmd.Parameters.AddWithValue("@nombres", txtNombres.Text)
            cmd.Parameters.AddWithValue("@Password", txtPass.Text)
            cmd.ExecuteNonQuery()
            Cerrar()
            SHOWME()
        Catch ex As Exception : MsgBox(ex.Message, MsgBoxStyle.Information, "Registro")

        End Try
    End Sub

    Private Sub dataListado_CellDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles dataListado.CellDoubleClick
        Try
            PanelAddUser.Visible = True
            lblID.Text = dataListado.SelectedCells.Item(1).Value
            txtNombres.Text = dataListado.SelectedCells.Item(2).Value
            txtLogin.Text = dataListado.SelectedCells.Item(3).Value
            txtPass.Text = dataListado.SelectedCells.Item(4).Value
        Catch ex As Exception

        End Try
    End Sub

    Private Sub dataListado_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles dataListado.CellClick
        If e.ColumnIndex = Me.dataListado.Columns.Item("Eli").Index Then
            Dim result As DialogResult
            result = MessageBox.Show("¿Realmente desea eliminar este usuario?", "Eliminar usuario", MessageBoxButtons.OKCancel, MessageBoxIcon.Question)
            If result = DialogResult.OK Then
                Try
                    Dim cmd As New SqlCommand
                    Abrir()
                    cmd = New SqlCommand("eliminar_usuario", connection)
                    cmd.CommandType = 4
                    cmd.Parameters.AddWithValue("@IDUsuario", dataListado.SelectedCells.Item(1).Value)
                    cmd.ExecuteNonQuery()
                    Cerrar()
                    SHOWME()
                Catch ex As Exception : MsgBox(ex.Message)

                End Try
            Else

            End If
        End If
    End Sub

    Private Sub txtBuscar_TextChanged(sender As Object, e As EventArgs) Handles txtBuscar.TextChanged
        Dim dt As New DataTable
        Dim da As SqlDataAdapter
        Try
            Abrir()
            da = New SqlDataAdapter("buscar_usuarios", connection)
            da.SelectCommand.CommandType = 4
            da.SelectCommand.Parameters.AddWithValue("@letra", txtBuscar.Text)
            da.Fill(dt)
            dataListado.DataSource = dt
            Cerrar()
        Catch ex As Exception : MessageBox.Show(ex.Message)

        End Try
    End Sub
End Class