<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-8 col-md-9" style="min-height: 1071px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Ingreso de Eventos</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="input-group">
                                    <span class="input-group-addon">Usuario</span>
                                    <select name="cmbUsuario" id="cmbUsuario" class="form-control">
                                        <option value="" selected="selected">Seleccione Usuario</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="input-group">
                                    <span class="input-group-addon">Tipo</span>
                                    <select name="cmbTipo" id="cmbTipo" class="form-control">
                                        <option value="" selected="selected">Seleccione Tipo</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="input-group">
                                    <span class="input-group-addon">SubTipo</span>
                                    <select name="cmbSubTipo" id="cmbSubTipo" class="form-control">
                                        <option value="" selected="selected">Seleccione SubTipo</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top:10px;">
                            <div class="col-sm-4">
                                <div class="input-group">
                                    <span class="input-group-addon">Funcionalidad</span>
                                    <select name="cmbFuncionalidad" id="cmbFuncionalidad" class="form-control">
                                        <option value="" selected="selected">Seleccione Funcionalidad</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="input-group">
                                    <span class="input-group-addon">Nivel</span>
                                    <select name="cmbNivel" id="cmbNivel" class="form-control">
                                        <option value="" selected="selected">Seleccione Nivel</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="input-group">
                                    <span class="input-group-addon">Error</span>
                                    <select name="cmbError" id="cmbError" class="form-control">
                                        <option value="" selected="selected">Seleccione Error</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top:10px;">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon">Mensaje</span>
                                    <input type="text" class="form-control" id="txtMensaje" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel-footer">
                        <div>
                            &nbsp;
                            <div class="btn-group pull-right" role="group">
                                <button type="button" class="btn btn-default" id="BtnLimpiar">
                                    <span class="glyphicon glyphicon-erase" aria-hidden="true"></span>&nbsp; &nbsp; Limpiar &nbsp; &nbsp;
                                </button>
                                <button type="button" class="btn btn-primary" id="BtnGuardar">
                                    <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>&nbsp; &nbsp; Guardar &nbsp; &nbsp;
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <hr />

                <div class="row row-cards-pf">

                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="glyphicon glyphicon-info-sign"></span><span class="card-pf-aggregate-status-count">&nbsp;&nbsp;</span>Usuarios</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color: blue;" class="glyphicon glyphicon-king"></span>&nbsp;<span id="spanCantidadUsuariosHombres">0</span></a></span>
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color: red;" class="glyphicon glyphicon-queen"></span>&nbsp;<span id="spanCantidadUsuariosMujeres">0</span></a></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="glyphicon glyphicon-info-sign"></span><span class="card-pf-aggregate-status-count">&nbsp;&nbsp;</span>Registros</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color: orangered;" class="glyphicon glyphicon-pencil"></span>&nbsp;<span id="spanCantidadLogs">0</span></a></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="glyphicon glyphicon-info-sign"></span><span class="card-pf-aggregate-status-count">&nbsp;&nbsp;</span>Tipos</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color: green;" class="glyphicon glyphicon-align-justify"></span>&nbsp;<span id="spanCantidadTipos">0</span></a></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="glyphicon glyphicon-info-sign"></span><span class="card-pf-aggregate-status-count">&nbsp;&nbsp;</span>Sub-Tipos</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color: greenyellow;" class="glyphicon glyphicon-list"></span>&nbsp;<span id="spanCantidadSubTipos">0</span></a></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="glyphicon glyphicon-info-sign"></span><span class="card-pf-aggregate-status-count">&nbsp;&nbsp;</span>Funciones</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color: coral;" class="glyphicon glyphicon-cog"></span>&nbsp;<span id="spanCantidadFuncionalidades">0</span></a></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="glyphicon glyphicon-info-sign"></span><span class="card-pf-aggregate-status-count">&nbsp;&nbsp;</span>Niveles</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color: lightskyblue;" class="glyphicon glyphicon-stats"></span>&nbsp;<span id="spanCantidadNiveles">0</span></a></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-sm-4 col-md-3 sidebar-pf sidebar-pf-right" style="min-height: 1071px;">
                <div class="sidebar-header sidebar-header-bleed-left sidebar-header-bleed-right">
                    <h2 class="h5">Ultimos registros</h2>
                </div>
                <ul class="list-group" id="lstLogs">
                </ul>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
        function LlamarServicioGenerico(url, parametros, before, callback, fnerror) {
            try {
                $.ajax({
                    async: true,
                    cache: false,
                    type: "POST",
                    beforeSend: function () {
                        before();
                    },
                    url: url,
                    data: parametros,
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    timeout: 3600000,
                    success: function (data) {
                        callback(data);
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        var mensajeError = "Error Ws - [" + url + "] - jqXHR: [" + jqXHR + "] - textStatus: [" + textStatus + "] - errorThrown: [" + errorThrown + "]";
                        window.console && console.log("Ha ocurrido un error, comuniquese con Sistemas. (1)");
                        window.console && console.log(mensajeError);
                    }
                });
            } catch (e) {
                var mensajeError = "Error WS - URL[" + url + "] - Nombre: " + e.name + " - Mensaje: " + e.message;
                window.console && console.log("Ha ocurrido un error, comuniquese con Sistemas. (2)");
                window.console && console.log(mensajeError);
            }
        };

        function CargaTotales() {
            var url = "Default.aspx\\InfoTotales";
            var parametros = "{ }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $("#spanCantidadUsuariosHombres").html(obj.CantidadUsuariosHombres);
                    $("#spanCantidadUsuariosMujeres").html(obj.CantidadUsuariosMujeres);
                    $("#spanCantidadLogs").html(obj.CantidadLogs);
                    $("#spanCantidadTipos").html(obj.CantidadTipos);
                    $("#spanCantidadSubTipos").html(obj.CantidadSubTipos);
                    $("#spanCantidadFuncionalidades").html(obj.CantidadFuncionalidades);
                    $("#spanCantidadNiveles").html(obj.CantidadNiveles);
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        };

        function CargaUsuarios() {
            $('#cmbUsuario')
                .find('option')
                .remove()
                .end()
                .append('<option value="" selected="selected">Seleccione Usuario</option>')
                .val('');

            var url = "Usuario.aspx\\ListaGrilla";
            var parametros = "{ }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $.each(obj, function (i, usuario) {
                        $('#cmbUsuario').append($('<option>', {
                            value: usuario.Id,
                            text: usuario.Nombre + " " + usuario.Apellido
                        }));
                    });
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function CargaTipos() {
            $('#cmbTipo')
                .find('option')
                .remove()
                .end()
                .append('<option value="" selected="selected">Seleccione Tipo</option>')
                .val('');

            var url = "Tipo.aspx\\ListaGrilla";
            var parametros = "{ }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $.each(obj, function (i, tipo) {
                        $('#cmbTipo').append($('<option>', {
                            value: tipo.Id,
                            text: tipo.Nombre
                        }));
                    });
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function CargaSubTipos(idTipo) {
            $('#cmbSubTipo')
                .find('option')
                .remove()
                .end()
                .append('<option value="" selected="selected">Seleccione SubTipo</option>')
                .val('');

            var url = "SubTipo.aspx\\ListaSubTiposPorTipo";
            var parametros = "{ idTipo: " + idTipo + " }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $.each(obj, function (i, subtipo) {
                        $('#cmbSubTipo').append($('<option>', {
                            value: subtipo.Id,
                            text: subtipo.Nombre
                        }));
                    });
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function CargaFuncionalidades() {
            $('#cmbFuncionalidad')
                .find('option')
                .remove()
                .end()
                .append('<option value="">Seleccione Funcionalidad</option>')
                .val('');

            var url = "Funcionalidad.aspx\\ListaGrilla";
            var parametros = "{ }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $.each(obj, function (i, funcionalidad) {
                        $('#cmbFuncionalidad').append($('<option>', {
                            value: funcionalidad.Id,
                            text: funcionalidad.Nombre
                        }));
                    });

                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function CargaNiveles(idFuncionalidad) {
            $('#cmbNivel')
                .find('option')
                .remove()
                .end()
                .append('<option value="">Seleccione Nivel</option>')
                .val('');
            

            var url = "Nivel.aspx\\ListaNivelesPorFuncionalidad";
            var parametros = "{ idFuncionalidad: " + idFuncionalidad + " }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $.each(obj, function (i, nivel) {
                        $('#cmbNivel').append($('<option>', {
                            value: nivel.Id,
                            text: nivel.Nombre
                        }));
                    });
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function CargaErrores(idNivel) {
            $('#cmbError')
                .find('option')
                .remove()
                .end()
                .append('<option value="">Seleccione Error</option>')
                .val('');

            var url = "Error.aspx\\ListaErroresPorNivel";
            var parametros = "{ idNivel: " + idNivel + " }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $.each(obj, function (i, error) {
                        $('#cmbError').append($('<option>', {
                            value: error.Id,
                            text: error.Nombre
                        }));
                    });
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function Guardar() {
            var url = "Default.aspx\\GuardaLog";
            var parametros = "{ " +
                "usuario: " + $("#cmbUsuario").val() + ", " +
                "tipo: " + $("#cmbTipo").val() + ", " +
                "subtipo: " + $("#cmbSubTipo").val() + ", " +
                "funcionalidad: '" + $("#cmbFuncionalidad").val() + "', " +
                "nivel: '" + $("#cmbNivel").val() + "', " +
                "error: '" + $("#cmbError").val() + "', " +
                "mensaje: '" + $("#txtMensaje").val() + "' " +
                "}";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $("#cmbUsuario").val("");
                    $("#cmbTipo").val("");
                    $("#cmbSubTipo").val("");
                    $("#cmbFuncionalidad").val("");
                    $("#cmbNivel").val("");
                    $("#cmbError").val("");
                    $("#txtMensaje").val("");
                    ListaLogs();
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function ListaLogs() {
            $('#lstLogs')
                .find('li')
                .remove()
                .end();

            var url = "Default.aspx\\ListarLog";
            var parametros = "{ }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    window.console && console.log(obj);
                    $.each(obj, function (i, log) {
                        window.console && console.log(log);
                        $('#lstLogs').append(
                            $(
                                '<li class="list-group-item">' +
                                '<h3 class="list-group-item-heading">' + log.Cabecera + '</h3>' +
                                '<p class="list-group-item-text">' + log.Mensaje + '</p>' +
                                '<p class="list-group-item-text">' + log.Fecha + '</p>' +
                                '</li>'
                            )
                        );
                    });
                    CargaTotales();
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        $(document).ready(function () {
            CargaTotales();
            CargaUsuarios();
            CargaTipos();
            CargaFuncionalidades();
            ListaLogs();

            $('#cmbTipo').on('change', function () {
                CargaSubTipos($("#cmbTipo").val());
            });

            $('#cmbFuncionalidad').on('change', function () {
                CargaNiveles($("#cmbFuncionalidad").val());
            });

            $('#cmbNivel').on('change', function () {
                CargaErrores($("#cmbNivel").val());
            });

            $("#BtnLimpiar").click(function () {
                $("#cmbUsuario").val("");
                $("#cmbTipo").val("");
                $("#cmbSubTipo").val("");
                $("#cmbFuncionalidad").val("");
                $("#cmbNivel").val("");
                $("#cmbError").val("");
                $("#txtMensaje").val("");
            });

            $("#BtnGuardar").click(function () {
                Guardar();
            });
        });
    </script>
</asp:Content>

