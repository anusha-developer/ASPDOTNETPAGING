<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PageNavigation.aspx.vb" Inherits="ASPDOTNET_Paging.PageNavigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="PageNavigation" Font-Size="Large"   ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            
            <asp:GridView ID="Paging" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="Paging_PageIndexChanging" PageSize="10">
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
