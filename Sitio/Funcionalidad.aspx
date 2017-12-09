<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Funcionalidad.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">

    <div id="Panel_Grilla">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Listado de funcionalidades</h3>
            </div>

            <div class="panel-body">
                <table id="GrillaFuncionalidad" class="datatable table table-striped table-bordered" style="font-size: xx-small;">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Fecha Creacion</th>
                            <th>Fecha Actualizacion</th>
                            <th>Estado</th>
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
                            <span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp; &nbsp; Nuevo Nivel &nbsp; &nbsp;
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="Panel_Formulario" style="display: none;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Listado de funcionalidades</h3>
            </div>
            <div class="panel-body">
                <br />

                <div class="form-horizontal">
                    <h1 id="right-aligned_all-fields-required">Funcionalidad</h1>
                    <div class="form-group">
                        <label for="id" class="col-sm-2 control-label">ID</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="txtid" required="required" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="codigo" class="col-sm-2 control-label">Código</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="txtCodigo" required="required" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="nombre" class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="txtNombre" required="required" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="descripcion" class="col-sm-2 control-label">Descripción</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="txtDescripcion" required="required" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="input5" class="col-sm-2 control-label">Fecha de Creación</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="txtCreacion" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input6" class="col-sm-2 control-label">Fecha de Actualización</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="txtActualizacion" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="Estado_funcionalidad" class="col-sm-2 control-label">Estado</label>
                        <div class="col-sm-10">
                            <select name="EstadoFuncionalidad" id="cmbEstado">
                                <option value="Ninguno" selected="selected">Seleccione Estado</option>
                                <option value="estado1">Estado1</option>
                                <option value="estado2">Estado2</option>
                                <option value="estado3">Estado3</option>
                            </select>
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
            var url = "Funcionalidad.aspx\\ListaGrilla";
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
            var id = "#GrillaFuncionalidad";
            var orden = [[0, 'asc']];
            var columnas =
                [
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Id", "defaultContent": '',
                        render: function (data, type, row) { return "<span class='label label-success'>" + row.Id + "</span>"; }
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
                        "responsive": true, "orderable": true, "mDataProp": "Creacion", "defaultContent": '',
                        render: function (data, type, row) { return row.Creacion; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Actualizacion", "defaultContent": '',
                        render: function (data, type, row) { return row.Actualizacion; }
                    },
                     {
                         "responsive": true, "orderable": true, "mDataProp": "Estado", "defaultContent": '',
                         render: function (data, type, row) { return row.Estado; }
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

        function BuscaNivel() {
            var url = "Funcionalidad.aspx\\Buscar";
            var parametros = "{ id: 1 }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    window.console && console.log(obj);
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        function Ver(id) {
            var url = "Funcionalidad.aspx\\Buscar";
            var parametros = "{ id: " + id + " }";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    $("#txtId").val(obj.Id);
                    $("#txtCodigo").val(obj.Codigo);
                    $("#txtNombre").val(obj.Apellido);
                    $("#txtDescripcion").val(obj.Correo);

                    var now = new Date(obj.FechaNac);
                    var day = ("0" + now.getDate()).slice(-2);
                    var month = ("0" + (now.getMonth() + 1)).slice(-2);
                    var fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                    $("#txtCreacion").val(fecha);

                    var now = new Date(obj.FechaNac);
                    var day = ("0" + now.getDate()).slice(-2);
                    var month = ("0" + (now.getMonth() + 1)).slice(-2);
                    var fecha = now.getFullYear() + "-" + (month) + "-" + (day);
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
            var url = "Nivel.aspx\\Guardar";
            var id = $("#txtId").val();
            if (id <= 0) {
                id = 0;
            }
            var parametros = "{ " +
                "id: " + id + ", " +
                "codigo: '" + $("#txtCodigo").val() + "', " +
                "nombre: '" + $("#txtNombre").val() + "', " +
                "descripcion: '" + $("#txtDescripcion").val() + "', " +
                "creacion: '" + $("#txtCreacion").val() + "', " +
                "actualizacion: '" + $("#txtActualizacion").val() + "' " +
                "estado: '" + $("#cmbEstado").val() + "', " +
                "}";
            var before = function () { window.console && console.log("Se inicia la llamada al WS..."); };
            var callback =
                function (data) {
                    var obj = $.parseJSON(data.d);
                    table = $("#GrillaFuncionalidad").dataTable();
                    oSettings = table.fnSettings();
                    table.fnClearTable(this);
                    table.fnDraw();
                    LlamarServicioGrilla();
                    window.console && console.log("Termino con exito la llamada al WS...");
                };
            var fnerror = function (data) { window.console && console.log("Error en la llamada al WS - " + data); };

            LlamarServicioGenerico(url, parametros, before, callback, fnerror);
        }

        $(document).ready(function () {
            LlamarServicioGrilla();

            $("#BtnNuevo").click(function () {
                $("#txtId").val("0");
                $("#txtCodigo").val("");
                $("#txtNombre").val("");
                $("#txtDescripcion").val("");
                var now = new Date();
                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);
                var fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                $("#txtCreacion").val(fecha);

                var now = new Date();
                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);
                var fecha = now.getFullYear() + "-" + (month) + "-" + (day);
                $("#txtActualizacion").val(fecha);

                $("#cmbEstado").val(obj.Estado);


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
        });
    </script>


</asp:Content>

