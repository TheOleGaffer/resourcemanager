<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ResourceManager._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Resource Manager</h1>
        <p class="lead">Resource Manager is a simple, free solution for all your Dungeons and Dragons 5th Edition campaign needs.</p>
        <p><a href="/Pages/SignUp" class="btn btn-primary btn-lg">Sign Up &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                Resource Manager allows Dungeon Masters to quickly setup their own custom campaigns and then invite their players. 
                The players can then easily setup their characters and control their character info on the fly.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Read up on the Rules</h2>
            <p>
                Basic player rules to help new players to quickly get on their feet.
            </p>
            <p>
                <a class="btn btn-default" href="http://dnd.wizards.com/products/tabletop/players-basic-rules">Read Here &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Dungeon Master Guide</h2>
            <p>
                Basic dungeon master guide for reference
            </p>
            <p>
                <a class="btn btn-default" href="http://dnd.wizards.com/products/tabletop/dm-basic-rules">Read Here &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
