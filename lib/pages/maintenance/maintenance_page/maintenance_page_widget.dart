import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/maintenance/components/no_completed_maintenances/no_completed_maintenances_widget.dart';
import '/pages/maintenance/components/no_in_process_maintenances/no_in_process_maintenances_widget.dart';
import '/pages/maintenance/components/no_scheduled_maintenances/no_scheduled_maintenances_widget.dart';
import '/pages/maintenance/components/scheduled_maintenance_object/scheduled_maintenance_object_widget.dart';
import '/pages/maintenance/components/skeletons/shimmer_maintenances_list/shimmer_maintenances_list_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'maintenance_page_model.dart';
export 'maintenance_page_model.dart';

class MaintenancePageWidget extends StatefulWidget {
  const MaintenancePageWidget({super.key});

  static String routeName = 'MaintenancePage';
  static String routePath = '/maintenancePage';

  @override
  State<MaintenancePageWidget> createState() => _MaintenancePageWidgetState();
}

class _MaintenancePageWidgetState extends State<MaintenancePageWidget>
    with TickerProviderStateMixin {
  late MaintenancePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenancePageModel());

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.tabBarController2 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

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
        title: 'Mantenimientos',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF8FAFE),
            body: SafeArea(
              top: true,
              child: Builder(
                builder: (context) {
                  if (valueOrDefault<bool>(
                    FFAppState().Internet,
                    true,
                  )) {
                    return Stack(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.desktopSideBarModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: DesktopSideBarWidget(),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return MediaQuery.sizeOf(context).width;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 650.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 800.0;
                                      } else {
                                        return 800.0;
                                      }
                                    }(),
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.8,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  19.59, 20.0, 19.59, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        HomePageWidget
                                                            .routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_back,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Mantenimientos',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
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
                                        Flexible(
                                          child: FutureBuilder<
                                              List<MaintenancesRow>>(
                                            future:
                                                MaintenancesTable().queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'responsible_id',
                                                currentUserUid,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return ShimmerMaintenancesListWidget();
                                              }
                                              List<MaintenancesRow>
                                                  tabBarMaintenancesRowList =
                                                  snapshot.data!;

                                              return Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment(0.0, 0),
                                                    child: TabBar(
                                                      labelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      unselectedLabelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                              ),
                                                      unselectedLabelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                              ),
                                                      indicatorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      tabs: [
                                                        Tab(
                                                          text: 'Próximos',
                                                        ),
                                                        Tab(
                                                          text: 'En Ejecución',
                                                        ),
                                                        Tab(
                                                          text: 'Completados',
                                                        ),
                                                      ],
                                                      controller: _model
                                                          .tabBarController1,
                                                      onTap: (i) async {
                                                        [
                                                          () async {},
                                                          () async {},
                                                          () async {}
                                                        ][i]();
                                                      },
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: TabBarView(
                                                      controller: _model
                                                          .tabBarController1,
                                                      children: [
                                                        SingleChildScrollView(
                                                          primary: false,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  height: 650.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFF8FAFE),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final scheduledMttos = tabBarMaintenancesRowList
                                                                            .where((e) =>
                                                                                e.status ==
                                                                                MttoStatus.programado.name)
                                                                            .toList();
                                                                        if (scheduledMttos
                                                                            .isEmpty) {
                                                                          return Center(
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              height: double.infinity,
                                                                              child: NoScheduledMaintenancesWidget(),
                                                                            ),
                                                                          );
                                                                        }

                                                                        return ListView
                                                                            .separated(
                                                                          padding:
                                                                              EdgeInsets.fromLTRB(
                                                                            0,
                                                                            20.0,
                                                                            0,
                                                                            20.0,
                                                                          ),
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              scheduledMttos.length,
                                                                          separatorBuilder: (_, __) =>
                                                                              SizedBox(height: 16.0),
                                                                          itemBuilder:
                                                                              (context, scheduledMttosIndex) {
                                                                            final scheduledMttosItem =
                                                                                scheduledMttos[scheduledMttosIndex];
                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  MaintenanceDetailWidget.routeName,
                                                                                  queryParameters: {
                                                                                    'maintenanceId': serializeParam(
                                                                                      scheduledMttosItem.id,
                                                                                      ParamType.String,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                      duration: Duration(milliseconds: 0),
                                                                                    ),
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: wrapWithModel(
                                                                                model: _model.scheduledMaintenanceObjectModels1.getModel(
                                                                                  scheduledMttosItem.id,
                                                                                  scheduledMttosIndex,
                                                                                ),
                                                                                updateCallback: () => safeSetState(() {}),
                                                                                child: ScheduledMaintenanceObjectWidget(
                                                                                  key: Key(
                                                                                    'Key8i5_${scheduledMttosItem.id}',
                                                                                  ),
                                                                                  assetId: scheduledMttosItem.odemId,
                                                                                  assetAssigedCodeId: scheduledMttosItem.responsibleId!,
                                                                                  maintenanceDate: scheduledMttosItem.startDate!,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Flexible(
                                                              child: Container(
                                                                height: 650.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF8FAFE),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final inProcessMttos = tabBarMaintenancesRowList
                                                                          .where((e) =>
                                                                              e.status ==
                                                                              MttoStatus.en_proceso.name)
                                                                          .toList();
                                                                      if (inProcessMttos
                                                                          .isEmpty) {
                                                                        return Center(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            child:
                                                                                NoInProcessMaintenancesWidget(),
                                                                          ),
                                                                        );
                                                                      }

                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.fromLTRB(
                                                                          0,
                                                                          20.0,
                                                                          0,
                                                                          20.0,
                                                                        ),
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            inProcessMttos.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                SizedBox(height: 16.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                inProcessMttosIndex) {
                                                                          final inProcessMttosItem =
                                                                              inProcessMttos[inProcessMttosIndex];
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                MaintenanceDetailWidget.routeName,
                                                                                queryParameters: {
                                                                                  'maintenanceId': serializeParam(
                                                                                    inProcessMttosItem.id,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                    duration: Duration(milliseconds: 0),
                                                                                  ),
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.scheduledMaintenanceObjectModels2.getModel(
                                                                                inProcessMttosItem.id,
                                                                                inProcessMttosIndex,
                                                                              ),
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: ScheduledMaintenanceObjectWidget(
                                                                                key: Key(
                                                                                  'Key1zy_${inProcessMttosItem.id}',
                                                                                ),
                                                                                assetId: inProcessMttosItem.odemId,
                                                                                assetAssigedCodeId: inProcessMttosItem.responsibleId!,
                                                                                maintenanceDate: inProcessMttosItem.startDate!,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Flexible(
                                                              child: Container(
                                                                height: 650.0,
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxHeight:
                                                                      650.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF8FAFE),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final completedMttos = tabBarMaintenancesRowList
                                                                          .where((e) =>
                                                                              e.status ==
                                                                              MttoStatus.ejecutado.name)
                                                                          .toList();
                                                                      if (completedMttos
                                                                          .isEmpty) {
                                                                        return Center(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            child:
                                                                                NoCompletedMaintenancesWidget(),
                                                                          ),
                                                                        );
                                                                      }

                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.fromLTRB(
                                                                          0,
                                                                          20.0,
                                                                          0,
                                                                          20.0,
                                                                        ),
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            completedMttos.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                SizedBox(height: 16.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                completedMttosIndex) {
                                                                          final completedMttosItem =
                                                                              completedMttos[completedMttosIndex];
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                MaintenanceDetailWidget.routeName,
                                                                                queryParameters: {
                                                                                  'maintenanceId': serializeParam(
                                                                                    completedMttosItem.id,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                    duration: Duration(milliseconds: 0),
                                                                                  ),
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.scheduledMaintenanceObjectModels3.getModel(
                                                                                completedMttosItem.id,
                                                                                completedMttosIndex,
                                                                              ),
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: ScheduledMaintenanceObjectWidget(
                                                                                key: Key(
                                                                                  'Key08f_${completedMttosItem.id}',
                                                                                ),
                                                                                assetId: completedMttosItem.odemId,
                                                                                assetAssigedCodeId: completedMttosItem.responsibleId!,
                                                                                maintenanceDate: completedMttosItem.startDate!,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: wrapWithModel(
                            model: _model.navBarModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBarWidget(
                              homeSelected: false,
                              mttosSelected: true,
                              inventorySelected: false,
                              profileSelected: false,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Stack(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.desktopSideBarModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: DesktopSideBarWidget(),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return MediaQuery.sizeOf(context).width;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 650.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 800.0;
                                      } else {
                                        return 800.0;
                                      }
                                    }(),
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.8,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  19.59, 20.0, 19.59, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        HomePageWidget
                                                            .routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_back,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Mantenimientos',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
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
                                        Flexible(
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment(0.0, 0),
                                                child: TabBar(
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                  unselectedLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: [
                                                    Tab(
                                                      text: 'Próximos',
                                                    ),
                                                    Tab(
                                                      text: 'En Ejecución',
                                                    ),
                                                    Tab(
                                                      text: 'Ejecutados',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController2,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController2,
                                                  children: [
                                                    SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Flexible(
                                                            child: Container(
                                                              height: 650.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFF8FAFE),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final scheduledMttos = FFAppState()
                                                                        .userMaintenances
                                                                        .where((e) =>
                                                                            e.status ==
                                                                            MttoStatus.programado.name)
                                                                        .toList();

                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .fromLTRB(
                                                                        0,
                                                                        20.0,
                                                                        0,
                                                                        20.0,
                                                                      ),
                                                                      primary:
                                                                          false,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          scheduledMttos
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          SizedBox(
                                                                              height: 16.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              scheduledMttosIndex) {
                                                                        final scheduledMttosItem =
                                                                            scheduledMttos[scheduledMttosIndex];
                                                                        return InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              MaintenanceDetailWidget.routeName,
                                                                              queryParameters: {
                                                                                'maintenanceId': serializeParam(
                                                                                  scheduledMttosItem.id,
                                                                                  ParamType.String,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                  duration: Duration(milliseconds: 0),
                                                                                ),
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.scheduledMaintenanceObjectModels4.getModel(
                                                                              scheduledMttosItem.id,
                                                                              scheduledMttosIndex,
                                                                            ),
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                ScheduledMaintenanceObjectWidget(
                                                                              key: Key(
                                                                                'Keypvd_${scheduledMttosItem.id}',
                                                                              ),
                                                                              assetId: scheduledMttosItem.odemId,
                                                                              assetAssigedCodeId: scheduledMttosItem.responsibleId,
                                                                              maintenanceDate: scheduledMttosItem.startDate!,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Flexible(
                                                          child: Container(
                                                            height: 650.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFF8FAFE),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final inProcessMttos = FFAppState()
                                                                      .userMaintenances
                                                                      .where((e) =>
                                                                          e.status ==
                                                                          MttoStatus
                                                                              .en_proceso
                                                                              .name)
                                                                      .toList();
                                                                  if (inProcessMttos
                                                                      .isEmpty) {
                                                                    return Center(
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        child:
                                                                            NoInProcessMaintenancesWidget(),
                                                                      ),
                                                                    );
                                                                  }

                                                                  return ListView
                                                                      .separated(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .fromLTRB(
                                                                      0,
                                                                      20.0,
                                                                      0,
                                                                      20.0,
                                                                    ),
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        inProcessMttos
                                                                            .length,
                                                                    separatorBuilder: (_,
                                                                            __) =>
                                                                        SizedBox(
                                                                            height:
                                                                                16.0),
                                                                    itemBuilder:
                                                                        (context,
                                                                            inProcessMttosIndex) {
                                                                      final inProcessMttosItem =
                                                                          inProcessMttos[
                                                                              inProcessMttosIndex];
                                                                      return InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            MaintenanceDetailWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'maintenanceId': serializeParam(
                                                                                inProcessMttosItem.id,
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                                duration: Duration(milliseconds: 0),
                                                                              ),
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            wrapWithModel(
                                                                          model: _model
                                                                              .scheduledMaintenanceObjectModels5
                                                                              .getModel(
                                                                            inProcessMttosItem.id,
                                                                            inProcessMttosIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              ScheduledMaintenanceObjectWidget(
                                                                            key:
                                                                                Key(
                                                                              'Keyvar_${inProcessMttosItem.id}',
                                                                            ),
                                                                            assetId:
                                                                                inProcessMttosItem.odemId,
                                                                            assetAssigedCodeId:
                                                                                inProcessMttosItem.responsibleId,
                                                                            maintenanceDate:
                                                                                inProcessMttosItem.startDate!,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Flexible(
                                                          child: Container(
                                                            height: 650.0,
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 650.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFF8FAFE),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final completedMttos = FFAppState()
                                                                      .userMaintenances
                                                                      .where((e) =>
                                                                          e.status ==
                                                                          MttoStatus
                                                                              .ejecutado
                                                                              .name)
                                                                      .toList();
                                                                  if (completedMttos
                                                                      .isEmpty) {
                                                                    return Center(
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        child:
                                                                            NoCompletedMaintenancesWidget(),
                                                                      ),
                                                                    );
                                                                  }

                                                                  return ListView
                                                                      .separated(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .fromLTRB(
                                                                      0,
                                                                      20.0,
                                                                      0,
                                                                      20.0,
                                                                    ),
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        completedMttos
                                                                            .length,
                                                                    separatorBuilder: (_,
                                                                            __) =>
                                                                        SizedBox(
                                                                            height:
                                                                                16.0),
                                                                    itemBuilder:
                                                                        (context,
                                                                            completedMttosIndex) {
                                                                      final completedMttosItem =
                                                                          completedMttos[
                                                                              completedMttosIndex];
                                                                      return InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            MaintenanceDetailWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'maintenanceId': serializeParam(
                                                                                completedMttosItem.id,
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                                duration: Duration(milliseconds: 0),
                                                                              ),
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            wrapWithModel(
                                                                          model: _model
                                                                              .scheduledMaintenanceObjectModels6
                                                                              .getModel(
                                                                            completedMttosItem.id,
                                                                            completedMttosIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              ScheduledMaintenanceObjectWidget(
                                                                            key:
                                                                                Key(
                                                                              'Keyxe3_${completedMttosItem.id}',
                                                                            ),
                                                                            assetId:
                                                                                completedMttosItem.odemId,
                                                                            assetAssigedCodeId:
                                                                                completedMttosItem.responsibleId,
                                                                            maintenanceDate:
                                                                                completedMttosItem.startDate!,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: wrapWithModel(
                            model: _model.navBarModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBarWidget(
                              homeSelected: false,
                              mttosSelected: true,
                              inventorySelected: false,
                              profileSelected: false,
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ),
        ));
  }
}
