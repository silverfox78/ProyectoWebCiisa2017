<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Funcionalidad.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" Runat="Server">
        
    <div class="form-horizontal">
        <h1 id="right-aligned_all-fields-required">Funcionalidad</h1>
        <div class="form-group">
            <label for="id" class="col-sm-2 control-label">ID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="id" required="required" />
            </div>
        </div>
        <div class="form-group">
            <label for="codigo" class="col-sm-2 control-label">Código</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="codigo" required="required" />
            </div>
        </div>
       

        <div class="form-group">
            <label for="nombre" class="col-sm-2 control-label">Nombre</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="nombre" required="required" />
            </div>
        </div>
        <div class="form-group">
            <label for="descripcion" class="col-sm-2 control-label">Descripción</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="descripcion" required="required" />
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

        </div>
         <div class="form-group">
            <label for="Estado_funcionalidad" class="col-sm-2 control-label">Estado</label>
            <div class="col-sm-10">
                <select name="EstadoFuncionalidad" id="EstadoFuncionalidad">
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

