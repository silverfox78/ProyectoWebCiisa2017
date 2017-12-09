<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubTipo.aspx.cs" Inherits="SubTipo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">
    <div id="Panel_Grilla">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Listado de subtipo</h3>
            </div>

            <div class="panel-body">
                <table id="Grilla" class="datatable table table-striped table-bordered" style="font-size: xx-small;">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tipo</th>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Estado</th>
                            <th>FechaCreacion</th>
                            <th>FechaActualizacion</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>

            <div class="panel-footer">
                <div>
                    &nbsp;
                    <div class="btn-group pull-right" role="group">
                        <button type="button" class="btn btn-success" id="BtnNuevo">
                            <span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp; &nbsp; Nuevo Tipo &nbsp; &nbsp;
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="Panel_Formulario" style="display: none;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Edicion de subtipo</h3>
            </div>
            <div class="panel-body">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="txtId" class="col-sm-2 control-label">ID</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="txtId" disabled="disabled" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cmbTipo" class="col-sm-2 control-label">Tipo</label>
                        <div class="col-sm-6">
                            <select name="cmbTipo" id="cmbTipo" class="form-control">
                                <option value="" selected="selected">Seleccione Tipo</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtCodigo" class="col-sm-2 control-label">Código</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="txtCodigo" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtNombre" class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="txtNombre" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtDescripcion" class="col-sm-2 control-label">Descripción</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="txtDescripcion" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cmbEstado" class="col-sm-2 control-label">Estado</label>
                        <div class="col-sm-4">
                            <select name="cmbEstado" id="cmbEstado" class="form-control">
                                <option value="" selected="selected">Seleccione Estado</option>
                                <option value="Activo">Activo</option>
                                <option value="Inactivo">Inactivo</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtCreacion" class="col-sm-2 control-label">Fecha de Creación</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="txtCreacion" disabled="disabled" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtActualizacion" class="col-sm-2 control-label">Fecha de Actualización</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="txtActualizacion" disabled="disabled" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel-footer">
                <div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-success" id="BtnVerGrilla">
                            <span class="glyphicon glyphicon-list" aria-hidden="true"></span>&nbsp; &nbsp; Ver Listado &nbsp; &nbsp;
                        </button>
                    </div>
                    &nbsp;
                    <div class="btn-group pull-right" role="group">
                        <button type="button" class="btn btn-default" id="BtnLimpiar">
                            <span class="glyphicon glyphicon-erase" aria-hidden="true"></span>&nbsp; &nbsp; Limpiar &nbsp; &nbsp;
                        </button>
                        <button type="button" class="btn btn-danger" id="BtnEliminar">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp; &nbsp; Eliminar &nbsp; &nbsp;
                        </button>
                        <button type="button" class="btn btn-primary" id="BtnGuardar">
                            <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>&nbsp; &nbsp; Guardar &nbsp; &nbsp;
                        </button>
                    </div>
                </div>
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

        function LlamarServicioGrilla() {
            var url = "SubTipo.aspx\\ListaGrilla";
            var parametros = "{ }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    CargarGrilla(obj);
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        };

        function CargaGrillaGenerica(id, data, orden, columnas) {
            $(id).DataTable({
                "aaData": data,
                "paging": true,
                "bFilter": true,
                "bInfo": true,
                "bLengthChange": true,
                "paging": true,
                "order": orden,
                "responsive": true,
                "pageLength": 10,
                "bDestroy": true,
                "language": {
                    "sProcessing": "Procesando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords": "No se encontraron resultados",
                    "sEmptyTable": "Ningun dato disponible en esta tabla",
                    "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "Info": "Mostrando pagina _PAGE_ de _PAGES_",
                    "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar: ",
                    "sUrl": "",
                    "sInfoThousands": ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst": "Primero",
                        "sLast": "Ultimo",
                        "sNext": "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
                },
                dom: 'Bfrtip',
                "aoColumns": columnas
            });
        }

        function CargarGrilla(data) {
            window.console && console.log("INICIO - CARGA GRILLA");
            var id = "#Grilla";
            var orden = [[0, 'asc']];
            var columnas =
                [
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Id", "defaultContent": '',
                        render: function (data, type, row) { return "<span class='label label-success'>" + row.Id + "</span>"; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Tipo", "defaultContent": '',
                        render: function (data, type, row) { return row.Tipo; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Codigo", "defaultContent": '',
                        render: function (data, type, row) { return row.Codigo; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Nombre", "defaultContent": '',
                        render: function (data, type, row) { return row.Nombre; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Descripcion", "defaultContent": '',
                        render: function (data, type, row) { return row.Descripcion; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Estado", "defaultContent": '',
                        render: function (data, type, row)
                        {
                            if (row.Estado == "Activo") {
                                return "<span class='label label-success'>" + row.Estado + "</span>";
                            }
                            else {
                                return "<span class='label label-danger'>" + row.Estado + "</span>";
                            }
                        }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "FechaCreacion", "defaultContent": '',
                        render: function (data, type, row) { return row.FechaCreacion; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "FechaActualizacion", "defaultContent": '',
                        render: function (data, type, row) { return row.FechaActualizacion; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Opciones", "defaultContent": '',
                        render: function (data, type, row) {
                            return "<div class='btn-group' role='group'>" +
                                "<button type='button' class='btn btn-primary' id='BtnVer_" + row.Id + "' onclick='Ver(" + row.Id + ");'>" +
                                "<span class='glyphicon glyphicon-edit' aria-hidden='true'></span></button>" +
                                "<button type='button' class='btn btn-danger' id='BtnEliminar_" + row.Id + "' onclick='Eliminar(" + row.Id + ");'>" +
                                "<span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button></div>";
                        }
                    }
                ];

            CargaGrillaGenerica(id, data, orden, columnas);
        }
        
        function Ver(id) {
            var url = "SubTipo.aspx\\Buscar";
            var parametros = "{ id: " + id + " }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $("#txtId").val(obj.Id);
                    CargaTipos(obj.IdTipo);
                    $('#cmbTipo').val(obj.IdTipo);
                    $("#txtCodigo").val(obj.Codigo);
                    $("#txtNombre").val(obj.Nombre);
                    $("#txtDescripcion").val(obj.Descripcion);

                    var now = new Date(obj.FechaCreacion);
                    var day = ("0" + now.getDate()).slice(-2);
                    var month = ("0" + (now.getMonth() + 1)).slice(-2);
                    var fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                    $("#txtCreacion").val(fecha);

                    now = new Date(obj.FechaActualizacion);
                    day = ("0" + now.getDate()).slice(-2);
                    month = ("0" + (now.getMonth() + 1)).slice(-2);
                    fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                    $("#txtActualizacion").val(fecha);

                    $("#cmbEstado").val(obj.Estado);


                    $("#Panel_Formulario").show();
                    $("#Panel_Grilla").hide();
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function Guardar() {
            var url = "SubTipo.aspx\\Guardar";
            var id = $("#txtId").val();
            if (id <= 0) {
                id = 0;
            }
            var parametros = "{ " +
                "id: " + id + ", " +
                "idTipo: " + $("#cmbTipo").val() + ", " +
                "codigo: '" + $("#txtCodigo").val() + "', " +
                "nombre: '" + $("#txtNombre").val() + "', " +
                "descripcion: '" + $("#txtDescripcion").val() + "', " +
                "estado: '" + $("#cmbEstado").val() + "' " +
                "}";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    table = $("#Grilla").dataTable();
                    oSettings = table.fnSettings();
                    table.fnClearTable(this);
                    table.fnDraw();
                    LlamarServicioGrilla();
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function FnEliminar(id) {
            var url = "SubTipo.aspx\\Eliminar";
            var parametros = "{ id: " + id + " }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    Mensajeria.CargardoFin();
                    table = $("#Grilla").dataTable();
                    oSettings = table.fnSettings();
                    table.fnClearTable(this);
                    table.fnDraw();
                    LlamarServicioGrilla();
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };
            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function Eliminar(id) {
            Mensajeria.ConfirmacionEliminacion("Eliminacion de Tipo", "Se eliminara el Tipo id: " + id, "return FnEliminar(" + id + ")");
        }

        function CargaTipos(idTipo) {
            $('#cmbTipo')
                .find('option')
                .remove()
                .end()
                .append('<option value="">Seleccione Tipo</option>')
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
                    $('#cmbTipo').val(idTipo);

                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        $(document).ready(function () {
            LlamarServicioGrilla();

            $("#BtnNuevo").click(function () {
                $("#txtId").val("0");
                CargaTipos("");
                $('#cmbTipo').val("");
                $("#txtCodigo").val("");
                $("#txtNombre").val("");
                $("#txtDescripcion").val("");
                var now = new Date();
                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);
                var fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                $("#txtCreacion").val(fecha);

                now = new Date();
                day = ("0" + now.getDate()).slice(-2);
                month = ("0" + (now.getMonth() + 1)).slice(-2);
                fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                $("#txtActualizacion").val(fecha);

                $("#cmbEstado").val("");


                $("#Panel_Formulario").show();
                $("#Panel_Grilla").hide();
            });

            $("#BtnVerGrilla").click(function () {
                $("#Panel_Formulario").hide();
                $("#Panel_Grilla").show();
            });

            $("#BtnGuardar").click(function () {
                Guardar();
                $("#Panel_Formulario").hide();
                $("#Panel_Grilla").show();
            });

            $("#BtnEliminar").click(function () {
                Eliminar($("#txtId").val());
            });

            $("#BtnLimpiar").click(function () {
                $("#txtId").val("0");
                CargaTipos("");
                $('#cmbTipo').val("");
                $("#txtCodigo").val("");
                $("#txtNombre").val("");
                $("#txtDescripcion").val("");
                var now = new Date();
                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);
                var fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                $("#txtCreacion").val(fecha);

                now = new Date();
                day = ("0" + now.getDate()).slice(-2);
                month = ("0" + (now.getMonth() + 1)).slice(-2);
                fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                $("#txtActualizacion").val(fecha);

                $("#cmbEstado").val("");
            });
        });
    </script>
</asp:Content>

