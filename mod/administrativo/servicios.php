 <?php
    $stylesheets = array(
        'datatables.css',
        'toastr.min.css',
        'bootstrap-datepicker.min.css'
    );
    $scripts = array(
        'jquery.dataTables.min.js',
        'datatables.js',
        'moment.min.js',
        'bootstrap-datepicker.min.js',
        'bootstrap-datepicker.es.js',
        'toastr.min.js',
        'toaster_msgs.js',
    );
    ?>

    <?php include_once 'inc/head.php'; ?>
    <body>
        <?php include_once 'inc/header.php'; ?>

        <div class="container-fluid">
          <div class="col-sm-3 col-md-2 sidebar">
            <?php include_once 'inc/menu.php'; ?>
          </div>
          <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
             <h1 class="page-header">Servicios</h1>
             <div class="panel panel-primary">
                 <div class="panel-heading">Mantenimiento de Tabla: Servicio</div>
                 <div class="panel-body">
                     <div class="well well-sm row clearfix">
                         <div class="col-md-4">
                             <div class="input-group input-group-sm">
                                 <input type="text" aria-controls="tabla-servicio" placeholder="B&uacute;squeda" class="form-control input-sm" id="txt-filter-servicio">
                                 <span class="input-group-btn">
                                     <button id="btn-buscar" class="btn btn-sm btn-default" type="button"><i class="glyphicon glyphicon-search"></i></button>
                                     <button id="btn-mostrar-todo" class="btn btn-sm btn-default" type="button"><i class="glyphicon glyphicon-remove"></i></button>
                                 </span>
                             </div>
                         </div>
                         <div class="col-md-8">
                             <div class="pull-right">
                                 <!--button type="button" class="btn btn-sm btn-primary" id="btn-nuevo"><i class="glyphicon glyphicon-file"></i> Nuevo </button-->
                                 <button type="button" class="btn btn-sm btn-default" id="btn-items" data-loading-text="<span class='glyphicon glyphicon-refresh glyphicon-refresh-animate'></span> Cargando..."><i class="glyphicon glyphicon-list-alt"></i> Items </button>
                                 <button type="button" class="btn btn-sm btn-default" id="btn-editar" data-loading-text="<span class='glyphicon glyphicon-refresh glyphicon-refresh-animate'></span> Cargando..."><i class="glyphicon glyphicon-pencil"></i> Editar </button>
                                 <!--button type="button" class="btn btn-sm btn-default" id="btn-eliminar"><i class="glyphicon glyphicon-trash"></i> Eliminar </button-->
                                 <button type="button" class="btn btn-sm btn-primary" id="btn-actualizar"><i class="glyphicon glyphicon-refresh"></i> Actualizar </button>
                             </div>
                         </div>
                     </div>
                     <table cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-condensed" id="tabla-servicio">
                        <thead>
                            <tr>
                               <th>servicio_id</th>
                               <th>Nombre</th>
                               <th>Descripcion</th>
                               <th>Fechareg</th>
                               <th>Imagen 1</th>
                               <th>Imagen 2</th>
                               <th>User</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                      </table>
                      </div>
                  </div>
               </div>
            </div>
          </div>
       </div>

        <div class="modal fade" id="modal-confirmar-eliminar" tabindex="-1" role="dialog" aria-labelledby="modal-confirmar-eliminar-Servicio-label" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                         <h4 class="modal-title" id="modal-confirmar-eliminar-servicio-label">Confirmar eliminaci&oacute;n</h4>
                    </div>
                    <div class="modal-body">
                        <p>Estas a punto de eliminar un registro <strong>(<span class="nombre-registro"></span>)</strong>. Este proceso es irreversible.</p>
                        <p>Confirma la eliminaci&oacute;n?</p>
                        <p id="debug-url"></p>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" id="hdn-modal-idxrow"/>
                        <input type="hidden" id="hdn-modal-confirmar-eliminar-valor" name="servicio-id" value=""/>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <a href="#" class="btn btn-danger" id="btn-confirmar-eliminar">Delete</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-nuevo-servicio" tabindex="-1" role="dialog" aria-labelledby="modal-nuevo-servicio-label" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
              <form class="form-horizontal" role="form" id="form-registrar-servicio" name="form-registrar-servicio" method="post" action="#">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                         <h4 class="modal-title" id="modal-nuevo-servicio-label">Registrar nuevo Servicio</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="txt-servicio-nombre">Nombre:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control input-sm" id="txt-servicio-nombre" name="servicio_nombre" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="txt-servicio-descripcion">Descripcion:</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control input-sm" id="txt-servicio-descripcion" name="servicio_descripcion" rows="5" required></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="txt-servicio-img1">Imagen 1(295x325):</label>
                                    <div class="col-sm-8">
                                        <input type="file" class="form-control input-sm" id="txt-servicio-img1" name="servicio_img1"  required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="txt-servicio-img2">Imagen 2(295x325):</label>
                                    <div class="col-sm-8">
                                        <input type="file" class="form-control input-sm" id="txt-servicio-img2" name="servicio_img2"  required>
                                    </div>
                                </div>

                                <input type="hidden" id="hdn-servicio-id" name="servicio_id"/>
                                <input type="hidden" id="hdn-option" name="option" value=""/>
                          </div>
                      </div>
                  </div><!-- /modal-body -->
                  <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                      <button id="btn-registrar" title="Registrar Servicio" type="submit" class="btn btn-primary">Registrar</button>
                  </div>
              </div>
             </form>
          </div>
        </div>


        <div class="modal fade" id="modal-itemservs" tabindex="-1" role="dialog" aria-labelledby="modal-nuevo-itemserv-label" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
              <form class="form-horizontal" role="form" id="form-registrar-itemserv" name="form-registrar-itemserv" method="post" action="#">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                         <h4 class="modal-title" id="modal-nuevo-itemserv-label">Registrar nuevo item de Servicio: </h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="txt-itemserv-text">Text:</label>
                                    <div class="col-sm-6">
                                        <div class="input-group">
                                            <input type="text" class="form-control input-sm" id="txt-itemserv-text" name="itemserv_text"  required>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-primary" type="button"><span class="glyphicon glyphicon-plus"></span></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" id="hdn-itemserv-id" name="itemserv_id"/>
                                <input type="hidden" id="hdn-option-items" name="option" value=""/>
                            </div>
                            <div class="col-md-12">
                                <table class="table table-condensed table-bordered table-hover" id="tabla-items">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Texto</th>
                                            <th>Opciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>                                        
                                    </tbody>
                                </table>
                            </div>
                      </div>
                  </div><!-- /modal-body -->
                  <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                      <button id="btn-registrar" title="Registrar Itemserv" type="submit" class="btn btn-primary">Registrar</button>
                  </div>
              </div>
             </form>
          </div>
        </div>

        <?php include_once 'inc/scripts.php';?>
        <script type="text/javascript">
            $(function() {
                //Esto es para evitar que cuando den enter los mande a otra pagina
                $("form").submit(function(evt){evt.preventDefault();});
                var dt_options = {
                    "sPaginationType": "bs_full",
                    "bProcessing": true,
                    "aoColumns": [
                        {"mDataProp": "servicio_id", "bSearchable": false, "bVisible": false},
                        {"mDataProp": "servicio_nombre", "bSearchable": true},
                        {"mDataProp": "servicio_descripcion", "bSearchable": true},
                        {"mDataProp": "servicio_fechareg", "bSearchable": true, "bVisible": false},
                        {"mDataProp": "servicio_img1", "bSearchable": false},
                        {"mDataProp": "servicio_img2", "bSearchable": false},
                        {"mDataProp": "servicio_user", "bSearchable": true, "bVisible": false},
                    ],
                    "bServerSide": true,
                    "sAjaxSource": "ajax_administrativo.php?option=listar_servicios",
                    "aoColumnDefs" :[
                        {
                            "fnRender": function ( oObj ) {                                
                                var img = oObj.aData["servicio_img1"];
                                return '<img src="../'+ img +'" class="img-responsive"/>';
                            },
                            "aTargets": [4]
                        },
                        {
                            "fnRender": function ( oObj ) {                                
                                var img = oObj.aData["servicio_img2"];
                                return '<img src="../'+ img +'" class="img-responsive"/>';
                            },
                            "aTargets": [5]
                        }
                    ]
                };

                var $tabla_servicio     = $("#tabla-servicio");
                var $dt_tabla_servicio = $tabla_servicio.dataTable(dt_options);

                setTimeout(function(){
                    $("#tabla-servicio_filter input:text").addClass("form-control input-sm");
                    $("#tabla-servicio_length select").addClass("form-control input-sm");
                }, 500);

                $("#tabla-servicio tbody").on("click", "tr", function( e ) {
                    if ( $(this).hasClass('info') ) {
                        $(this).removeClass('info');
                    }else {
                        $dt_tabla_servicio.$('tr.info').removeClass('info');
                        $(this).addClass('info');
                    }
                });

                var $modal_nuevo_servicio = $("#modal-nuevo-servicio");
                var $modal_confirmar_eliminar = $("#modal-confirmar-eliminar");
                var $modal_items = $("#modal-itemservs");

                $("#btn-actualizar").click(function(evt){
                    evt.preventDefault();
                    $dt_tabla_servicio.fnStandingRedraw();
                });

                $("#btn-nuevo").click(function(evt){
                    evt.preventDefault();
                    $("#hdn-option").val("registrar_servicio");
                    $("#btn-registrar").html("Registrar");
                    $("#modal-nuevo-servicio-label").html("Registrar nuevo Servicio");
                    $("#modal-nuevo-servicio").modal("show");
                    $("#form-registrar-servicio").get(0).reset();
                });

                $("#btn-items").click(function(evt){
                    var anSelected = fnGetSelected( $dt_tabla_servicio );
                    if ( anSelected.length !== 0 ) {
                        var $btn = $(this);
                        $btn.button('loading');
                        var idServicio = $dt_tabla_servicio.fnGetData(anSelected[0], 0);
                        var descripcionServicio = $dt_tabla_servicio.fnGetData(anSelected[0], 1);
                        $("#modal-nuevo-itemserv-label").html('Registrar item de Servicio: <strong>' + descripcionServicio + '</strong>');
                        $modal_items.modal("show");
                        $.post('ajax_administrativo.php?option=listar_itemservs&iDisplayStart=0&iDisplayLength=100', {servicio_id: idServicio}, function(data){
                            console.dir(data);
                            if (data["aaData"]) {
                                var tpl = '';
                                $.each(data["aaData"], function(idx, obj){
                                    tpl += '<tr>';
                                    tpl += '  <td>'+ (idx + 1) +'</td>';
                                    tpl += '  <td>'+ obj.itemserv_text +'</td>';
                                    tpl += '  <td class="text-center"><a class="btn btn-danger btn-default btn-xs"><span class="glyphicon glyphicon-trash"></span></a></td>';
                                    tpl += '</tr>';
                                });
                                $("#tabla-items tbody").html(tpl);
                            }
                            $btn.button('reset');
                        }, 'json');
                    }else{
                        msg_warning("Debe seleccionar un registro de la lista!");
                    }
                });

                $("#btn-eliminar").click(function(evt){
                    var anSelected = fnGetSelected( $dt_tabla_servicio );
                    if ( anSelected.length !== 0 ) {
                        evt.preventDefault();
                        var descripcion = $dt_tabla_servicio.fnGetData(anSelected[0], 1);
                        $modal_confirmar_eliminar.modal("show");
                        $modal_confirmar_eliminar.find("span.nombre-registro").html(descripcion);
                    }else{
                        msg_warning("Debe seleccionar un registro de la lista!");
                    }
                });

                $("#btn-confirmar-eliminar").click(function(evt){
                    var anSelected = fnGetSelected( $dt_tabla_servicio );
                    var id = $dt_tabla_servicio.fnGetData(anSelected[0], 0);
                    $.post(
                        'ajax_administrativo.php',
                        {
                            'option':'eliminar_servicio',
                            'servicio_id':id
                        },
                        function(data){
                            if(data.success){
                                $dt_tabla_servicio.fnDeleteRow( anSelected[0] );
                                $modal_confirmar_eliminar.modal("hide");
                            }else{
                                msg_error("Error al eliminar registro");
                            }
                        },
                        'json'
                    );
                });

                $("#btn-editar").click(function(){
                    var anSelected = fnGetSelected( $dt_tabla_servicio );
                    if (anSelected.length !== 0) {
                        $("#modal-nuevo-servicio-label").html("Actualizar Servicio");
                        var id = $dt_tabla_servicio.fnGetData(anSelected[0], 0);
                        $("#hdn-servicio-id").val(id);
                        var $btn = $(this);
                        $btn.button("loading");
                        $.post(
                            'ajax_administrativo.php',
                            {
                                'option':'editar_servicio',
                                'servicio_id':id
                            },
                            function(data){
                                $btn.button("reset");
                                if(data.servicio){
                                    var x = data.servicio;
                                    $("#hdn-servicio-id").val(x.servicio_id);
                                    $("#txt-servicio-nombre").val(x.servicio_nombre);
                                    $("#txt-servicio-descripcion").val(x.servicio_descripcion);
                                    $("#txt-servicio-fechareg").val(x.servicio_fechareg);
                                    $("#txt-servicio-user").val(x.servicio_user);
                                    $("#hdn-option").val("actualizar_servicio");

                                    $("#btn-registrar").html("Actualizar");
                                    $("#modal-nuevo-servicio").modal("show");
                                }else{
                                    msg_error("Error al cargar datos del registro");
                                }
                            },
                            'json'
                        );
                    }else{
                        msg_warning("Debe seleccionar un registro de la lista!");
                    }
                });

                var $form = $("#form-registrar-servicio");
                $form.submit(function(evt){
                    evt.preventDefault();
                    $.post(
                        'ajax_administrativo.php',
                        $form.serialize(),
                        function(data){
                            if($("#hdn-option").val() == "actualizar_servicio"){
                                if(data.success){
                                    $modal_nuevo_servicio.modal("hide");
                                    $dt_tabla_servicio.fnStandingRedraw();
                                    $form.get(0).reset();
                                }else{
                                    msg_error("Error al actualizar registro");
                                }
                            }else{
                                if(data.servicio_id){
                                    $modal_nuevo_servicio.modal("hide");
                                    $dt_tabla_servicio.fnStandingRedraw();
                                    $form.get(0).reset();
                                }else{
                                    msg_error("Error al registrar servicio.");
                                }
                            }
                        },
                        'json'
                    );
                });

                /****************************************************/
                /****************************************************/
                var $txt_filter_servicio = $("#txt-filter-servicio");
                $txt_filter_servicio.keyup(function(e){
                    if (e.which <= 90 && e.which >= 48){
                        if ( this.value.length>2 ) {
                            $dt_tabla_servicio.fnFilter( this.value);
                        }
                    }
                });

                $("#btn-buscar").click(function(){
                    var valor = $txt_filter_servicio.val();
                    $dt_tabla_servicio.fnFilter(valor);
                });
                $("#btn-mostrar-todo").click(function(){
                    $txt_filter_servicio.val("");
                    $dt_tabla_servicio.fnFilter( this.value);
                });

                function fnGetSelected( oTableLocal ){
                    return oTableLocal.$("tr.info");
                }
            });
        </script>
    </body>
</html>
