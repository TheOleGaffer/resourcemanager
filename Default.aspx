<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="dndhelper._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h1 {
            color: red; text-align: center;
        }
        
    </style>
    <link rel="stylesheet"  href="dndss.css" >

    <div class="jumbotron">
        <img id = "logo" src="pics/dndlogo.png" width="250" height ="200" ><h1>Dungeons and Dragons Resource Manager</h1>
        &nbsp;<p class="lead" >Dungeons and Dragons Resource Manager is a free resource manager for all your Dungeons and Dragons campaign needs.</p>
        <p><a href="~/Account/SignUp" class="btn btn-primary btn-lg" >Sign Up &raquo;</a></p>
        <br />
        <p><a href="~/Account/Login" class="btn btn-primary btn-lg">Log in &raquo;</a></p>

    </div>

    <div class="row">
        <div class="tab">
            <h2><a>Manage Accounts</a></h2>
            <p>
                . 
            </p>
            <p>
                
            </p>
        </div>
        <div class="tab">
            <h2><a>Access Game</a></h2>
            <p>
                .
            </p>
            <p>
            </p>
        </div>
        <div class="tab">
            <h2><a>About/Contact</a></h2>
            <p>
                .
            </p>
            <p>
            </p>
        </div>
    </div>
 
</asp:Content>
