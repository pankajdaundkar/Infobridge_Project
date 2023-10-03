<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Infobridge.Employee" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body{
            background-color:darkgrey;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 582px;
        }
        .auto-style3 {
            width: 582px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 582px;
            height: 33px;
        }.emp{
             border:2px solid black;
             padding-left:8px;
         }
        </style>
</head>
<body>
    <h3>Employee Registration</h3>
    <div class="emp">
      <form id="form1" runat="server">
        <div class="register">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbId" runat="server" Text="Id" Font-Bold="True"></asp:Label>
                        <br />
                       <asp:TextBox ID="txtId" runat="server" Height="46px" Width="200px"></asp:TextBox> <br />


                    </td>
                    <td class="auto-style4" rowspan="9" style="margin-left:50px" > 
                        <h3>Employee Details</h3>
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style6" ForeColor="Black" Height="484px" Width="745px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField HeaderText="Id" DataField="Id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField ApplyFormatInEditMode="True" DataField="DateOfBirth" HeaderText="DateOfBirth" />
                                <asp:BoundField DataField="Sex" HeaderText="Sex" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                <asp:BoundField DataField="Address" HeaderText="Address" />                                                                               

                              <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                                <ControlStyle height="80px" Width="60px"/>
                </asp:ImageField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="LbName" runat="server" Text="Name" Font-Bold="True"></asp:Label><br />
                        <asp:TextBox ID="txtName" runat="server" Height="43px" Width="200px"></asp:TextBox><br />
                    </td>
                 </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="LbDOB" runat="server" Text="DOB" Font-Bold="True"></asp:Label><br />
                         <asp:TextBox ID="txtDob" runat="server" Height="46px" Width="200px"></asp:TextBox><br />
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbSex" runat="server" Text="Sex" Font-Bold="True"></asp:Label><br />
                          <asp:TextBox ID="txtSex" runat="server" Height="45px" Width="200px"></asp:TextBox><br />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbPhone" runat="server" Text="Phone" Font-Bold="True"></asp:Label><br />
                        <asp:TextBox ID="txtPhone" runat="server" Height="46px" Width="200px"></asp:TextBox><br />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbAddress" runat="server" Text="Address" Font-Bold="True"></asp:Label><br />
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox><br />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;&nbsp;
                        <asp:Label ID="Image" runat="server" Text="Image" Font-Bold="True"></asp:Label><br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="46px" />
                        <br />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="BtSave" runat="server" Text="Add" Width="65px" OnClick="BtSave_Click" />
                        <asp:Button ID="lbUpdate" runat="server" Text="Update" OnClick="lbUpdate_Click" />
                        <asp:Button ID="btDelete" runat="server" Text="Delete" OnClick="btDelete_Click" />
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        <asp:Button ID="btShow" runat="server" Text="Show All" style="width: 94px" />
                        <br />
                        <br />
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                
            </table>
        </div>
       
    </form>
        </div>
        </body>
</html>