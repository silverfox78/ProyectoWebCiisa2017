<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">
    <div class="form-horizontal">
        <h1 id="right-aligned_all-fields-required">Error</h1>
        <div class="form-group">
            <label for="id_error" class="col-sm-2 control-label">ID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="id_error" required="required" />
            </div>
        </div>
        <div class="form-group">
            <label for="id_nivel" class="col-sm-2 control-label">ID Nivel</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="id_nivel" required="required" />
            </div>
        </div>

        <div class="form-group">
            <label for="codigo_error" class="col-sm-2 control-label">Código</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="codigo_error" required="required" />
            </div>
        </div>
        <div class="form-group">
            <label for="nombre_error" class="col-sm-2 control-label">Nombre</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="nombre_error" required="required" />
            </div>
        </div>

        <div class="form-group">
            <label for="descripcion_error" class="col-sm-2 control-label">Descripción</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="descripcion_error" required="required" />
            </div>
        </div>

        <div class="form-group">
            <label for="input5" class="col-sm-2 control-label">Fecha de Creación</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label for="input6" class="col-sm-2 control-label">Fecha de Actualización</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for="Estado_error" class="col-sm-2 control-label">Estado</label>
            <div class="col-sm-10">
                <select name="EstadoSubTipo" id="EstadoSubTipo">
                    <option value="Ninguno" selected="selected">Seleccione Estado</option>
                    <option value="estado1">Estado1</option>
                    <option value="estado2">Estado2</option>
                    <option value="estado3">Estado3</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Guardar</button>
            </div>
        </div>
    </div>
</asp:Content>

