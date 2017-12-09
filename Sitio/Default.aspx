<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">

    <div class="container-fluid">
        <div class="row">


            <div class="col-sm-8 col-md-9" style="min-height: 1071px;">
                <div class="row row-cards-pf">

                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="glyphicon glyphicon-info-sign"></span><span class="card-pf-aggregate-status-count">&nbsp;&nbsp;</span>Usuarios</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color:blue;" class="glyphicon glyphicon-king"></span>&nbsp;<span id="spanCantidadUsuariosHombres">0</span></a></span>
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color:red;" class="glyphicon glyphicon-queen"></span>&nbsp;<span id="spanCantidadUsuariosMujeres">0</span></a></span>
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
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color:orangered;" class="glyphicon glyphicon-pencil"></span>&nbsp;<span id="spanCantidadLogs">0</span></a></span>
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
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color:green;" class="glyphicon glyphicon-align-justify"></span>&nbsp;<span id="spanCantidadTipos">0</span></a></span>
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
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color:greenyellow;" class="glyphicon glyphicon-list"></span>&nbsp;<span id="spanCantidadSubTipos">0</span></a></span>
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
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color:coral;" class="glyphicon glyphicon-cog"></span>&nbsp;<span id="spanCantidadFuncionalidades">0</span></a></span>
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
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span style="font-size: 15px; color:lightskyblue;" class="glyphicon glyphicon-stats"></span>&nbsp;<span id="spanCantidadNiveles">0</span></a></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row row-cards-pf">
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <div class="card-pf" style="height: 360px;">
                            <div class="card-pf-heading">
                                <h2 class="card-pf-title" style="height: 17px;">Top Utilized Clusters
                                </h2>
                            </div>
                            <div class="card-pf-body" style="height: 280px;">
                                <div class="progress-description">
                                    RHOS6-Controller
                                </div>
                                <div class="progress progress-label-top-right">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%;" data-toggle="tooltip" title="" data-original-title="95% Used">
                                        <span><strong>190.0 of 200.0 GB</strong> Used</span>
                                    </div>
                                    <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width: 5%;" data-toggle="tooltip" title="" data-original-title="5% Available">
                                        <span class="sr-only">5% Available</span>
                                    </div>
                                </div>
                                <div class="progress-description">
                                    CFMEQE-Cluster
                                </div>
                                <div class="progress progress-label-top-right">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="" data-original-title="50% Used">
                                        <span><strong>100.0 of 200.0 GB</strong> Used</span>
                                    </div>
                                    <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="" data-original-title="50% Available">
                                        <span class="sr-only">50% Available</span>
                                    </div>
                                </div>
                                <div class="progress-description">
                                    RHOS-Undercloud
                                </div>
                                <div class="progress progress-label-top-right">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;" data-toggle="tooltip" title="" data-original-title="70% Used">
                                        <span><strong>140.0 of 200.0 GB</strong> Used</span>
                                    </div>
                                    <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;" data-toggle="tooltip" title="" data-original-title="30% Available">
                                        <span class="sr-only">30% Available</span>
                                    </div>
                                </div>
                                <div class="progress-description">
                                    RHEL6-Controller
                                </div>
                                <div class="progress progress-label-top-right">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="76.5" aria-valuemin="0" aria-valuemax="100" style="width: 76.5%;" data-toggle="tooltip" title="" data-original-title="76.5% Used">
                                        <span><strong>153.0 of 200.0 GB</strong> Used</span>
                                    </div>
                                    <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="23.5" aria-valuemin="0" aria-valuemax="100" style="width: 23.5%;" data-toggle="tooltip" title="" data-original-title="23.5% Available">
                                        <span class="sr-only">23.5% Available</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <div class="card-pf" style="height: 360px;">
                            <div class="card-pf-heading">
                                <h2 class="card-pf-title" style="height: 17px;">Quotas
                                </h2>
                            </div>
                            <div class="card-pf-body" style="height: 280px;">
                                <div class="progress-container progress-description-left progress-label-right">
                                    <div class="progress-description">
                                        CPU
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;" data-toggle="tooltip" title="" data-original-title="25% Used">
                                            <span><strong>115 of 460</strong> MHz</span>
                                        </div>
                                        <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;" data-toggle="tooltip" title="" data-original-title="75% Available">
                                            <span class="sr-only">75% Available</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-container progress-description-left progress-label-right">
                                    <div class="progress-description">
                                        Memory
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="" data-original-title="8 GB Used">
                                            <span><strong>8 of 16</strong> GB</span>
                                        </div>
                                        <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="" data-original-title="8 GB Available">
                                            <span class="sr-only">50% Available</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-container progress-description-left progress-label-right">
                                    <div class="progress-description">
                                        Pods
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="62.5" aria-valuemin="0" aria-valuemax="100" style="width: 62.5%;" data-toggle="tooltip" title="" data-original-title="62.5% Used">
                                            <span><strong>5 of 8</strong> Total</span>
                                        </div>
                                        <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="37.5" aria-valuemin="0" aria-valuemax="100" style="width: 37.5%;" data-toggle="tooltip" title="" data-original-title="37.5% Available">
                                            <span class="sr-only">37.5% Available</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-container progress-description-left progress-label-right">
                                    <div class="progress-description">
                                        Services
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;" data-toggle="tooltip" title="" data-original-title="100% Used">
                                            <span><strong>2 of 2</strong> Total</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <div class="card-pf" style="height: 360px;">
                            <div class="card-pf-heading">
                                <h2 class="card-pf-title" style="height: 17px;">Quotas
                                </h2>
                            </div>
                            <div class="card-pf-body" style="height: 280px;">
                                <div class="progress-container progress-description-left">
                                    <div class="progress-description">
                                        CPU
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;" data-toggle="tooltip" title="" data-original-title="25% Used">
                                            <span class="sr-only">25% Used</span>
                                        </div>
                                        <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;" data-toggle="tooltip" title="" data-original-title="75% Available">
                                            <span class="sr-only">75% Available</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-container progress-description-left">
                                    <div class="progress-description">
                                        Memory
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="" data-original-title="8 GB Used">
                                            <span class="sr-only">50% Used</span>
                                        </div>
                                        <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" data-toggle="tooltip" title="" data-original-title="8 GB Available">
                                            <span class="sr-only">50% Available</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-container progress-description-left">
                                    <div class="progress-description">
                                        Pods
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="62.5" aria-valuemin="0" aria-valuemax="100" style="width: 62.5%;" data-toggle="tooltip" title="" data-original-title="62.5% Used">
                                            <span class="sr-only">62.5% Used</span>
                                        </div>
                                        <div class="progress-bar progress-bar-remaining" role="progressbar" aria-valuenow="37.5" aria-valuemin="0" aria-valuemax="100" style="width: 37.5%;" data-toggle="tooltip" title="" data-original-title="37.5% Available">
                                            <span class="sr-only">37.5% Available</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="progress-container progress-description-left">
                                    <div class="progress-description">
                                        Services
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;" data-toggle="tooltip" title="" data-original-title="100% Used">
                                            <span class="sr-only">100% Used</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-sm-4 col-md-3 sidebar-pf sidebar-pf-right" style="min-height: 1071px;">
                <div class="sidebar-header sidebar-header-bleed-left sidebar-header-bleed-right">
                    <div class="actions pull-right">
                        <a href="#">Actualizar</a>
                    </div>
                    <h2 class="h5">Ultimos registros</h2>
                </div>
                <ul class="list-group">
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Duis eu augue lectus</h3>
                        <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus.</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Donec dictum odio eu turpis rutrum</h3>
                        <p class="list-group-item-text">Etiam sit amet ultricies ligula.</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">At egestas nibh dictum</h3>
                        <p class="list-group-item-text">Maecenas vitae tempus mauris.</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Phasellus dictum posuere ante sit</h3>
                        <p class="list-group-item-text">Pellentesque rutrum justo in congue tristique.</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Amet commodo</h3>
                        <p class="list-group-item-text">Pellentesque in leo elit.</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Nunc viverra purus libero</h3>
                        <p class="list-group-item-text">Nulla lacinia lorem quis enim posuere dictum.</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Non faucibus augue dapibus at</h3>
                        <p class="list-group-item-text">Fusce id rutrum ante, eget vestibulum dolor</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Vivamus at semper</h3>
                        <p class="list-group-item-text">Duis sagittis vitae neque at vehicula.</p>
                    </li>
                    <li class="list-group-item">
                        <h3 class="list-group-item-heading">Sed sit amet dolor</h3>
                        <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus.</p>
                    </li>
                </ul>
                <p><a href="#">See all messages</a></p>
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

        $(document).ready(function () {
            CargaTotales();
        });
    </script>
</asp:Content>

