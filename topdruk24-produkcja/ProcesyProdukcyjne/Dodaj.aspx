﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dodaj.aspx.cs" Inherits="topdruk24_produkcja.ProcesyProdukcyjne.Dodaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource_Procesy" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ProcesProdukcyjny] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProcesProdukcyjny] ([Nazwa], [Opis]) VALUES (@Nazwa, @Opis)" SelectCommand="SELECT [Id], [Nazwa], [Opis] FROM [ProcesProdukcyjny]" UpdateCommand="UPDATE [ProcesProdukcyjny] SET [Nazwa] = @Nazwa, [Opis] = @Opis WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nazwa" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <div class="form-horizontal">
        <fieldset>
            <legend>Nowy Proces</legend>
            <div class="form-group">
                <label for="inputNazwa" class="col-lg-2 control-label">Nazwa</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="inputNazwa" runat="server" placeholder="Nazwa">
                </div>
                <label for="inputOpis" class="col-lg-2 control-label">Opis działania</label>
                <div class="col-lg-10">
                    <textarea runat="server" class="form-control" rows="6" id="inputOpis"></textarea>
                    <br>
                    <button runat="server" causesvalidation="False" onserverclick="Cancel_Action" type="reset" class="btn btn-default">Anuluj</button>
                    <button runat="server" causesvalidation="True" onserverclick="Insert_Action" type="submit" class="btn btn-primary">Dodaj</button>
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>
