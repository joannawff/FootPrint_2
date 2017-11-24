<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Project.aspx.cs" Inherits="Project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:DataList ID="dlProjectList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" HorizontalAlign="Center">
                <HeaderTemplate>  
                    <table border="1" cellspacing="0" cellpadding="1" align="center" width="500px"> 
                        <tr>      
                            <th>序号</th>  
                            <th>名称</th>  
                            <th>负责人</th>
                            <th>联系方式</th>
                            <th>驻地</th>
                        </tr>  
                </HeaderTemplate>  
                <ItemTemplate>
                    <tr style="background-color:#ffffff; border-bottom: #ffcc66 2px solid;" cellspacing="0" align="center">
                        <td><asp:Label ID="labID" runat="server" Text='<%# Container.ItemIndex+1 %>'></asp:Label></td>
                        <td><asp:HyperLink ID="lkProjectName" runat="server" NavigateUrl='<%#"~/ProjectDetail.aspx?id="+Eval("id")%>'><%# Eval("ProjectName")%></asp:HyperLink></td>
                        <td><asp:Label ID="labManager" runat="server" Text='<%# Eval("UserName")%>'></asp:Label></td>
                        <td><asp:Label ID="labTel" runat="server" Text='<%# Eval("Tel")%>'></asp:Label></td>
                        <td><asp:Label ID="labResident" runat="server" Text='<%# Eval("Resident")%>'></asp:Label></td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="background-color:#C1CDC1; border-bottom: #ffcc66 2px solid;" cellspacing="0" align="center">
                        <td><asp:Label ID="labID" runat="server" Text='<%# Container.ItemIndex+1 %>'></asp:Label></td>
                        <td><asp:HyperLink ID="lkProjectName" runat="server" NavigateUrl='<%#"~/ProjectDetail.aspx?id="+Eval("id")%>'><%# Eval("ProjectName")%></asp:HyperLink></td>
                        <td><asp:Label ID="labManager" runat="server" Text='<%# Eval("UserName")%>'></asp:Label></td>
                        <td><asp:Label ID="labTel" runat="server" Text='<%# Eval("Tel")%>'></asp:Label></td>
                        <td><asp:Label ID="labResident" runat="server" Text='<%# Eval("Resident")%>'></asp:Label></td>
                    </tr>
                </AlternatingItemTemplate>
                <FooterTemplate>  
                    </table>  
                </FooterTemplate> 
            </asp:DataList>
        </div>
    </form>
</body>
</html>
