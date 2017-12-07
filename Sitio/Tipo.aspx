<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tipo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">


    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../js/patternfly.min.js"></script>

    <h1 id="right-aligned_all-fields-required">Tipo</h1>
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label for="input1" class="col-sm-2 control-label">ID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input1" required>
            </div>
            <br />
        </div>
        <div class="form-group">
            <label for="input2" class="col-sm-2 control-label">Código</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input2" required>
            </div>
        </div>
        <br />
        <br />
        <div class="form-group">
            <label for="input3" class="col-sm-2 control-label">Nombre</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input3" required>
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="input4" class="col-sm-2 control-label">Descripción</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input4" required>
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="input5" class="col-sm-2 control-label">Fecha de Creación</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" placeholder="Ingresar Fecha">
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="input6" class="col-sm-2 control-label">Fecha de Actualización</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" placeholder="Ingresar Fecha" id="input6">
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="Estado" class="col-sm-2 control-label">Estado</label>
            <div class="col-sm-10">
                <asp:DropDownList ID="Estado" AutoPostBack="true" runat="server">
                    <asp:ListItem Value="Ninguno" Text="Seleccione Estado" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="estado1" Text="Estado1"></asp:ListItem>
                    <asp:ListItem Value="estado2" Text="Estado2"></asp:ListItem>
                    <asp:ListItem Value="estado3" Text="Estado3"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" disabled>Guardar</button>
            </div>
        </div>
    </form>
</asp:Content>

