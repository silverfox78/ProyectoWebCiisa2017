<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tipo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">


    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../js/patternfly.min.js"></script>

    <h1 id="right-aligned_all-fields-required">Tipo</h1>
     <br />
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label for="id_tipo" class="col-sm-2 control-label">ID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  id="id_tipo" required>
            </div>
        </div>
      <br />
        <div class="form-group">
            <label for="codigo_tipo" class="col-sm-2 control-label">Código</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="codigo_tipo" required>
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="nombre_tipo" class="col-sm-2 control-label">Nombre</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="nombre_tipo" required>
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="descripcion_tipo" class="col-sm-2 control-label">Descripción</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="descripcion_tipo" required>
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="input5" class="col-sm-2 control-label">Fecha de Creación</label>
            <div class="col-sm-10">
                <input type="date" class="form-control">
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="input6" class="col-sm-2 control-label">Fecha de Actualización</label>
            <div class="col-sm-10">
                <input type="date" class="form-control">
            </div>
        </div>
        <br />
        <div class="form-group">
            <label for="Estado_tipo" class="col-sm-2 control-label">Estado</label>
            <div class="col-sm-10">
                <asp:DropDownList ID="Estado_tipo" AutoPostBack="true" runat="server">
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
                <button type="submit" class="btn btn-default">Guardar</button>
            </div>
        </div>
    </form>
</asp:Content>

