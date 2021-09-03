
Imports System.Data.SqlClient

Public Class PageNavigation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.bindGridview()
        End If
    End Sub

    Private Sub bindGridview()
        Dim DBCS As String = ConfigurationManager.ConnectionStrings("DBCS").ConnectionString
        Using con As New SqlConnection(DBCS)
            Using cmd As New SqlCommand("select * from Tbl_DBEmployee")
                Using Adapter As New SqlDataAdapter()
                    cmd.Connection = con
                    Adapter.SelectCommand = cmd
                    Using dt As New DataTable()
                        Adapter.Fill(dt)
                        Paging.DataSource = dt
                        Paging.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub

    Protected Sub Paging_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        Paging.PageIndex = e.NewPageIndex
        Me.bindGridview()


    End Sub
End Class