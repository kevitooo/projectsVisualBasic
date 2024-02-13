<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class MainPage
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(MainPage))
        Me.MenuBar = New System.Windows.Forms.MenuStrip()
        Me.ArchivoToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.NuevaVentaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NuevaVentaToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.GastosToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ClientesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SalirToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ConfiguraciónToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MiCuentaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.VistaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AyudaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.Button7 = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.btnSales = New System.Windows.Forms.Button()
        Me.btnHome = New System.Windows.Forms.Button()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.TodasTusVentasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.TodasTusComprasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RecuperarMiContraseñaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NuevoGastoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CrearNuevoClienteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuBar.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'MenuBar
        '
        Me.MenuBar.BackColor = System.Drawing.Color.White
        Me.MenuBar.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ArchivoToolStripMenuItem1, Me.ConfiguraciónToolStripMenuItem, Me.VistaToolStripMenuItem, Me.AyudaToolStripMenuItem})
        Me.MenuBar.Location = New System.Drawing.Point(0, 0)
        Me.MenuBar.Name = "MenuBar"
        Me.MenuBar.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.MenuBar.Size = New System.Drawing.Size(1579, 24)
        Me.MenuBar.TabIndex = 4
        Me.MenuBar.Text = "MenuStrip1"
        '
        'ArchivoToolStripMenuItem1
        '
        Me.ArchivoToolStripMenuItem1.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NuevaVentaToolStripMenuItem, Me.GastosToolStripMenuItem, Me.ClientesToolStripMenuItem, Me.SalirToolStripMenuItem})
        Me.ArchivoToolStripMenuItem1.Name = "ArchivoToolStripMenuItem1"
        Me.ArchivoToolStripMenuItem1.Size = New System.Drawing.Size(60, 20)
        Me.ArchivoToolStripMenuItem1.Text = "Archivo"
        '
        'NuevaVentaToolStripMenuItem
        '
        Me.NuevaVentaToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NuevaVentaToolStripMenuItem1})
        Me.NuevaVentaToolStripMenuItem.Name = "NuevaVentaToolStripMenuItem"
        Me.NuevaVentaToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.NuevaVentaToolStripMenuItem.Text = "Ventas"
        '
        'NuevaVentaToolStripMenuItem1
        '
        Me.NuevaVentaToolStripMenuItem1.Name = "NuevaVentaToolStripMenuItem1"
        Me.NuevaVentaToolStripMenuItem1.Size = New System.Drawing.Size(180, 22)
        Me.NuevaVentaToolStripMenuItem1.Text = "Crear nueva venta"
        '
        'GastosToolStripMenuItem
        '
        Me.GastosToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NuevoGastoToolStripMenuItem})
        Me.GastosToolStripMenuItem.Name = "GastosToolStripMenuItem"
        Me.GastosToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.GastosToolStripMenuItem.Text = "Gastos"
        '
        'ClientesToolStripMenuItem
        '
        Me.ClientesToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CrearNuevoClienteToolStripMenuItem})
        Me.ClientesToolStripMenuItem.Name = "ClientesToolStripMenuItem"
        Me.ClientesToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.ClientesToolStripMenuItem.Text = "Clientes"
        '
        'SalirToolStripMenuItem
        '
        Me.SalirToolStripMenuItem.Name = "SalirToolStripMenuItem"
        Me.SalirToolStripMenuItem.Size = New System.Drawing.Size(116, 22)
        Me.SalirToolStripMenuItem.Text = "Salir"
        '
        'ConfiguraciónToolStripMenuItem
        '
        Me.ConfiguraciónToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MiCuentaToolStripMenuItem})
        Me.ConfiguraciónToolStripMenuItem.Name = "ConfiguraciónToolStripMenuItem"
        Me.ConfiguraciónToolStripMenuItem.Size = New System.Drawing.Size(95, 20)
        Me.ConfiguraciónToolStripMenuItem.Text = "Configuración"
        '
        'MiCuentaToolStripMenuItem
        '
        Me.MiCuentaToolStripMenuItem.Name = "MiCuentaToolStripMenuItem"
        Me.MiCuentaToolStripMenuItem.Size = New System.Drawing.Size(127, 22)
        Me.MiCuentaToolStripMenuItem.Text = "Mi cuenta"
        '
        'VistaToolStripMenuItem
        '
        Me.VistaToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.TodasTusVentasToolStripMenuItem, Me.TodasTusComprasToolStripMenuItem})
        Me.VistaToolStripMenuItem.Name = "VistaToolStripMenuItem"
        Me.VistaToolStripMenuItem.Size = New System.Drawing.Size(35, 20)
        Me.VistaToolStripMenuItem.Text = "Ver"
        '
        'AyudaToolStripMenuItem
        '
        Me.AyudaToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RecuperarMiContraseñaToolStripMenuItem})
        Me.AyudaToolStripMenuItem.Name = "AyudaToolStripMenuItem"
        Me.AyudaToolStripMenuItem.Size = New System.Drawing.Size(53, 20)
        Me.AyudaToolStripMenuItem.Text = "Ayuda"
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.White
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Panel1.Controls.Add(Me.Button7)
        Me.Panel1.Controls.Add(Me.Button6)
        Me.Panel1.Controls.Add(Me.Button5)
        Me.Panel1.Controls.Add(Me.Button4)
        Me.Panel1.Controls.Add(Me.Button3)
        Me.Panel1.Controls.Add(Me.btnSales)
        Me.Panel1.Controls.Add(Me.btnHome)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Left
        Me.Panel1.Location = New System.Drawing.Point(0, 24)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(154, 754)
        Me.Panel1.TabIndex = 5
        '
        'Button7
        '
        Me.Button7.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button7.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button7.Image = CType(resources.GetObject("Button7.Image"), System.Drawing.Image)
        Me.Button7.Location = New System.Drawing.Point(-1, 473)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(154, 80)
        Me.Button7.TabIndex = 6
        Me.Button7.Text = "Estadísticas"
        Me.Button7.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.Button7.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button7.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button6.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button6.Image = CType(resources.GetObject("Button6.Image"), System.Drawing.Image)
        Me.Button6.Location = New System.Drawing.Point(-1, 157)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(154, 80)
        Me.Button6.TabIndex = 5
        Me.Button6.Text = "Gastos"
        Me.Button6.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.Button6.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button6.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button5.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button5.Image = CType(resources.GetObject("Button5.Image"), System.Drawing.Image)
        Me.Button5.Location = New System.Drawing.Point(-1, 394)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(154, 80)
        Me.Button5.TabIndex = 4
        Me.Button5.Text = "Proveedores"
        Me.Button5.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.Button5.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button4.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button4.Image = CType(resources.GetObject("Button4.Image"), System.Drawing.Image)
        Me.Button4.Location = New System.Drawing.Point(-1, 315)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(154, 80)
        Me.Button4.TabIndex = 3
        Me.Button4.Text = "Productos"
        Me.Button4.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.Button4.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button3.Image = CType(resources.GetObject("Button3.Image"), System.Drawing.Image)
        Me.Button3.Location = New System.Drawing.Point(-1, 236)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(154, 80)
        Me.Button3.TabIndex = 2
        Me.Button3.Text = "Clientes"
        Me.Button3.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.Button3.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.Button3.UseVisualStyleBackColor = True
        '
        'btnSales
        '
        Me.btnSales.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnSales.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnSales.Image = CType(resources.GetObject("btnSales.Image"), System.Drawing.Image)
        Me.btnSales.Location = New System.Drawing.Point(-1, 78)
        Me.btnSales.Name = "btnSales"
        Me.btnSales.Size = New System.Drawing.Size(154, 80)
        Me.btnSales.TabIndex = 1
        Me.btnSales.Text = "Ventas"
        Me.btnSales.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.btnSales.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.btnSales.UseVisualStyleBackColor = True
        '
        'btnHome
        '
        Me.btnHome.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.btnHome.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnHome.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnHome.Image = CType(resources.GetObject("btnHome.Image"), System.Drawing.Image)
        Me.btnHome.Location = New System.Drawing.Point(-1, -1)
        Me.btnHome.Name = "btnHome"
        Me.btnHome.Size = New System.Drawing.Size(154, 80)
        Me.btnHome.TabIndex = 0
        Me.btnHome.Text = "Inicio"
        Me.btnHome.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.btnHome.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        Me.btnHome.UseVisualStyleBackColor = True
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.WhiteSmoke
        Me.Panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Panel2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel2.Location = New System.Drawing.Point(154, 24)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(1425, 754)
        Me.Panel2.TabIndex = 6
        '
        'TodasTusVentasToolStripMenuItem
        '
        Me.TodasTusVentasToolStripMenuItem.Name = "TodasTusVentasToolStripMenuItem"
        Me.TodasTusVentasToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.TodasTusVentasToolStripMenuItem.Text = "Todas tus ventas"
        '
        'TodasTusComprasToolStripMenuItem
        '
        Me.TodasTusComprasToolStripMenuItem.Name = "TodasTusComprasToolStripMenuItem"
        Me.TodasTusComprasToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.TodasTusComprasToolStripMenuItem.Text = "Todas tus compras"
        '
        'RecuperarMiContraseñaToolStripMenuItem
        '
        Me.RecuperarMiContraseñaToolStripMenuItem.Name = "RecuperarMiContraseñaToolStripMenuItem"
        Me.RecuperarMiContraseñaToolStripMenuItem.Size = New System.Drawing.Size(205, 22)
        Me.RecuperarMiContraseñaToolStripMenuItem.Text = "Recuperar mi contraseña"
        '
        'NuevoGastoToolStripMenuItem
        '
        Me.NuevoGastoToolStripMenuItem.Name = "NuevoGastoToolStripMenuItem"
        Me.NuevoGastoToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.NuevoGastoToolStripMenuItem.Text = "Crear nuevo gasto"
        '
        'CrearNuevoClienteToolStripMenuItem
        '
        Me.CrearNuevoClienteToolStripMenuItem.Name = "CrearNuevoClienteToolStripMenuItem"
        Me.CrearNuevoClienteToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.CrearNuevoClienteToolStripMenuItem.Text = "Crear nuevo cliente"
        '
        'MainPage
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ButtonHighlight
        Me.ClientSize = New System.Drawing.Size(1579, 778)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.MenuBar)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MainMenuStrip = Me.MenuBar
        Me.Name = "MainPage"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "MainPage"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.MenuBar.ResumeLayout(False)
        Me.MenuBar.PerformLayout()
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents MenuBar As MenuStrip
    Friend WithEvents ArchivoToolStripMenuItem1 As ToolStripMenuItem
    Friend WithEvents NuevaVentaToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents VistaToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents AyudaToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents Panel1 As Panel
    Friend WithEvents Panel2 As Panel
    Friend WithEvents Button7 As Button
    Friend WithEvents Button6 As Button
    Friend WithEvents Button5 As Button
    Friend WithEvents Button4 As Button
    Friend WithEvents Button3 As Button
    Friend WithEvents btnSales As Button
    Friend WithEvents btnHome As Button
    Friend WithEvents SalirToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ConfiguraciónToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents NuevaVentaToolStripMenuItem1 As ToolStripMenuItem
    Friend WithEvents GastosToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ClientesToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents MiCuentaToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents NuevoGastoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CrearNuevoClienteToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents TodasTusVentasToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents TodasTusComprasToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents RecuperarMiContraseñaToolStripMenuItem As ToolStripMenuItem
End Class
