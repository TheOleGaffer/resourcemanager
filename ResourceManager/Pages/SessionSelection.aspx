<%@ Page Title="My Games" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SessionSelection.aspx.cs" Inherits="ResourceManager.Pages.SessionSelection" %>
<%@ Import Namespace="System.Web.Script.Serialization" %>



<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
        <script type = "text/javascript" src="/Scripts/GameSessions.js"></script>
    <link rel="stylesheet" type="text/css"  href="/Content/GameSession.css" />
    

    <h1>My Campaigns</h1>

    <div id="sessionList">
            <button id="createsessionbtn" data-toggle="modal" data-target="#myModal"></button>
    </div>
    <asp:HiddenField ID="startingGoldValue" runat="server" value="" ClientIDMode="Static"/>


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title" id="exampleModalLabel">Create New Campaign</h5>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <asp:Label runat="server" AssociatedControlID="CampaignName" CssClass="questionlabel">What is the name of your campaign?</asp:Label>
                        <asp:TextBox runat="server" ID="CampaignName" CssClass="questionbox"/>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" CssClass="questionlabel">How is everyone's language determined?</asp:Label>
                        <div class="dropdownmenu">
                            <a class="btn btn-primary btn-select btn-select-light">
                                <input type="hidden" class="btn-select-input" id="" name="" value=""/>
                                <span class="btn-select-value">Select an Item</span>
                                <span class="btn-select-arrow glyphicon glyphicon-chevron-down"></span>
                                <ul>
                                    <li>Based off Race/Default</li>
                                    <li>Can be custom</li>
                                </ul>
                            </a>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" CssClass="questionlabel">How is everyone's weight determined?</asp:Label>
                        <div class="dropdownmenu">
                            <a class="btn btn-primary btn-select btn-select-light">
                                <input type="hidden" class="btn-select-input" id="" name="" value=""/>
                                <span class="btn-select-value">Select an Item</span>
                                <span class="btn-select-arrow glyphicon glyphicon-chevron-down"></span>
                                <ul>
                                    <li>Based off Race/Default</li>
                                    <li>Based off Race with Random Modifier</li>
                                    <li>Can be custom</li>
                                </ul>
                            </a>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" CssClass="questionlabel">How is everyone's height determined?</asp:Label>
                        <div class="dropdownmenu">
                            <a class="btn btn-primary btn-select btn-select-light">
                                <input type="hidden" class="btn-select-input" id="" name="" value=""/>
                                <span class="btn-select-value">Select an Item</span>
                                <span class="btn-select-arrow glyphicon glyphicon-chevron-down"></span>
                                <ul>
                                    <li>Based off Race/Default</li>
                                    <li>Based off Race with Random Modifier</li>
                                    <li>Can be custom</li>
                                </ul>
                            </a>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" CssClass="questionlabel">Do coins effect carrying capacity?</asp:Label>
                        <div class="dropdownmenu">
                            <a class="btn btn-primary btn-select btn-select-light">
                                <input type="hidden" class="btn-select-input" id="" name="" value=""/>
                                <span class="btn-select-value">Select an Item</span>
                                <span class="btn-select-arrow glyphicon glyphicon-chevron-down"></span>
                                <ul>
                                    <li>Yes</li>
                                    <li>No</li>
                                </ul>
                            </a>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" CssClass="questionlabel">How is everyone's starting Gold determined?</asp:Label>
                        <div class="dropdownmenu">
                            <a class="btn btn-primary btn-select btn-select-light">
                                <input type="hidden" class="btn-select-input" id="" name="" value=""/>
                                <span class="btn-select-value">Select an Item</span>
                                <span class="btn-select-arrow glyphicon glyphicon-chevron-down"></span>
                                <ul>
                                    <li>No Starting Gold</li>
                                    <li>Based off Classes</li>
                                    <li>Custom Amount</li>
                                </ul>
                            </a>
                        </div>
                    </div>
                    <div class="form-group row disablerow" id="customamount">
                        <asp:Label runat="server" AssociatedControlID="CustomGoldAmount" CssClass="questionlabel">What is everyone's starting Gold amount?</asp:Label>
                        <asp:TextBox ID="CustomGoldAmount" runat="server"  CssClass="questionbox"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Create New Campaign</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>