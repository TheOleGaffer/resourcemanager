<%@ Page Title="My Games" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SessionSelection.aspx.cs" Inherits="ResourceManager.Pages.SessionSelection" %>
<%@ Import Namespace="System.Web.Script.Serialization" %>



<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
    
    <h1>My Game Sessions</h1>
    <div id="sessionList">
            <button id="createsessionbtn" onServerClick="createButton_Click" runat="server"></button>
    </div>

    <script type = "text/javascript" src="/Scripts/GameSessions.js"></script>
    <link rel="stylesheet" type="text/css"  href="/Content/GameSession.css" />

</asp:Content>