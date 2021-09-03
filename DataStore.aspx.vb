
Imports System.Data.SqlClient

Public Class DataStore
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GvBind()
    End Sub
    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim con As New SqlConnection("data source=.; database=DBEmployee; integrated security=SSPI")
        Dim cmd As New SqlCommand
        con.Open()
        cmd = New SqlCommand("insert into Tbl_DBEmployee values('" & txtEmployeeName.Text & "','" & txtEmployeeSalary.Text & "')", con)
        If (txtEmployeeName.Text = "" Or txtEmployeeSalary.Text = "") Then
            MsgBox("please enter the feild")
        Else
            cmd.ExecuteNonQuery()
            con.Close()
            MsgBox("data stored successfully", MsgBoxStyle.Information)
            GvBind()
        End If
    End Sub
    Protected Sub GvBind()
        Dim con As New SqlConnection("data source=.; database=DBEmployee; integrated security=SSPI")
        Dim table As New DataTable()
        Dim adapter = New SqlDataAdapter("select * from Tbl_DBEmployee", con)
        adapter.Fill(table)
        Data.DataSource = table
        Data.DataBind()

    End Sub
End Class