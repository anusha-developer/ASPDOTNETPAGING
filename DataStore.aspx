<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DataStore.aspx.vb" Inherits="ASPDOTNET_Paging.DataStore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="EmployeeName "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="EmployeeSalary "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmployeeSalary" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save"  ForeColor="Green"/>
                </td>
            </tr>

        </table>
        <div>
            <asp:GridView ID="Data" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" />
                    <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" />
                    <asp:BoundField DataField="EmployeeSalary" HeaderText="EmployeeSalary" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
