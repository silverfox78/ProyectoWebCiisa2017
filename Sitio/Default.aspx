<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cuerpo" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-8 col-md-9" style="min-height: 1071px;">
                <div class="row row-cards-pf">
                    <!-- Important:  if you need to nest additional .row within a .row.row-cards-pf, do *not* use .row-cards-pf on the nested .row  -->
                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">0</span> Ipsum
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#" class="add" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add Ipsum"><span class="pficon pficon-add-circle-o"></span></a></span>
                                </p>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">20</span> Amet</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span class="pficon pficon-error-circle-o"></span>4</a></span>
                                    <span class="card-pf-aggregate-status-notification"><a href="#"><span class="pficon pficon-warning-triangle-o"></span>1</a></span>
                                </p>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">9</span> Adipiscing</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <span class="card-pf-aggregate-status-notification"><span class="pficon pficon-ok"></span></span>
                                </p>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">12</span> Lorem</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">6</span> Dolar Sit</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-2">
                        <div class="card-pf card-pf-accented card-pf-aggregate-status" style="height: 104px;">
                            <h2 class="card-pf-title" style="height: 32px;">
                                <a href="#"><span class="fa fa-shield"></span><span class="card-pf-aggregate-status-count">199</span> Consectetur</a>
                            </h2>
                            <div class="card-pf-body" style="height: 50px;">
                                <p class="card-pf-aggregate-status-notifications">
                                    <a href="#"><span class="card-pf-aggregate-status-notification"><span class="pficon pficon-error-circle-o"></span>1</span></a>
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
</asp:Content>

