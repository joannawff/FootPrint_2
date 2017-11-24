<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectDetail.aspx.cs" Inherits="ProjectDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="ParentList" runat="server" OnItemDataBound="ParentList_OnItemDataBound" HorizontalAlign="Center">
                <ItemTemplate>
                        <div align="center"><asp:Label ID="labTitle" runat="server" Text='<%# Eval("Title")%>'></asp:Label></div>
                        <asp:Label ID="labSurveyId" runat="server" Text='<%# Eval("Id")%>' Visible="false"></asp:Label>
                        <asp:DataList ID="ChildList" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                        <HeaderTemplate>  
                        <table border="1" cellspacing="0" cellpadding="1" align="center" width="1024px">
                            <tr align="center">
                                <th valign:"bottom" width="40px">序号</th>
                                <th valign:"bottom" width="60px">组长兼安全员</th>  
                                <th valign:"bottom" width="90px">工作项目</th>  
                                <th valign:"bottom" width="90px">组员</th>
                                <th colspan="5" valign:"bottom">
                                    <table style="border-collapse: collapse;border: 0px solid #999;" cellspacing="0" cellpadding="1" width="100%">
                                        <tr style="border-bottom:1px solid #999" align="center"><td colspan="5">生产记录</td></tr>
                                        <tr><td style="border-top: 0;border-right: 1px solid #999;border-bottom: 1px solid #999;border-left: 0;width:90px">计划</td>
                                            <td style="border-top: 0;border-right: 1px solid #999;border-bottom: 1px solid #999;border-left: 0;width:140px">实际</td>
                                            <td style="border-top: 0;border-right: 1px solid #999;border-bottom: 1px solid #999;border-left: 0;width:140px">收工时间</td>
                                            <td style="border-top: 0;border-right: 1px solid #999;border-bottom: 1px solid #999;border-left: 0;width:80px">整理资料</td>
                                            <td style="border-top: 0;border-right: 1px solid #999;border-bottom: 1px solid #999;border-left: 0;width:70px">整理资料参与人员</td>
                                        </tr>
                                    </table>
                                </th>
                                <th valign:"bottom" width="70px">使用仪器及设备号</th>
                                <th valign:"bottom" width="100px">用车记录</th>
                                <th valign:"bottom" width="auto">备注</th>
                            </tr>  
                        </HeaderTemplate>  
                        <ItemTemplate>
                            <tr style="background-color:#ffffff; border-bottom: #ffcc66 2px solid;" cellspacing="0" align="center">   
                                <td><asp:Label ID="labID" runat="server" Text='<%# Container.ItemIndex+1 %>'></asp:Label></td>
                                <td><asp:Label ID="lableader" runat="server" Text='<%# Eval("LeaderAndSecurityOfficer")%>'></asp:Label></td>
                                <td><asp:Label ID="labProjectDetail" runat="server" Text='<%# Eval("ProjectDetail")%>'></asp:Label></td>  
                                <td><asp:Label ID="labMembers" runat="server" Text='<%# Eval("Members")%>'></asp:Label></td>
                                <td width="90px"><asp:Label ID="labPlan" runat="server" Text='<%# Eval("Plan")%>'></asp:Label></td>
                                <td width="140px"><asp:Label ID="labActual" runat="server" Text='<%# Eval("Actual")%>'></asp:Label></td>
                                <td width="140px"><asp:Label ID="labOffTime" runat="server" Text='<%# Eval("OffTime")%>'></asp:Label></td>
                                <td width="80px"><asp:Label ID="labSortData" runat="server" Text='<%# Eval("SortData")%>'></asp:Label></td>
                                <td width="70px"><asp:Label ID="labSortDataParticipants" runat="server" Text='<%# Eval("SortDataParticipants")%>'></asp:Label></td>
                                <td><asp:Label ID="labDevice" runat="server" Text='<%# Eval("Device")%>'></asp:Label></td>
                                <td><asp:Label ID="labVehicleRecord" runat="server" Text='<%# Eval("VehicleRecord")%>'></asp:Label></td>
                                <td><asp:Label ID="labRemark" runat="server" Text='<%# Eval("Remark")%>'></asp:Label></td>
                            </tr> 
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr style="background-color:#C1CDC1; border-bottom: #ffcc66 2px solid;" cellspacing="0" align="center">      
                                <td><asp:Label ID="labID" runat="server" Text='<%# Eval("LeaderAndSecurityOfficer")%>'></asp:Label></td>
                                <td><asp:Label ID="labProjectDetail" runat="server" Text='<%# Eval("ProjectDetail")%>'></asp:Label></td>  
                                <td><asp:Label ID="labMembers" runat="server" Text='<%# Eval("Members")%>'></asp:Label></td>
                                <td width="90px"><asp:Label ID="labPlan" runat="server" Text='<%# Eval("Plan")%>'></asp:Label></td>
                                <td width="140px"><asp:Label ID="labActual" runat="server" Text='<%# Eval("Actual")%>'></asp:Label></td>
                                <td width="140px"><asp:Label ID="labOffTime" runat="server" Text='<%# Eval("OffTime")%>'></asp:Label></td>
                                <td width="80px"><asp:Label ID="labSortData" runat="server" Text='<%# Eval("SortData")%>'></asp:Label></td>
                                <td width="70px"><asp:Label ID="labSortDataParticipants" runat="server" Text='<%# Eval("SortDataParticipants")%>'></asp:Label></td>
                                <td><asp:Label ID="labDevice" runat="server" Text='<%# Eval("Device")%>'></asp:Label></td>
                                <td><asp:Label ID="labVehicleRecord" runat="server" Text='<%# Eval("VehicleRecord")%>'></asp:Label></td>
                                <td><asp:Label ID="labRemark" runat="server" Text='<%# Eval("Remark")%>'></asp:Label></td>
                            </tr> 
                        </AlternatingItemTemplate>
                        <FooterTemplate>
                        </table>  
                        </FooterTemplate> 
                    </asp:DataList>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
