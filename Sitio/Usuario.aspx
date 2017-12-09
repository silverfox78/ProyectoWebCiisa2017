<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Usuario.aspx.cs" Inherits="Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">
    <div id="Panel_Grilla">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Listado de usuarios</h3>
            </div>

            <div class="panel-body">
                <table id="GrillaUsuarios" class="datatable table table-striped table-bordered" style="font-size: xx-small;">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Username</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Correo</th>
                            <th>Fecha Nac</th>
                            <th>Sexo</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
            <div class="panel-footer">
                <div>
                    <!--
                <div class="btn-group" role="group">
                    <button type="button" class="btn btn-warning" id="BtnCargaEjemplo">
                        <span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp; &nbsp; Carga Ejemplo &nbsp; &nbsp;
                    </button>
                </div>
                -->

                    <div class="btn-group pull-right" role="group">
                        <button type="button" class="btn btn-success" id="BtnNuevo">
                            <span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp; &nbsp; Nuevo Usuario &nbsp; &nbsp;
                        </button>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div id="Panel_Formulario" style="display: none;">
        <h1>Usuario</h1>
        <h1>Samuel</h1>
        <ul>
            <li>ID</li>
            <li>USERNAME</li>
            <li>NOMBRE</li>
            <li>APELLIDO</li>
            <li>FECHA_NAC</li>
            <li>SEXO</li>
            <li>CORREO</li>
        </ul>
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
            var url = "Usuario.aspx\\ListaGrilla";
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
            var id = "#GrillaUsuarios";
            var orden = [[0, 'asc']];
            var columnas =
                [
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Id", "defaultContent": '',
                        render: function (data, type, row) { return "<span class='label label-success'>" + row.Id + "</span>"; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Username", "defaultContent": '',
                        render: function (data, type, row) { return row.Username; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Nombre", "defaultContent": '',
                        render: function (data, type, row) { return row.Nombre; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Apellido", "defaultContent": '',
                        render: function (data, type, row) { return row.Apellido; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Correo", "defaultContent": '',
                        render: function (data, type, row) { return row.Correo; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "FechaNac", "defaultContent": '',
                        render: function (data, type, row) { return row.FechaNac; }
                    },
                    {
                        "responsive": true, "orderable": true, "mDataProp": "Sexo", "defaultContent": '',
                        render: function (data, type, row) { return row.Sexo; }
                    }
                ];

            CargaGrillaGenerica(id, data, orden, columnas);
        }

        function BuscaUsuario() {
            var url = "Usuario.aspx\\Buscar";
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

        $(document).ready(function () {
            LlamarServicioGrilla();
            BuscaUsuario();
            $("#BtnNuevo").click(function () {
                $("#Panel_Formulario").show();
                $("#Panel_Grilla").hide();
            });
        });
    </script>
</asp:Content>

