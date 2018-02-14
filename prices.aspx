<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterDental.Master" AutoEventWireup="true" CodeBehind="prices.aspx.cs" Inherits="HandIn3.prices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <div class="col-1"></div>
    <div class="col-10">
 
            <br />
            <div class="table">
            <asp:Repeater ID="RepeaterTreatments" runat="server">
                <HeaderTemplate>
                    <table class="table-responsive">
                        <h2>Treatments</h2>
                        <tr>
                            <td>Treatment name</td>
                            <td>Price</td>
                            <td>Picture</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myitem"><%# Eval("name") %></td>
                        <td class="myitem"><%# Eval("price") %></td>
                        <td class="myitem"><img class="img-responsive" src="Images/<%# Eval("picture") %>" height="150px" /></td>

                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="col-1"></div>
    <asp:Label ID="LabelMessage" runat="server"></asp:Label>
</div>
</asp:Content>
