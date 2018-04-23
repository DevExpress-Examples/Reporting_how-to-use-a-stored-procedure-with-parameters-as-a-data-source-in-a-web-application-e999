﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.XtraReports.v7.3.Web, Version=7.3.12.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="ContactName" 
            DataValueField="CustomerID" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [CustomerID], [ContactName] FROM Customers">
        </asp:SqlDataSource>
        <dxxr:ReportViewer ID="ReportViewer1" runat="server">
        </dxxr:ReportViewer>
    
    </div>
    </form>
</body>
</html>