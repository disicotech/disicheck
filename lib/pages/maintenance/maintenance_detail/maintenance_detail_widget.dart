<<<<<<< HEAD
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/maintenance/components/mtto_detail/mtto_detail_widget.dart';
import '/pages/maintenance/components/skeletons/shimmer_maintenance_detail/shimmer_maintenance_detail_widget.dart';
=======
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/maintenance/components/mtto_detail/mtto_detail_widget.dart';
import '/pages/maintenance/components/skeletons/shimmer_maintenance_detail/shimmer_maintenance_detail_widget.dart';
import 'dart:ui';
>>>>>>> master
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'maintenance_detail_model.dart';
export 'maintenance_detail_model.dart';

class MaintenanceDetailWidget extends StatefulWidget {
  const MaintenanceDetailWidget({
    super.key,
    required this.maintenanceId,
  });

  final String? maintenanceId;

  static String routeName = 'MaintenanceDetail';
  static String routePath = '/maintenanceDetail';

  @override
  State<MaintenanceDetailWidget> createState() =>
      _MaintenanceDetailWidgetState();
}

class _MaintenanceDetailWidgetState extends State<MaintenanceDetailWidget> {
  late MaintenanceDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenanceDetailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'Detalle del Mtto.',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            body: SafeArea(
              top: true,
              child: Builder(
                builder: (context) {
                  if (FFAppState().Internet) {
                    return FutureBuilder<List<MaintenancesRow>>(
                      future: _model.cacheMaintenanceDetail(
<<<<<<< HEAD
                        uniqueQueryKey: widget.maintenanceId,
                        requestFn: () => MaintenancesTable().querySingleRow(
                          queryFn: (q) => q.eqOrNull(
                            'id',
                            widget.maintenanceId,
=======
                        uniqueQueryKey: widget!.maintenanceId,
                        requestFn: () => MaintenancesTable().querySingleRow(
                          queryFn: (q) => q.eqOrNull(
                            'id',
                            widget!.maintenanceId,
>>>>>>> master
                          ),
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: ShimmerMaintenanceDetailWidget(),
                          );
                        }
                        List<MaintenancesRow> onlineViewMaintenancesRowList =
                            snapshot.data!;

                        final onlineViewMaintenancesRow =
                            onlineViewMaintenancesRowList.isNotEmpty
                                ? onlineViewMaintenancesRowList.first
                                : null;

                        return Container(
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19.59, 20.0, 19.59, 20.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              MaintenancePageWidget.routeName);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.arrow_back,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Detalle del Mtto.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 0.0),
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.mttoDetailModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MttoDetailWidget(
                                            mttoObjectId:
                                                onlineViewMaintenancesRow
                                                    ?.odemId,
                                            mttoAssignedPersonId:
                                                onlineViewMaintenancesRow
                                                    ?.responsibleId,
                                            mttObservations:
                                                onlineViewMaintenancesRow
                                                    ?.observations,
                                            mttoCurrentStatus:
                                                onlineViewMaintenancesRow
                                                    ?.status,
                                            mttoStartTime:
                                                onlineViewMaintenancesRow
                                                    ?.startDate,
                                            mttoFrecuency:
                                                onlineViewMaintenancesRow
                                                    ?.frequency,
                                            mttoActivities:
                                                onlineViewMaintenancesRow
                                                    ?.activities,
                                            maintenanceId:
<<<<<<< HEAD
                                                widget.maintenanceId!,
=======
                                                widget!.maintenanceId!,
>>>>>>> master
                                            mttProvider:
                                                onlineViewMaintenancesRow
                                                    ?.maintenanceProvider,
                                            mttFinalStatus:
                                                onlineViewMaintenancesRow!
                                                    .maintenanceFinalStatus,
                                            photographicRecord:
                                                onlineViewMaintenancesRow
<<<<<<< HEAD
                                                    .maintenancePhotographicEvidence,
=======
                                                    ?.maintenancePhotographicEvidence,
>>>>>>> master
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Container(
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
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
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  19.59, 20.0, 19.59, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          MaintenancePageWidget.routeName);
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.arrow_back,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: Text(
                                              'Detalle del Mtto.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.mttoDetailModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MttoDetailWidget(
                                        mttoObjectId: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.odemId,
                                        mttoAssignedPersonId: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.responsibleId,
                                        mttObservations: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.observations,
                                        mttoCurrentStatus: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.status,
                                        mttoStartTime: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.startDate,
                                        mttoFrecuency: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.frequency,
                                        mttoActivities: _model.activities,
<<<<<<< HEAD
                                        maintenanceId: widget.maintenanceId!,
                                        mttProvider: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
                                                e.id == widget.maintenanceId)
=======
                                        maintenanceId: widget!.maintenanceId!,
                                        mttProvider: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.maintenanceProvider,
                                        mttFinalStatus: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull!
                                            .maintenanceFinalStatus,
                                        photographicRecord: FFAppState()
                                            .userMaintenances
                                            .where((e) =>
<<<<<<< HEAD
                                                e.id == widget.maintenanceId)
=======
                                                e.id == widget!.maintenanceId)
>>>>>>> master
                                            .toList()
                                            .firstOrNull
                                            ?.maintenancePhotographicEvidence,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ));
  }
}
