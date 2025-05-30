import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/confirmation_modal/confirmation_modal_widget.dart';
import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/components/admin_home_view_desktop/admin_home_view_desktop_widget.dart';
import '/pages/admin/components/admin_home_view_mobile/admin_home_view_mobile_widget.dart';
import '/pages/home/components/current_project/current_project_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/home/components/empty_update_component/empty_update_component_widget.dart';
import '/pages/home/components/maintenance_update/maintenance_update_widget.dart';
import '/pages/home/components/standard_home_view_desktop/standard_home_view_desktop_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:marketplace_check_internet_connection_library_vrjzhi/custom_code/actions/index.dart'
    as marketplace_check_internet_connection_library_vrjzhi_actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          // Check User's Role
          await action_blocks.checkAndSetUserRole(context);
          // Check User's Aproval Status
          await action_blocks.checkUserAprovalStatus(context);
          _model.returnFromFilteredMttos =
              await action_blocks.checkAndFilterMttos(context);
        }),
        Future(() async {
          _model.isConnected =
              await marketplace_check_internet_connection_library_vrjzhi_actions
                  .checkInternetConnection();
          FFAppState().isConnected = FFAppState().isConnected;
          safeSetState(() {});
        }),
        Future(() async {
          if (FFAppState().inventoryList.length == 0) {
            _model.setAllMaintenanceObjects =
                await GETALLMAINTENANCEOBJECTSCopyCall.call();

            if ((_model.setAllMaintenanceObjects?.succeeded ?? true)) {
              FFAppState().inventoryList =
                  ((_model.setAllMaintenanceObjects?.jsonBody ?? '')
                          .toList()
                          .map<MaintenanceObjectStruct?>(
                              MaintenanceObjectStruct.maybeFromMap)
                          .toList() as Iterable<MaintenanceObjectStruct?>)
                      .withoutNulls
                      .toList()
                      .cast<MaintenanceObjectStruct>();
              FFAppState().update(() {});
            }
          } else {
            return;
          }
        }),
        Future(() async {
          if (FFAppState().userMaintenances.length == 0) {
            _model.setAllMaintenance =
                await GetMaintenancesWithProjectCall.call();

            if ((_model.setAllMaintenance?.succeeded ?? true)) {
              FFAppState().userMaintenances = ((_model
                              .setAllMaintenance?.jsonBody ??
                          '')
                      .toList()
                      .map<MaintenanceStruct?>(MaintenanceStruct.maybeFromMap)
                      .toList() as Iterable<MaintenanceStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<MaintenanceStruct>();
              FFAppState().update(() {});
            }
          } else {
            return;
          }
        }),
        Future(() async {
          if (FFAppState().Internet &&
              (FFAppState().createMaintenance != null)) {
            _model.createOfflineMaintenance = await MaintenancesTable().insert({
              'odem_id': FFAppState().createMaintenance.odemId,
              'responsible_id': FFAppState().createMaintenance.responsibleId,
              'maintenance_code':
                  FFAppState().createMaintenance.maintenanceCode,
              'type_of_maintenance':
                  FFAppState().createMaintenance.typeOfMaintenance,
              'frequency': FFAppState().createMaintenance.frequency,
              'start_date': supaSerialize<DateTime>(
                  FFAppState().createMaintenance.startDate),
              'status': FFAppState().createMaintenance.status,
              'requires_maintenance_provider':
                  FFAppState().createMaintenance.requiresMaintenanceProvider,
              'number_of_scheduled_maintenance': 1,
              'created_at': supaSerialize<DateTime>(
                  FFAppState().createMaintenance.createdAt),
              'maintenance_final_status': MttoFinalStatus.EN_MANTENIMIENTO.name,
            });
            await MaintenanceObjectsTable().update(
              data: {
                'responsible_id': currentUserUid,
              },
              matchingRows: (rows) => rows.eqOrNull(
                'id',
                FFAppState().selectedMoForScheduledMtto,
              ),
            );
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return Dialog(
                  elevation: 0,
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  alignment: AlignmentDirectional(0.0, 0.0)
                      .resolve(Directionality.of(context)),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(dialogContext).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: ConfirmationModalWidget(
                      confirmationTitle: 'Cambios actualizados',
                      confirmationDescription:
                          'Los últimos cambios que registraste han sido enviados',
                      setCustomAction: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
            );
          } else {
            return;
          }
        }),
        Future(() async {
          if (FFAppState().userList.length == 0) {
            _model.setAllUsersByProject =
                await GETUSERMATCHINGROLEANDPROJECTCopyCall.call();

            if ((_model.setAllUsersByProject?.succeeded ?? true)) {
              FFAppState().userList = ((_model.setAllUsersByProject?.jsonBody ??
                          '')
                      .toList()
                      .map<ProjectUsersStruct?>(ProjectUsersStruct.maybeFromMap)
                      .toList() as Iterable<ProjectUsersStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<ProjectUsersStruct>();
              safeSetState(() {});
            } else {
              return;
            }
          } else {
            return;
          }
        }),
        Future(() async {
          await MaintenancesTable().update(
            data: {
              'status': FFAppState().updateMaintenance.status,
              'maintenance_final_status':
                  FFAppState().updateMaintenance.maintenanceFinalStatus,
              'observations': FFAppState().updateMaintenance.observations,
              'activities': functions.convertDataTypeListToJSON(
                  FFAppState().activitiesList.toList()),
              'maintenance_photographic_evidence': FFAppState()
                  .updateMaintenance
                  .maintenancePhotographicEvidence,
              'authorizing_signature':
                  FFAppState().updateMaintenance.authorizingSignature,
              'approver_id': FFAppState().updateMaintenance.approverId,
              'reviewer_id': FFAppState().updateMaintenance.reviewerId,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              FFAppState().updateMaintenance.id,
            ),
          );
          await showDialog(
            context: context,
            builder: (dialogContext) {
              return Dialog(
                elevation: 0,
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                alignment: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(dialogContext).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: ConfirmationModalWidget(
                    confirmationTitle: 'Cambios actualizados',
                    confirmationDescription:
                        'Los últimos cambios que registraste han sido enviados',
                    setCustomAction: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          );
                }),
        Future(() async {
          if (FFAppState().authenticatedRole == 2) {
            // Querying Mttos for Coordinators
            _model.queryMttosForCoordinators =
                await MaintenancesWithProjectTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'assigned_project_id',
                FFAppState().currentProject,
              ),
            );
            _model.mttos = _model.queryMttosForCoordinators!
                .toList()
                .cast<MaintenancesWithProjectRow>();
            safeSetState(() {});
          } else if (FFAppState().authenticatedRole == 3) {
            // Querying Mttos for Res. Mttos
            _model.queryMttosForMttosResponsibles =
                await MaintenancesWithProjectTable().queryRows(
              queryFn: (q) => q
                  .eqOrNull(
                    'responsible_id',
                    currentUserUid,
                  )
                  .eqOrNull(
                    'assigned_project_id',
                    FFAppState().currentProject,
                  ),
            );
          } else {
            return;
          }
        }),
      ]);
    });

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

    return Builder(
      builder: (context) => Title(
          title: 'Inicio | DISICHECK',
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
                child: Container(
                  decoration: BoxDecoration(),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        if (() {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return true;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return false;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return false;
                          } else {
                            return false;
                          }
                        }()) {
                          return Visibility(
                            visible: responsiveVisibility(
                              context: context,
                              tablet: false,
                              desktop: false,
                            ),
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              child: Container(
                                height: double.infinity,
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  children: [
                                    SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFFFBFCFF),
                                                  Color(0xFFE8EEFB)
                                                ],
                                                stops: [0.0, 1.0],
                                                begin: AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 16.0, 24.0, 100.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                      builder: (context) {
                                                        if (FFAppState()
                                                                .authenticatedRole ==
                                                            1) {
                                                          return wrapWithModel(
                                                            model: _model
                                                                .adminHomeViewMobileModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                AdminHomeViewMobileWidget(),
                                                          );
                                                        } else {
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Flexible(
                                                                    flex: 2,
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .currentProjectModel1,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      child:
                                                                          CurrentProjectWidget(
                                                                        userId:
                                                                            currentUserUid,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    flex: 1,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children:
                                                                          [
                                                                        if ((FFAppState().authenticatedRole ==
                                                                                1) ||
                                                                            (FFAppState().authenticatedRole ==
                                                                                2))
                                                                          InkWell(
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
                                                                              context.pushNamed(GeneralScheduleWidget.routeName);
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 48.0,
                                                                              height: 48.0,
                                                                              decoration: BoxDecoration(
                                                                                gradient: LinearGradient(
                                                                                  colors: [
                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                    FlutterFlowTheme.of(context).primaryDegraded
                                                                                  ],
                                                                                  stops: [
                                                                                    0.0,
                                                                                    1.0
                                                                                  ],
                                                                                  begin: AlignmentDirectional(0.87, 1.0),
                                                                                  end: AlignmentDirectional(-0.87, -1.0),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Builder(
                                                                                    builder: (context) {
                                                                                      if (FFAppState().authenticatedRole == 1) {
                                                                                        return Icon(
                                                                                          Icons.admin_panel_settings_outlined,
                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                          size: 26.0,
                                                                                        );
                                                                                      } else {
                                                                                        return Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Icon(
                                                                                            Icons.query_stats,
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        Flexible(
                                                                          flex:
                                                                              1,
                                                                          child:
                                                                              InkWell(
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
                                                                              context.goNamed(
                                                                                AccessRequestsPageWidget.routeName,
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.fade,
                                                                                  ),
                                                                                },
                                                                              );

                                                                              if (FFAppState().authenticatedRole == 1) {
                                                                                context.goNamed(
                                                                                  AccessRequestsPageWidget.routeName,
                                                                                  extra: <String, dynamic>{
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                    ),
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                context.pushNamed(
                                                                                  UserNotificationsPageWidget.routeName,
                                                                                  extra: <String, dynamic>{
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                    ),
                                                                                  },
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 48.0,
                                                                              height: 48.0,
                                                                              decoration: BoxDecoration(
                                                                                gradient: LinearGradient(
                                                                                  colors: [
                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                    FlutterFlowTheme.of(context).primaryDegraded
                                                                                  ],
                                                                                  stops: [
                                                                                    0.0,
                                                                                    1.0
                                                                                  ],
                                                                                  begin: AlignmentDirectional(0.87, 1.0),
                                                                                  end: AlignmentDirectional(-0.87, -1.0),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Builder(
                                                                                    builder: (context) {
                                                                                      if (FFAppState().authenticatedRole == 1) {
                                                                                        return Icon(
                                                                                          Icons.admin_panel_settings_outlined,
                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                          size: 26.0,
                                                                                        );
                                                                                      } else {
                                                                                        return Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Icon(
                                                                                            Icons.notifications_sharp,
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 5.0)),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            80.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          RichText(
                                                                            textScaler:
                                                                                MediaQuery.of(context).textScaler,
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: valueOrDefault<String>(
                                                                                    functions.greetUser(),
                                                                                    'Saludo',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.roboto(
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        fontSize: () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 24.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 30.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 32.0;
                                                                                          } else {
                                                                                            return 32.0;
                                                                                          }
                                                                                        }(),
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: valueOrDefault<String>(
                                                                                    functions.cropFullNameToOneName(FFAppState().authenticatedUserName),
                                                                                    'Nombre',
                                                                                  ),
                                                                                  style: TextStyle(
                                                                                    fontSize: () {
                                                                                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                        return 24.0;
                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                        return 30.0;
                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                        return 32.0;
                                                                                      } else {
                                                                                        return 32.0;
                                                                                      }
                                                                                    }(),
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: '!',
                                                                                  style: TextStyle(),
                                                                                )
                                                                              ],
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.roboto(
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    fontSize: () {
                                                                                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                        return 24.0;
                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                        return 30.0;
                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                        return 32.0;
                                                                                      } else {
                                                                                        return 32.0;
                                                                                      }
                                                                                    }(),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          FFAppState().authenticatedRole == 3
                                                                              ? 'Próximos Mttos.'
                                                                              : 'Últimas actualizaciones',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.9,
                                                                          height:
                                                                              155.0,
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxHeight:
                                                                                200.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Builder(
                                                                            builder:
                                                                                (context) {
                                                                              final filteredMttos = _model.mttos.toList().take(5).toList();
                                                                              if (filteredMttos.isEmpty) {
                                                                                return EmptyUpdateComponentWidget();
                                                                              }

                                                                              return ListView.separated(
                                                                                padding: EdgeInsets.zero,
                                                                                primary: false,
                                                                                scrollDirection: Axis.horizontal,
                                                                                itemCount: filteredMttos.length,
                                                                                separatorBuilder: (_, __) => SizedBox(width: 15.0),
                                                                                itemBuilder: (context, filteredMttosIndex) {
                                                                                  final filteredMttosItem = filteredMttos[filteredMttosIndex];
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
                                                                                            filteredMttosItem.id,
                                                                                            ParamType.String,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                      );
                                                                                    },
                                                                                    child: wrapWithModel(
                                                                                      model: _model.maintenanceUpdateModels1.getModel(
                                                                                        filteredMttosIndex.toString(),
                                                                                        filteredMttosIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: MaintenanceUpdateWidget(
                                                                                        key: Key(
                                                                                          'Keyjr7_${filteredMttosIndex.toString()}',
                                                                                        ),
                                                                                        maintenanceObjectId: filteredMttosItem.odemId,
                                                                                        maintenanceObservations: filteredMttosItem.observations,
                                                                                        personAssignedId: filteredMttosItem.responsibleId,
                                                                                        dateCreated: filteredMttosItem.startDate,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        }
                                                      },
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  32.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .stretch,
                                                            children: [
                                                              Text(
                                                                'Acciones',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .roboto(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      context.pushNamed(
                                                                          CreateAssetPageWidget
                                                                              .routeName);
                                                                    },
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              56.0,
                                                                          height:
                                                                              56.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                LinearGradient(
                                                                              colors: [
                                                                                FlutterFlowTheme.of(context).primary,
                                                                                FlutterFlowTheme.of(context).primaryDegraded
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(1.0, -0.87),
                                                                              end: AlignmentDirectional(-1.0, 0.87),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.addchart_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          'Crear Activo',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 12.0)),
                                                                    ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        AssetsInventoryPageWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'pageComingFrom':
                                                                              serializeParam(
                                                                            NavbarNavigation.HOME_PAGE,
                                                                            ParamType.Enum,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              56.0,
                                                                          height:
                                                                              56.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                LinearGradient(
                                                                              colors: [
                                                                                FlutterFlowTheme.of(context).primary,
                                                                                FlutterFlowTheme.of(context).primaryDegraded
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(1.0, -0.87),
                                                                              end: AlignmentDirectional(-1.0, 0.87),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.all_inbox,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          'Inventario',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 12.0)),
                                                                    ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      context.pushNamed(
                                                                          MaintenancePageWidget
                                                                              .routeName);
                                                                    },
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              56.0,
                                                                          height:
                                                                              56.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                LinearGradient(
                                                                              colors: [
                                                                                FlutterFlowTheme.of(context).primary,
                                                                                FlutterFlowTheme.of(context).primaryDegraded
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(1.0, -0.87),
                                                                              end: AlignmentDirectional(-1.0, 0.87),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.build_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          'Mttos',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 12.0)),
                                                                    ),
                                                                  ),
                                                                  if ((FFAppState()
                                                                              .authenticatedRole ==
                                                                          1) ||
                                                                      (FFAppState()
                                                                              .authenticatedRole ==
                                                                          2))
                                                                    InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            ReportsPageWidget.routeName);
                                                                      },
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                56.0,
                                                                            height:
                                                                                56.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              gradient: LinearGradient(
                                                                                colors: [
                                                                                  FlutterFlowTheme.of(context).primary,
                                                                                  FlutterFlowTheme.of(context).primaryDegraded
                                                                                ],
                                                                                stops: [
                                                                                  0.0,
                                                                                  1.0
                                                                                ],
                                                                                begin: AlignmentDirectional(1.0, -0.87),
                                                                                end: AlignmentDirectional(-1.0, 0.87),
                                                                              ),
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.description_outlined,
                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Reportes',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 12.0)),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        if ((FFAppState()
                                                                    .authenticatedRole ==
                                                                1) ||
                                                            (FFAppState()
                                                                    .authenticatedRole ==
                                                                2))
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          24.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    ScheduleMaintenancePageWidget
                                                                        .routeName,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                      ),
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                20.0,
                                                                                20.0,
                                                                                20.0),
                                                                            child:
                                                                                Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 20.0,
                                                                              alignment: WrapAlignment.spaceEvenly,
                                                                              crossAxisAlignment: WrapCrossAlignment.center,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.center,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.antiAlias,
                                                                              children: [
                                                                                Stack(
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 56.0,
                                                                                      height: 56.0,
                                                                                      decoration: BoxDecoration(
                                                                                        gradient: LinearGradient(
                                                                                          colors: [
                                                                                            Color(0x89F58321),
                                                                                            Color(0x7CF58321),
                                                                                            FlutterFlowTheme.of(context).primary
                                                                                          ],
                                                                                          stops: [
                                                                                            0.0,
                                                                                            1.0,
                                                                                            1.0
                                                                                          ],
                                                                                          begin: AlignmentDirectional(0.0, -1.0),
                                                                                          end: AlignmentDirectional(0, 1.0),
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12.0),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(9.0, 8.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 56.0,
                                                                                        height: 56.0,
                                                                                        decoration: BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0xDCF58321),
                                                                                              Color(0xD1F58321)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.14, -1.0),
                                                                                            end: AlignmentDirectional(-0.14, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidCalendarCheck,
                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                      child: AutoSizeText(
                                                                                        'Programar Mantenimiento',
                                                                                        maxLines: 2,
                                                                                        minFontSize: 10.0,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.roboto(
                                                                                                fontWeight: FontWeight.w500,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    AutoSizeText(
                                                                                      'Agenda nuevos mantenimientos.',
                                                                                      maxLines: 2,
                                                                                      minFontSize: 9.0,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.nunito(
                                                                                              fontWeight: FontWeight.w300,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            fontSize: 13.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w300,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                    if ((FFAppState()
                                                                .authenticatedRole ==
                                                            1) ||
                                                        (FFAppState()
                                                                .authenticatedRole ==
                                                            2))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Accesos Pulpo',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            InkWell(
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
                                                                await launchURL(
                                                                    'https://lite-prod-eu.eu.auth0.com/u/login?state=hqFo2SBrUUlWWEljaTA5aWRyNF9LUTZsTFRVeHFfNENCWWljM6Fur3VuaXZlcnNhbC1sb2dpbqN0aWTZIEU1MXNwOVBfNHN1RkNxWHdKa3RPaTV2ZEFfRlQ5UU1zo2NpZNkgQ0ZWSHVGdEpwbjRocDVRZnJaTlNGTmZtNHlOMGlpNDmlb3JnaWS0b3JnX281Z1M5elBEQXNqbThhRXGnb3JnbmFtZaVwdWxwbw');
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 104.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/pulpo-links.jpg',
                                                                          width:
                                                                              190.0,
                                                                          height:
                                                                              double.infinity,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Accesos al Mtto. de los demás Activos',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .roboto(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          InkWell(
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
                                                              await launchURL(
                                                                  'https://lite-prod-eu.eu.auth0.com/u/login?state=hqFo2SBrUUlWWEljaTA5aWRyNF9LUTZsTFRVeHFfNENCWWljM6Fur3VuaXZlcnNhbC1sb2dpbqN0aWTZIEU1MXNwOVBfNHN1RkNxWHdKa3RPaTV2ZEFfRlQ5UU1zo2NpZNkgQ0ZWSHVGdEpwbjRocDVRZnJaTlNGTmZtNHlOMGlpNDmlb3JnaWS0b3JnX281Z1M5elBEQXNqbThhRXGnb3JnbmFtZaVwdWxwbw');
                                                            },
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x3AB8B8B8),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      5.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/PersonajeMtto.jpg',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      alignment:
                                                                          Alignment(
                                                                              1.0,
                                                                              0.0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Tutoriales para Utilizar DISICHECK',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .roboto(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          InkWell(
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
                                                              await launchURL(
                                                                  'https://drive.google.com/drive/u/0/folders/10oRbXnnHDq_ligwHaKhEHmhKZiLa3-Bb');
                                                            },
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x3AB8B8B8),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      5.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/Como_funciona_DISICHECK.png',
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      alignment:
                                                                          Alignment(
                                                                              0.0,
                                                                              0.0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: wrapWithModel(
                                        model: _model.navBarModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: NavBarWidget(
                                          homeSelected: true,
                                          mttosSelected: false,
                                          inventorySelected: false,
                                          profileSelected: false,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Visibility(
                            visible: responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        child: wrapWithModel(
                                          model: _model.desktopSideBarModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: DesktopSideBarWidget(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 40.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: _model.cacheDatabaseReport(
                                        uniqueQueryKey: currentUserUid,
                                        requestFn: () =>
                                            GenerateReportFromDbCall.call(
                                          startDate:
                                              functions.countToOneMonthAgo(),
                                          endDate: functions.currentDate(),
                                          projectId: FFAppState()
                                                      .authenticatedRole ==
                                                  1
                                              ? '00000000-0000-0000-0000-000000000000'
                                              : FFAppState().currentProject,
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final containerGenerateReportFromDbResponse =
                                            snapshot.data!;

                                        return Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.9,
                                          decoration: BoxDecoration(),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              if (FFAppState()
                                                                      .authenticatedRole ==
                                                                  2)
                                                                Expanded(
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .currentProjectModel2,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        CurrentProjectWidget(
                                                                      userId:
                                                                          currentUserUid,
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          if (FFAppState()
                                                                  .authenticatedRole ==
                                                              1)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        AccessRequestsPageWidget
                                                                            .routeName);
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        colors: [
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryDegraded
                                                                        ],
                                                                        stops: [
                                                                          0.0,
                                                                          1.0
                                                                        ],
                                                                        begin: AlignmentDirectional(
                                                                            0.87,
                                                                            1.0),
                                                                        end: AlignmentDirectional(
                                                                            -0.87,
                                                                            -1.0),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24.0),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .notifications_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0,
                                                          valueOrDefault<
                                                              double>(
                                                            FFAppState().authenticatedRole ==
                                                                    1
                                                                ? 50.0
                                                                : 0.0,
                                                            0.0,
                                                          ),
                                                          0.0,
                                                          0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                              child: RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .greetUser(),
                                                                        'Saludo',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.roboto(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                30.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: ' ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .cropFullNameToOneName(FFAppState().authenticatedUserName),
                                                                        'Nombre',
                                                                      ),
                                                                      style:
                                                                          TextStyle(),
                                                                    ),
                                                                    TextSpan(
                                                                      text: '!',
                                                                      style:
                                                                          TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .roboto(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            30.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Wrap(
                                                        spacing: 20.0,
                                                        runSpacing: 0.0,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 600.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 600.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 700.0;
                                                              } else {
                                                                return 700.0;
                                                              }
                                                            }(),
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                if (FFAppState()
                                                                        .authenticatedRole ==
                                                                    1) {
                                                                  return wrapWithModel(
                                                                    model: _model
                                                                        .adminHomeViewDesktopModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        AdminHomeViewDesktopWidget(),
                                                                  );
                                                                } else {
                                                                  return Container(
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .standardHomeViewDesktopModel,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      child:
                                                                          StandardHomeViewDesktopWidget(
                                                                        scheduledMttos:
                                                                            GenerateReportFromDbCall.mttosProgramados(
                                                                          containerGenerateReportFromDbResponse
                                                                              .jsonBody,
                                                                        ),
                                                                        failuresFound:
                                                                            GenerateReportFromDbCall.fallasEncontradas(
                                                                          containerGenerateReportFromDbResponse
                                                                              .jsonBody,
                                                                        ),
                                                                        failuresFixed:
                                                                            GenerateReportFromDbCall.fallasCorregidas(
                                                                          containerGenerateReportFromDbResponse
                                                                              .jsonBody,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 700.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 700.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 340.0;
                                                              } else {
                                                                return 340.0;
                                                              }
                                                            }(),
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Próximo Mtto. más Cercano',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.nunito(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                FutureBuilder<
                                                                    List<
                                                                        MaintenancesRow>>(
                                                                  future: FFAppState()
                                                                      .cachedNewMaintenances(
                                                                    uniqueQueryKey:
                                                                        currentUserUid,
                                                                    requestFn: () =>
                                                                        MaintenancesTable()
                                                                            .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<MaintenancesRow>
                                                                        containerMaintenancesRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: 180.0,
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
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                ),
                                                                              ),
                                                                              child: FlutterFlowCalendar(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                iconColor: Colors.black,
                                                                                weekFormat: true,
                                                                                weekStartsMonday: true,
                                                                                twoRowHeader: true,
                                                                                initialDate: _model.returnFromFilteredMttos?.firstOrNull?.startDate,
                                                                                rowHeight: 60.0,
                                                                                onChange: (DateTimeRange? newSelectedDate) {
                                                                                  safeSetState(() => _model.calendarSelectedDay = newSelectedDate);
                                                                                },
                                                                                titleStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                                    ),
                                                                                dayOfWeekStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                    ),
                                                                                dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                                selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                    ),
                                                                                inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                    ),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Builder(
                                                                            builder:
                                                                                (context) {
                                                                              if (FFAppState().authenticatedRole == 1) {
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Accesos Pulpo',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await launchURL('https://lite-prod-eu.eu.auth0.com/u/login?state=hqFo2SBrUUlWWEljaTA5aWRyNF9LUTZsTFRVeHFfNENCWWljM6Fur3VuaXZlcnNhbC1sb2dpbqN0aWTZIEU1MXNwOVBfNHN1RkNxWHdKa3RPaTV2ZEFfRlQ5UU1zo2NpZNkgQ0ZWSHVGdEpwbjRocDVRZnJaTlNGTmZtNHlOMGlpNDmlb3JnaWS0b3JnX281Z1M5elBEQXNqbThhRXGnb3JnbmFtZaVwdWxwbw');
                                                                                          },
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(14.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/pulpo-links.jpg',
                                                                                              width: double.infinity,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 10.0)),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Tutoriales para usar la app',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await launchURL('https://drive.google.com/drive/u/0/folders/10oRbXnnHDq_ligwHaKhEHmhKZiLa3-Bb');
                                                                                          },
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(14.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Como_funciona_DISICHECK.png',
                                                                                              width: double.infinity,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 10.0)),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Accesos al Mtto. de los demás Activos',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                        ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(14.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/PersonajeMtto.jpg',
                                                                                            width: double.infinity,
                                                                                            fit: BoxFit.cover,
                                                                                            alignment: Alignment(1.0, 0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 10.0)),
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 20.0)),
                                                                                );
                                                                              } else {
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Actualizaciones',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.nunito(
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Container(
                                                                                      width: 350.0,
                                                                                      height: MediaQuery.sizeOf(context).height * 0.73,
                                                                                      constraints: BoxConstraints(
                                                                                        maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                                                                                      ),
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Builder(
                                                                                        builder: (context) {
                                                                                          final filteredMttosDesktop = _model.mttos.toList().take(5).toList();
                                                                                          if (filteredMttosDesktop.isEmpty) {
                                                                                            return Center(
                                                                                              child: EmptyUpdateComponentWidget(),
                                                                                            );
                                                                                          }

                                                                                          return ListView.separated(
                                                                                            padding: EdgeInsets.zero,
                                                                                            primary: false,
                                                                                            scrollDirection: Axis.vertical,
                                                                                            itemCount: filteredMttosDesktop.length,
                                                                                            separatorBuilder: (_, __) => SizedBox(height: 15.0),
                                                                                            itemBuilder: (context, filteredMttosDesktopIndex) {
                                                                                              final filteredMttosDesktopItem = filteredMttosDesktop[filteredMttosDesktopIndex];
                                                                                              return wrapWithModel(
                                                                                                model: _model.maintenanceUpdateModels2.getModel(
                                                                                                  filteredMttosDesktopItem.id!,
                                                                                                  filteredMttosDesktopIndex,
                                                                                                ),
                                                                                                updateCallback: () => safeSetState(() {}),
                                                                                                child: MaintenanceUpdateWidget(
                                                                                                  key: Key(
                                                                                                    'Keyg86_${filteredMttosDesktopItem.id!}',
                                                                                                  ),
                                                                                                  maintenanceObjectId: filteredMttosDesktopItem.id,
                                                                                                  maintenanceObservations: filteredMttosDesktopItem.observations,
                                                                                                  personAssignedId: filteredMttosDesktopItem.responsibleId,
                                                                                                  dateCreated: filteredMttosDesktopItem.startDate,
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 10.0)),
                                                                                );
                                                                              }
                                                                            },
                                                                          ),
                                                                        ].divide(SizedBox(height: 16.0)),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ],
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
                                        );
                                      },
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
              ),
            ),
          )),
    );
  }
}
