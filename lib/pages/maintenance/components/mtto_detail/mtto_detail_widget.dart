import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/alert_modal/alert_modal_widget.dart';
import '/components/commons/confirmation_modal/confirmation_modal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/home/components/skeletons/shimmer_current_project_name/shimmer_current_project_name_widget.dart';
import '/pages/maintenance/components/activities_input/activities_input_widget.dart';
<<<<<<< HEAD
=======
import 'dart:ui';
>>>>>>> master
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
<<<<<<< HEAD
=======
import 'package:flutter/gestures.dart';
>>>>>>> master
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mtto_detail_model.dart';
export 'mtto_detail_model.dart';

class MttoDetailWidget extends StatefulWidget {
  const MttoDetailWidget({
    super.key,
    this.mttoCurrentStatus,
    this.mttoObjectId,
    this.mttoAssignedPersonId,
    this.mttoStartTime,
    this.mttoFrecuency,
    this.mttoActivities,
    this.mttObservations,
    required this.maintenanceId,
    this.photographicRecord,
    this.mttProvider,
    required this.mttFinalStatus,
  });

  final String? mttoCurrentStatus;
  final String? mttoObjectId;
  final String? mttoAssignedPersonId;
  final DateTime? mttoStartTime;
  final String? mttoFrecuency;
  final dynamic mttoActivities;
  final String? mttObservations;
  final String? maintenanceId;
  final String? photographicRecord;
  final String? mttProvider;
  final String? mttFinalStatus;

  @override
  State<MttoDetailWidget> createState() => _MttoDetailWidgetState();
}

class _MttoDetailWidgetState extends State<MttoDetailWidget> {
  late MttoDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MttoDetailModel());

    _model.authorizerNameTextController ??= TextEditingController();
    _model.authorizerNameFocusNode ??= FocusNode();

    _model.reviewerNameTextController ??= TextEditingController();
    _model.reviewerNameFocusNode ??= FocusNode();

    _model.approverNameTextController ??= TextEditingController();
    _model.approverNameFocusNode ??= FocusNode();

    _model.mttoObservationsTextController ??= TextEditingController();
    _model.mttoObservationsFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FutureBuilder<List<MaintenanceObjectsRow>>(
            future: _model.cachedMttoDetail(
              uniqueQueryKey: random_data.randomString(
                10,
                10,
                true,
                true,
                true,
              ),
              requestFn: () => MaintenanceObjectsTable().querySingleRow(
                queryFn: (q) => q.eqOrNull(
                  'id',
<<<<<<< HEAD
                  widget.mttoObjectId,
=======
                  widget!.mttoObjectId,
>>>>>>> master
                ),
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<MaintenanceObjectsRow> containerMaintenanceObjectsRowList =
                  snapshot.data!;

              final containerMaintenanceObjectsRow =
                  containerMaintenanceObjectsRowList.isNotEmpty
                      ? containerMaintenanceObjectsRowList.first
                      : null;

              return Container(
                width: 382.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).tertiary,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).alternate,
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    AssetProfilePageWidget.routeName,
                                    queryParameters: {
                                      'maintenanceObjectId': serializeParam(
<<<<<<< HEAD
                                        widget.mttoObjectId,
=======
                                        widget!.mttoObjectId,
>>>>>>> master
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 54.0,
                                      height: 54.0,
                                      decoration: BoxDecoration(),
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              Duration(milliseconds: 500),
                                          imageUrl: containerMaintenanceObjectsRow
                                                          ?.moImage !=
                                                      null &&
                                                  containerMaintenanceObjectsRow
                                                          ?.moImage !=
                                                      ''
                                              ? containerMaintenanceObjectsRow!
                                                  .moImage!
                                              : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d5sk98qZloElOEHM6UCe/assets/v7hcgz9y5jsj/disicheck-default-mo-image.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 6.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  containerMaintenanceObjectsRow
                                                      ?.name,
                                                  'Sin nombre',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                FutureBuilder<List<UsersRow>>(
                                                  future: UsersTable()
                                                      .querySingleRow(
                                                    queryFn: (q) => q.eqOrNull(
                                                      'id',
<<<<<<< HEAD
                                                      widget
=======
                                                      widget!
>>>>>>> master
                                                          .mttoAssignedPersonId,
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return ShimmerCurrentProjectNameWidget();
                                                    }
                                                    List<UsersRow>
                                                        textUsersRowList =
                                                        snapshot.data!;

                                                    final textUsersRow =
                                                        textUsersRowList
                                                                .isNotEmpty
                                                            ? textUsersRowList
                                                                .first
                                                            : null;

                                                    return Text(
                                                      valueOrDefault<String>(
                                                        textUsersRow?.name,
                                                        'Persona Asignada',
                                                      ).maybeHandleOverflow(
                                                        maxChars: 15,
                                                        replacement: '…',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .nunito(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF6E7191),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    );
                                                  },
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: () {
<<<<<<< HEAD
                                                      if (widget
=======
                                                      if (widget!
>>>>>>> master
                                                              .mttoCurrentStatus ==
                                                          MttoStatus.programado
                                                              .name) {
                                                        return Color(
                                                            0xFFFFD4AE);
<<<<<<< HEAD
                                                      } else if (widget
=======
                                                      } else if (widget!
>>>>>>> master
                                                              .mttoCurrentStatus ==
                                                          MttoStatus.en_proceso
                                                              .name) {
                                                        return Color(
                                                            0xFFECF1FF);
<<<<<<< HEAD
                                                      } else if (widget
=======
                                                      } else if (widget!
>>>>>>> master
                                                              .mttoCurrentStatus ==
                                                          MttoStatus
                                                              .ejecutado.name) {
                                                        return Color(
                                                            0xFFDAF5F3);
<<<<<<< HEAD
                                                      } else if (widget
=======
                                                      } else if (widget!
>>>>>>> master
                                                              .mttoCurrentStatus ==
                                                          MttoStatus
                                                              .parcialmente_ejecutado
                                                              .name) {
                                                        return Color(
                                                            0xFFFFE9B1);
<<<<<<< HEAD
                                                      } else if (widget
=======
                                                      } else if (widget!
>>>>>>> master
                                                              .mttoCurrentStatus ==
                                                          MttoStatus
                                                              .cancelado.name) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .errorBackground;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .alternate;
                                                      }
                                                    }(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            54.0),
                                                    border: Border.all(
                                                      color: () {
<<<<<<< HEAD
                                                        if (widget
=======
                                                        if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus
                                                                .programado
                                                                .name) {
                                                          return Color(
                                                              0xFFFFD4AE);
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus
                                                                .en_proceso
                                                                .name) {
                                                          return Color(
                                                              0xFFECF1FF);
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus.ejecutado
                                                                .name) {
                                                          return Color(
                                                              0xFFDAF5F3);
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus
                                                                .parcialmente_ejecutado
                                                                .name) {
                                                          return Color(
                                                              0xFFFFE9B1);
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus.cancelado
                                                                .name) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .errorBackground;
                                                        } else {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate;
                                                        }
                                                      }(),
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 8.0,
                                                                15.0, 6.0),
                                                    child: Text(
                                                      () {
<<<<<<< HEAD
                                                        if (widget
=======
                                                        if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus
                                                                .programado
                                                                .name) {
                                                          return 'PROGRAMADO';
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus
                                                                .en_proceso
                                                                .name) {
                                                          return 'EJECUTANDO';
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus.ejecutado
                                                                .name) {
                                                          return 'COMPLETADO';
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus
                                                                .parcialmente_ejecutado
                                                                .name) {
                                                          return 'PARCIAL';
<<<<<<< HEAD
                                                        } else if (widget
=======
                                                        } else if (widget!
>>>>>>> master
                                                                .mttoCurrentStatus ==
                                                            MttoStatus.cancelado
                                                                .name) {
                                                          return 'CANCELADO';
                                                        } else {
                                                          return 'SIN ESTADO';
                                                        }
                                                      }(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: () {
<<<<<<< HEAD
                                                              if (widget
=======
                                                              if (widget!
>>>>>>> master
                                                                      .mttoCurrentStatus ==
                                                                  MttoStatus
                                                                      .programado
                                                                      .name) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary;
<<<<<<< HEAD
                                                              } else if (widget
=======
                                                              } else if (widget!
>>>>>>> master
                                                                      .mttoCurrentStatus ==
                                                                  MttoStatus
                                                                      .en_proceso
                                                                      .name) {
                                                                return Color(
                                                                    0xFF466FFF);
<<<<<<< HEAD
                                                              } else if (widget
=======
                                                              } else if (widget!
>>>>>>> master
                                                                      .mttoCurrentStatus ==
                                                                  MttoStatus
                                                                      .ejecutado
                                                                      .name) {
                                                                return Color(
                                                                    0xFF01BCAD);
<<<<<<< HEAD
                                                              } else if (widget
=======
                                                              } else if (widget!
>>>>>>> master
                                                                      .mttoCurrentStatus ==
                                                                  MttoStatus
                                                                      .parcialmente_ejecutado
                                                                      .name) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .warning;
<<<<<<< HEAD
                                                              } else if (widget
=======
                                                              } else if (widget!
>>>>>>> master
                                                                      .mttoCurrentStatus ==
                                                                  MttoStatus
                                                                      .cancelado
                                                                      .name) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .error;
                                                              } else {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground;
                                                              }
                                                            }(),
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
<<<<<<< HEAD
                              if (widget.mttProvider == 'true')
=======
                              if (widget!.mttProvider == 'true')
>>>>>>> master
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFECF1FF),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 8.0, 15.0, 6.0),
                                    child: Text(
<<<<<<< HEAD
                                      'Proveedor:  ${widget.mttProvider}',
=======
                                      'Proveedor:  ${widget!.mttProvider}',
>>>>>>> master
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF466FFF),
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
<<<<<<< HEAD
                        if ((widget.mttoCurrentStatus !=
                                MttoStatus.ejecutado.name) &&
                            (widget.mttoCurrentStatus !=
=======
                        if ((widget!.mttoCurrentStatus !=
                                MttoStatus.ejecutado.name) &&
                            (widget!.mttoCurrentStatus !=
>>>>>>> master
                                MttoStatus.cancelado.name))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.showStatusSwitcher =
                                        !_model.showStatusSwitcher;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: Color(0xFF466FFF),
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'ACTUALIZAR ESTADO DEL MANTENIMIENTO',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF466FFF),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Icon(
                                            Icons.update,
                                            color: Color(0xFF466FFF),
                                            size: 20.0,
                                          ),
                                        ].divide(SizedBox(width: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.showStatusSwitcher == true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).tertiary,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
<<<<<<< HEAD
                                  if (widget.mttoCurrentStatus !=
=======
                                  if (widget!.mttoCurrentStatus !=
>>>>>>> master
                                      MttoStatus.programado.name)
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height: 40.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Container(
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .successBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  if (FFAppState().Internet) {
                                                    if ((_model.mttoObservationsTextController
                                                                .text ==
                                                            '') ||
                                                        (_model.finalMttoStatus ==
                                                            '') ||
                                                        (_model.finalMttoStatus ==
                                                            '')) {
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  1000));
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Antes de Actualizar',
                                                              alertDescription:
                                                                  'Recuerda llenar todos los campos importantes (actividades, observaciones, estado final, etc...)',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      await MaintenancesTable()
                                                          .update(
                                                        data: {
                                                          'status': MttoStatus
                                                              .ejecutado.name,
                                                          'maintenance_final_status':
                                                              _model
                                                                  .finalMttoStatus,
                                                          'observations': _model
                                                              .mttoObservationsTextController
                                                              .text,
                                                          'activities': functions
                                                              .convertDataTypeListToJSON(
                                                                  FFAppState()
                                                                      .activitiesList
                                                                      .toList()),
                                                          'maintenance_photographic_evidence':
                                                              _model
                                                                  .uploadedFileUrl_uploadedPhotographicRecord,
                                                          'authorizing_signature':
                                                              _model
                                                                  .authorizerNameTextController
                                                                  .text,
                                                          'reviewer_id': _model
                                                              .reviewerNameTextController
                                                              .text,
                                                          'approver_id': _model
                                                              .approverNameTextController
                                                              .text,
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
<<<<<<< HEAD
                                                          widget.maintenanceId,
=======
                                                          widget!.maintenanceId,
>>>>>>> master
                                                        ),
                                                      );
                                                      await MaintenanceObjectsTable()
                                                          .update(
                                                        data: {
                                                          'last_maintenance_date':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
<<<<<<< HEAD
                                                          widget.mttoObjectId,
=======
                                                          widget!.mttoObjectId,
>>>>>>> master
                                                        ),
                                                      );
                                                      await MaintenanceMonthsTable()
                                                          .insert({
                                                        'maintenance_id':
<<<<<<< HEAD
                                                            widget
=======
                                                            widget!
>>>>>>> master
                                                                .maintenanceId,
                                                        'year':
                                                            valueOrDefault<int>(
                                                          functions
                                                              .getCurrentYear(),
                                                          2025,
                                                        ),
                                                        'month': functions
                                                            .getCurrentMoth(),
                                                        'was_done': true,
                                                      });
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  2000));
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                ConfirmationModalWidget(
                                                              confirmationTitle:
                                                                  'Mtto. Actualizado',
                                                              confirmationDescription:
                                                                  'Mtto. Completado con éxito',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);

                                                                context
                                                                    .pushNamed(
                                                                  MaintenanceDetailWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'maintenanceId':
                                                                        serializeParam(
<<<<<<< HEAD
                                                                      widget
=======
                                                                      widget!
>>>>>>> master
                                                                          .maintenanceId,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    }
                                                  } else {
                                                    if ((_model.mttoObservationsTextController
                                                                .text ==
                                                            '') ||
                                                        (_model.finalMttoStatus ==
                                                            '') ||
                                                        (_model.finalMttoStatus ==
                                                            '')) {
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  1000));
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Antes de Actualizar',
                                                              alertDescription:
                                                                  'Recuerda llenar todos los campos importantes (actividades, observaciones, estado final, etc...)',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      FFAppState()
                                                          .updateUpdateMaintenanceStruct(
                                                        (e) => e
                                                          ..status = MttoStatus
                                                              .ejecutado.name
                                                          ..maintenanceFinalStatus =
                                                              _model
                                                                  .finalMttoStatus
                                                          ..observations = _model
                                                              .mttoObservationsTextController
                                                              .text
<<<<<<< HEAD
                                                          ..activities = (widget
=======
                                                          ..activities = (widget!
>>>>>>> master
                                                                      .mttoActivities!
                                                                      .toList()
                                                                      .map<ActivityStruct?>(
                                                                          ActivityStruct
                                                                              .maybeFromMap)
                                                                      .toList()
                                                                  as Iterable<
                                                                      ActivityStruct?>)
                                                              .withoutNulls
                                                              .toList()
                                                          ..maintenancePhotographicEvidence =
                                                              _model
                                                                  .uploadedFileUrl_uploadedPhotographicRecord
                                                          ..authorizingSignature =
                                                              _model
                                                                  .authorizerNameTextController
                                                                  .text
                                                          ..reviewerId = _model
                                                              .reviewerNameTextController
                                                              .text
                                                          ..approverId = _model
                                                              .approverNameTextController
                                                              .text,
                                                      );
                                                      safeSetState(() {});
                                                    }
                                                  }
                                                },
                                                text: 'COMPLETADO',
                                                icon: Icon(
                                                  Icons.check,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.end,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 5.0),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  color: Color(0x00F58321),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
<<<<<<< HEAD
                                  if (widget.mttoCurrentStatus ==
=======
                                  if (widget!.mttoCurrentStatus ==
>>>>>>> master
                                      MttoStatus.programado.name)
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height: 40.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Container(
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFECF1FF),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color: Color(0xFF466FFF),
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  await MaintenancesTable()
                                                      .update(
                                                    data: {
                                                      'status': MttoStatus
                                                          .en_proceso.name,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
<<<<<<< HEAD
                                                      widget.maintenanceId,
=======
                                                      widget!.maintenanceId,
>>>>>>> master
                                                    ),
                                                  );
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 2000));
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child:
                                                            ConfirmationModalWidget(
                                                          confirmationTitle:
                                                              'Mtto. Actualizado',
                                                          confirmationDescription:
                                                              'Mtto. Actualizado con éxito',
                                                          setCustomAction:
                                                              () async {
                                                            context.pushNamed(
                                                                MaintenancePageWidget
                                                                    .routeName);
                                                          },
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                text: 'EN PROCESO',
                                                icon: Icon(
                                                  Icons.schedule_send,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.end,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 5.0),
                                                  iconColor: Color(0xFF466FFF),
                                                  color: Color(0x00F58321),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Gilroy',
                                                        color:
                                                            Color(0xFF466FFF),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
<<<<<<< HEAD
                                  if ((widget.mttoCurrentStatus !=
                                          MttoStatus.programado.name) ||
                                      (widget.mttoCurrentStatus ==
=======
                                  if ((widget!.mttoCurrentStatus !=
                                          MttoStatus.programado.name) ||
                                      (widget!.mttoCurrentStatus ==
>>>>>>> master
                                          MttoStatus.en_proceso.name))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height: 40.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x4DF9CF58),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Builder(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.mttoObservationsTextController
                                                              .text ==
<<<<<<< HEAD
=======
                                                          null ||
                                                      _model.mttoObservationsTextController
                                                              .text ==
>>>>>>> master
                                                          '') {
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              AlertModalWidget(
                                                            alertTitle:
                                                                'Antes de Actualizar',
                                                            alertDescription:
                                                                'Por favor asegúrate de añadir una observación del por qué este Mtto. quedó Parcialmente Ejecutado.',
                                                            setCustomAction:
                                                                () async {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    await MaintenancesTable()
                                                        .update(
                                                      data: {
                                                        'status': MttoStatus
                                                            .parcialmente_ejecutado
                                                            .name,
                                                        'maintenance_final_status':
                                                            MttoFinalStatus
                                                                .EN_MANTENIMIENTO
                                                                .name,
                                                        'observations': _model
                                                            .mttoObservationsTextController
                                                            .text,
                                                        'activities': functions
                                                            .convertDataTypeListToJSON(
                                                                FFAppState()
                                                                    .activitiesList
                                                                    .toList()),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
<<<<<<< HEAD
                                                        widget.maintenanceId,
=======
                                                        widget!.maintenanceId,
>>>>>>> master
                                                      ),
                                                    );
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              ConfirmationModalWidget(
                                                            confirmationTitle:
                                                                'Mtto. Actualizado',
                                                            confirmationDescription:
                                                                'Mtto. como PARCIALMENTE EJECUTADO.',
                                                            setCustomAction:
                                                                () async {
                                                              context.pushNamed(
                                                                MaintenanceDetailWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'maintenanceId':
                                                                      serializeParam(
<<<<<<< HEAD
                                                                    widget
=======
                                                                    widget!
>>>>>>> master
                                                                        .maintenanceId,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }
                                                },
                                                text: 'PARCIALMENTE EJECUTADO',
                                                icon: Icon(
                                                  Icons.star_half_outlined,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.end,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 5.0),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .warning,
                                                  color: Color(0x00F58321),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Gilroy',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
<<<<<<< HEAD
                                  if ((widget.mttoCurrentStatus !=
                                          MttoStatus.programado.name) ||
                                      (widget.mttoCurrentStatus ==
=======
                                  if ((widget!.mttoCurrentStatus !=
                                          MttoStatus.programado.name) ||
                                      (widget!.mttoCurrentStatus ==
>>>>>>> master
                                          MttoStatus.en_proceso.name))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height: 40.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x7FFFA900),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryDegraded,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Builder(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.mttoObservationsTextController
                                                              .text ==
<<<<<<< HEAD
=======
                                                          null ||
                                                      _model.mttoObservationsTextController
                                                              .text ==
>>>>>>> master
                                                          '') {
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              AlertModalWidget(
                                                            alertTitle:
                                                                'Antes de Actualizar',
                                                            alertDescription:
                                                                'Por favor asegúrate de añadir un comentario sobre el por qué se devuelve el objeto.',
                                                            setCustomAction:
                                                                () async {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    await MaintenanceObjectsTable()
                                                        .update(
                                                      data: {
                                                        'current_state':
                                                            MttoFinalStatus
                                                                .DEVOLUCION
                                                                .name,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
<<<<<<< HEAD
                                                        widget.mttoObjectId,
=======
                                                        widget!.mttoObjectId,
>>>>>>> master
                                                      ),
                                                    );
                                                    await MaintenancesTable()
                                                        .update(
                                                      data: {
                                                        'observations': _model
                                                            .mttoObservationsTextController
                                                            .text,
                                                        'maintenance_final_status':
                                                            MttoFinalStatus
                                                                .DEVOLUCION
                                                                .name,
                                                        'status': MttoStatus
                                                            .ejecutado.name,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
<<<<<<< HEAD
                                                        widget.maintenanceId,
=======
                                                        widget!.maintenanceId,
>>>>>>> master
                                                      ),
                                                    );
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              ConfirmationModalWidget(
                                                            confirmationTitle:
                                                                'Mtto. Actualizado',
                                                            confirmationDescription:
                                                                'Mtto. marcado como DEVUELTO',
                                                            setCustomAction:
                                                                () async {
                                                              context.pushNamed(
                                                                MaintenanceDetailWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'maintenanceId':
                                                                      serializeParam(
<<<<<<< HEAD
                                                                    widget
=======
                                                                    widget!
>>>>>>> master
                                                                        .maintenanceId,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }

                                                  safeSetState(() {});
                                                },
                                                text: 'DEVOLUCIÓN',
                                                icon: Icon(
                                                  Icons.loop,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.end,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 5.0),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryDegraded,
                                                  color: Color(0x00F58321),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Gilroy',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryDegraded,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
<<<<<<< HEAD
                                  if ((widget.mttoCurrentStatus ==
                                          MttoStatus.programado.name) ||
                                      (widget.mttoCurrentStatus ==
=======
                                  if ((widget!.mttoCurrentStatus ==
                                          MttoStatus.programado.name) ||
                                      (widget!.mttoCurrentStatus ==
>>>>>>> master
                                          MttoStatus.en_proceso.name))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height: 40.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Container(
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .errorBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Builder(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.mttoObservationsTextController
                                                              .text ==
<<<<<<< HEAD
=======
                                                          null ||
                                                      _model.mttoObservationsTextController
                                                              .text ==
>>>>>>> master
                                                          '') {
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
<<<<<<< HEAD
                                                    if (widget
=======
                                                    if (widget!
>>>>>>> master
                                                            .mttoCurrentStatus ==
                                                        MttoStatus
                                                            .programado.name) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Antes de Actualizar',
                                                              alertDescription:
                                                                  'Por favor añade una observación y da click de nuevo en CANCELAR.',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      FFAppState()
                                                          .showObsInput = true;
                                                      _model.updatePage(() {});
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Antes de Actualizar',
                                                              alertDescription:
                                                                  'Por favor asegúrate de añadir una observación del por qué este Mtto. quedó Cancelado.',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    }
                                                  } else {
                                                    await MaintenancesTable()
                                                        .update(
                                                      data: {
                                                        'status': MttoStatus
                                                            .cancelado.name,
                                                        'maintenance_final_status':
                                                            MttoFinalStatus
                                                                .OPERATIVO.name,
                                                        'observations': _model
                                                            .mttoObservationsTextController
                                                            .text,
                                                        'activities': functions
                                                            .convertDataTypeListToJSON(
                                                                FFAppState()
                                                                    .activitiesList
                                                                    .toList()),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
<<<<<<< HEAD
                                                        widget.maintenanceId,
=======
                                                        widget!.maintenanceId,
>>>>>>> master
                                                      ),
                                                    );
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              ConfirmationModalWidget(
                                                            confirmationTitle:
                                                                'Mtto. Actualizado',
                                                            confirmationDescription:
                                                                'Mtto. CANCELADO con éxito',
                                                            setCustomAction:
                                                                () async {
                                                              FFAppState()
                                                                      .showObsInput =
                                                                  false;
                                                              _model.updatePage(
                                                                  () {});

                                                              context.pushNamed(
                                                                MaintenanceDetailWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'maintenanceId':
                                                                      serializeParam(
<<<<<<< HEAD
                                                                    widget
=======
                                                                    widget!
>>>>>>> master
                                                                        .maintenanceId,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }
                                                },
                                                text: 'CANCELADO',
                                                icon: Icon(
                                                  Icons.close,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.end,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 5.0),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                  color: Color(0x00F58321),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 18.0, 0.0, 18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fecha de Inicio Mtto.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF6E7191),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 18.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    functions.dateForScheduledMtto(
<<<<<<< HEAD
                                        widget.mttoStartTime?.toString()),
=======
                                        widget!.mttoStartTime?.toString()),
>>>>>>> master
                                    '01 Dic, 2025',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFFA0A3BD),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: Color(0xFFEFF0F6),
                              ),
                            ].divide(SizedBox(height: 7.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Frecuencia de Mtto.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF6E7191),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 18.0),
                                child: Text(
                                  valueOrDefault<String>(
<<<<<<< HEAD
                                    widget.mttoFrecuency,
=======
                                    widget!.mttoFrecuency,
>>>>>>> master
                                    'Anual',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFFA0A3BD),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: Color(0xFFEFF0F6),
                              ),
                            ].divide(SizedBox(height: 7.0)),
                          ),
                        ),
<<<<<<< HEAD
                        if (widget.mttoCurrentStatus !=
=======
                        if (widget!.mttoCurrentStatus !=
>>>>>>> master
                            MttoStatus.programado.name)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 18.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Estado Final del Mtto.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF6E7191),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Builder(
                                  builder: (context) {
<<<<<<< HEAD
                                    if (widget.mttoCurrentStatus ==
=======
                                    if (widget!.mttoCurrentStatus ==
>>>>>>> master
                                        MttoStatus.en_proceso.name) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                          .operativeStateCheckboxValue ??=
                                                      false,
                                                  onChanged: ((_model.index ==
                                                              2) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 4) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : (newValue) async {
                                                          safeSetState(() =>
                                                              _model.operativeStateCheckboxValue =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            _model.index = 1;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                MttoFinalStatus
                                                                    .OPERATIVO
                                                                    .name;
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.index = null;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                null;
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                  side: (FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
<<<<<<< HEAD
                                                              .alternate,
=======
                                                              .alternate!,
>>>>>>> master
                                                        )
                                                      : null,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: ((_model.index ==
                                                              2) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 4) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Operativo',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                          .pendingStateCheckboxValue ??=
                                                      false,
                                                  onChanged: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 4) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : (newValue) async {
                                                          safeSetState(() =>
                                                              _model.pendingStateCheckboxValue =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            _model.index = 2;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                MttoFinalStatus
                                                                    .PENDIENTES_FALLA_CORREGIDA
                                                                    .name;
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.index = null;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                null;
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                  side: (FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
<<<<<<< HEAD
                                                              .alternate,
=======
                                                              .alternate!,
>>>>>>> master
                                                        )
                                                      : null,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 4) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Pendientes. Falla Corregida',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                          .outOfInventoryStateCheckboxValue ??=
                                                      false,
                                                  onChanged: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 2) ||
                                                          (_model.index == 4) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : (newValue) async {
                                                          safeSetState(() =>
                                                              _model.outOfInventoryStateCheckboxValue =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            _model.index = 3;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                MttoFinalStatus
                                                                    .BAJA_INVENTARIO
                                                                    .name;
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.index = null;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                null;
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                  side: (FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
<<<<<<< HEAD
                                                              .alternate,
=======
                                                              .alternate!,
>>>>>>> master
                                                        )
                                                      : null,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 2) ||
                                                          (_model.index == 4) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Se da de baja del inventario',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                          .transferStateCheckboxValue ??=
                                                      false,
                                                  onChanged: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 2) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : (newValue) async {
                                                          safeSetState(() =>
                                                              _model.transferStateCheckboxValue =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            _model.index = 4;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                MttoFinalStatus
                                                                    .TRASLADADO
                                                                    .name;
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.index = null;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                null;
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                  side: (FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
<<<<<<< HEAD
                                                              .alternate,
=======
                                                              .alternate!,
>>>>>>> master
                                                        )
                                                      : null,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 2) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 5))
                                                      ? null
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Trasladado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                          .tfailurStateCheckboxValue ??=
                                                      false,
                                                  onChanged: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 2) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 4))
                                                      ? null
                                                      : (newValue) async {
                                                          safeSetState(() =>
                                                              _model.tfailurStateCheckboxValue =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            _model.index = 5;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                MttoFinalStatus
                                                                    .FALLA.name;
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.index = null;
                                                            safeSetState(() {});
                                                            _model.finalMttoStatus =
                                                                null;
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                  side: (FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
<<<<<<< HEAD
                                                              .alternate,
=======
                                                              .alternate!,
>>>>>>> master
                                                        )
                                                      : null,
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: ((_model.index ==
                                                              1) ||
                                                          (_model.index == 2) ||
                                                          (_model.index == 3) ||
                                                          (_model.index == 4))
                                                      ? null
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Falla',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    } else {
                                      return Text(
                                        valueOrDefault<String>(
<<<<<<< HEAD
                                          widget.mttFinalStatus,
=======
                                          widget!.mttFinalStatus,
>>>>>>> master
                                          'No se especifica estado',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFFA0A3BD),
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      );
                                    }
                                  },
                                ),
                                Divider(
                                  height: 1.0,
                                  thickness: 1.0,
                                  color: Color(0xFFEFF0F6),
                                ),
                              ].divide(SizedBox(height: 7.0)),
                            ),
                          ),
<<<<<<< HEAD
                        if ((widget.mttoCurrentStatus !=
                                MttoStatus.programado.name) &&
                            (widget.mttoCurrentStatus !=
=======
                        if ((widget!.mttoCurrentStatus !=
                                MttoStatus.programado.name) &&
                            (widget!.mttoCurrentStatus !=
>>>>>>> master
                                MttoStatus.cancelado.name))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 18.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Actividades Realizadas',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF6E7191),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Builder(
                                  builder: (context) {
<<<<<<< HEAD
                                    if (widget.mttoCurrentStatus ==
=======
                                    if (widget!.mttoCurrentStatus ==
>>>>>>> master
                                        MttoStatus.programado.name) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 18.0),
                                            child: Text(
                                              'No hay registros por el momento.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: Color(0xFFA0A3BD),
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                          Divider(
                                            height: 1.0,
                                            thickness: 1.0,
                                            color: Color(0xFFEFF0F6),
                                          ),
                                        ],
                                      );
<<<<<<< HEAD
                                    } else if (widget.mttoCurrentStatus ==
=======
                                    } else if (widget!.mttoCurrentStatus ==
>>>>>>> master
                                        MttoStatus.en_proceso.name) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'Agrega las actividades realizadas. Estas se guardarán cuando cambies el estado del Mtto. a ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: 'COMPLETADO',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: '.',
                                                    style: TextStyle(),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.2,
                                            constraints: BoxConstraints(
                                              maxHeight: double.infinity,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: Builder(
                                              builder: (context) {
                                                final activitiesList =
                                                    FFAppState()
                                                        .activitiesList
                                                        .toList();

                                                return ListView.separated(
                                                  padding: EdgeInsets.fromLTRB(
                                                    0,
                                                    10.0,
                                                    0,
                                                    0,
                                                  ),
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      activitiesList.length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(height: 10.0),
                                                  itemBuilder: (context,
                                                      activitiesListIndex) {
                                                    final activitiesListItem =
                                                        activitiesList[
                                                            activitiesListIndex];
                                                    return wrapWithModel(
                                                      model: _model
                                                          .activitiesInputModels
                                                          .getModel(
                                                        activitiesListIndex
                                                            .toString(),
                                                        activitiesListIndex,
                                                      ),
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ActivitiesInputWidget(
                                                        key: Key(
                                                          'Keyzh1_${activitiesListIndex.toString()}',
                                                        ),
                                                        itemAtIndex:
                                                            activitiesListIndex,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  FFAppState()
                                                      .addToActivitiesList(
                                                          ActivitiesStruct(
                                                    id: random_data
                                                        .randomString(
                                                      5,
                                                      5,
                                                      true,
                                                      true,
                                                      true,
                                                    ),
                                                  ));
                                                  safeSetState(() {});
                                                },
                                                text: 'Añadir actividad',
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 160.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.start,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 4.0),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  color: Color(0x66F58321),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
                                                          ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Añade Registro Fotográfico (max. 5MB)',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: Color(
                                                                0xFF6E7191),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    Container(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Builder(
                                                        builder: (context) {
                                                          if (_model.uploadedFileUrl_uploadedPhotographicRecord ==
<<<<<<< HEAD
=======
                                                                  null ||
                                                              _model.uploadedFileUrl_uploadedPhotographicRecord ==
>>>>>>> master
                                                                  '') {
                                                            return InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                final selectedMedia =
                                                                    await selectMediaWithSourceBottomSheet(
                                                                  context:
                                                                      context,
                                                                  storageFolderPath:
                                                                      'disicheck_all_media',
                                                                  maxWidth:
                                                                      400.00,
                                                                  maxHeight:
                                                                      400.00,
                                                                  allowPhoto:
                                                                      true,
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                  textColor:
                                                                      Colors
                                                                          .black,
                                                                  pickerFontFamily:
                                                                      'Plus Jakarta Sans',
                                                                );
                                                                if (selectedMedia !=
                                                                        null &&
                                                                    selectedMedia.every((m) =>
                                                                        validateFileFormat(
                                                                            m.storagePath,
                                                                            context))) {
                                                                  safeSetState(() =>
                                                                      _model.isDataUploading_uploadedPhotographicRecord =
                                                                          true);
                                                                  var selectedUploadedFiles =
                                                                      <FFUploadedFile>[];

                                                                  var downloadUrls =
                                                                      <String>[];
                                                                  try {
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Subiendo archivo',
                                                                      showLoading:
                                                                          true,
                                                                    );
                                                                    selectedUploadedFiles = selectedMedia
                                                                        .map((m) => FFUploadedFile(
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
                                                                            ))
                                                                        .toList();

                                                                    downloadUrls =
                                                                        await uploadSupabaseStorageFiles(
                                                                      bucketName:
                                                                          'disicheck_all_media',
                                                                      selectedFiles:
                                                                          selectedMedia,
                                                                    );
                                                                  } finally {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .hideCurrentSnackBar();
                                                                    _model.isDataUploading_uploadedPhotographicRecord =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFiles
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length &&
                                                                      downloadUrls
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.uploadedLocalFile_uploadedPhotographicRecord =
                                                                          selectedUploadedFiles
                                                                              .first;
                                                                      _model.uploadedFileUrl_uploadedPhotographicRecord =
                                                                          downloadUrls
                                                                              .first;
                                                                    });
                                                                    showUploadMessage(
                                                                        context,
                                                                        '¡Archivo subido exitósamente!');
                                                                  } else {
                                                                    safeSetState(
                                                                        () {});
                                                                    showUploadMessage(
                                                                        context,
                                                                        'Hubo un error al subir el archivo, por favor, intenta de nuevo.');
                                                                    return;
                                                                  }
                                                                }
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/disicheck-upload-photographic-record.jpg',
                                                                  width: 200.0,
                                                                  height: 200.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                _model
                                                                    .uploadedFileUrl_uploadedPhotographicRecord,
                                                                width: 200.0,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 20.0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Nombre de la persona que autoriza',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF6E7191),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .authorizerNameTextController,
                                                      focusNode: _model
                                                          .authorizerNameFocusNode,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        hintText:
                                                            'Carlos Pérez',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      validator: _model
                                                          .authorizerNameTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Nombre de la persona que revisó',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF6E7191),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .reviewerNameTextController,
                                                      focusNode: _model
                                                          .reviewerNameFocusNode,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        hintText:
                                                            'Cecilia Vallejo',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      validator: _model
                                                          .reviewerNameTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Nombre de la persona que aprobó',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF6E7191),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .approverNameTextController,
                                                      focusNode: _model
                                                          .approverNameFocusNode,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        hintText:
                                                            'Julián Camilo',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      validator: _model
                                                          .approverNameTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 1.0,
                                            thickness: 1.0,
                                            color: Color(0xFFEFF0F6),
                                          ),
                                        ].divide(SizedBox(height: 20.0)),
                                      );
<<<<<<< HEAD
                                    } else if (widget.mttoCurrentStatus ==
=======
                                    } else if (widget!.mttoCurrentStatus ==
>>>>>>> master
                                        MttoStatus.ejecutado.name) {
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              functions
                                                  .convertActivitiesJsonToMultilineString(
<<<<<<< HEAD
                                                      widget.mttoActivities
=======
                                                      widget!.mttoActivities
>>>>>>> master
                                                          ?.toString())!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 50.0)),
                                      );
                                    } else {
                                      return Container(
                                        width: 0.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(),
                                      );
                                    }
                                  },
                                ),
                              ].divide(SizedBox(height: 7.0)),
                            ),
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Observaciones',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: Color(0xFF6E7191),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                            Builder(
                              builder: (context) {
<<<<<<< HEAD
                                if ((widget.mttoCurrentStatus ==
=======
                                if ((widget!.mttoCurrentStatus ==
>>>>>>> master
                                        MttoStatus.programado.name) &&
                                    (FFAppState().showObsInput == false)) {
                                  return Text(
                                    'Sin observaciones',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFFA0A3BD),
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  );
<<<<<<< HEAD
                                } else if ((widget.mttoCurrentStatus ==
=======
                                } else if ((widget!.mttoCurrentStatus ==
>>>>>>> master
                                        MttoStatus.en_proceso.name) ||
                                    (FFAppState().showObsInput == true)) {
                                  return Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller:
                                          _model.mttoObservationsTextController,
                                      focusNode:
                                          _model.mttoObservationsFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintText:
                                            'Agrega comentarios y/o observaciones para los distintos estados; por qué se DEVOLVIÓ, por qué se CANCELÓ, etc...',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      maxLines: 10,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .mttoObservationsTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  );
<<<<<<< HEAD
                                } else if ((widget.mttoCurrentStatus ==
                                        MttoStatus.cancelado.name) ||
                                    (widget.mttoCurrentStatus ==
=======
                                } else if ((widget!.mttoCurrentStatus ==
                                        MttoStatus.cancelado.name) ||
                                    (widget!.mttoCurrentStatus ==
>>>>>>> master
                                        MttoStatus.ejecutado.name)) {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 18.0),
                                    child: Text(
                                      valueOrDefault<String>(
<<<<<<< HEAD
                                        widget.mttObservations,
=======
                                        widget!.mttObservations,
>>>>>>> master
                                        'No se ingresan observaciones',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xFFA0A3BD),
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    decoration: BoxDecoration(),
                                  );
                                }
                              },
                            ),
<<<<<<< HEAD
                            if (widget.photographicRecord != null &&
                                widget.photographicRecord != '')
=======
                            if (widget!.photographicRecord != null &&
                                widget!.photographicRecord != '')
>>>>>>> master
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Registro fotográfico',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF6E7191),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
<<<<<<< HEAD
                                      widget.photographicRecord!,
=======
                                      widget!.photographicRecord!,
>>>>>>> master
                                      width: double.infinity,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 10.0)),
                              ),
                          ].divide(SizedBox(height: 7.0)),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
