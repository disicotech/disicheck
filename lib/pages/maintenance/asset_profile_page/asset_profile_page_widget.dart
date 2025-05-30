import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
<<<<<<< HEAD
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/maintenance/components/maintenance_history_card/maintenance_history_card_widget.dart';
import '/pages/resources/components/empty_maintenance_list/empty_maintenance_list_widget.dart';
=======
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/maintenance/components/maintenance_history_card/maintenance_history_card_widget.dart';
import '/pages/resources/components/empty_maintenance_list/empty_maintenance_list_widget.dart';
import 'dart:math';
import 'dart:ui';
>>>>>>> master
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter/scheduler.dart';
>>>>>>> master
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'asset_profile_page_model.dart';
export 'asset_profile_page_model.dart';

class AssetProfilePageWidget extends StatefulWidget {
  const AssetProfilePageWidget({
    super.key,
    required this.maintenanceObjectId,
  });

  final String? maintenanceObjectId;

  static String routeName = 'AssetProfilePage';
  static String routePath = '/assetProfilePage';

  @override
  State<AssetProfilePageWidget> createState() => _AssetProfilePageWidgetState();
}

class _AssetProfilePageWidgetState extends State<AssetProfilePageWidget>
    with TickerProviderStateMixin {
  late AssetProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssetProfilePageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 175.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 175.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 175.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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

    return Title(
        title: 'AssetProfilePage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF1F4F8),
            appBar: AppBar(
              backgroundColor: Color(0xFFF1F4F8),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFF101213),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    AssetsInventoryPageWidget.routeName,
                    queryParameters: {
                      'pageComingFrom': serializeParam(
                        NavbarNavigation.HOME_PAGE,
                        ParamType.Enum,
                      ),
                    }.withoutNulls,
                  );
                },
              ),
              title: Text(
                'Perfil del Activo',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Color(0xFF101213),
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.desktopSideBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: DesktopSideBarWidget(),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FutureBuilder<List<MaintenanceObjectsRow>>(
                              future: MaintenanceObjectsTable().querySingleRow(
                                queryFn: (q) => q.eqOrNull(
                                  'id',
<<<<<<< HEAD
                                  widget.maintenanceObjectId,
=======
                                  widget!.maintenanceObjectId,
>>>>>>> master
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
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<MaintenanceObjectsRow>
                                    containerMaintenanceObjectsRowList =
                                    snapshot.data!;

                                final containerMaintenanceObjectsRow =
                                    containerMaintenanceObjectsRowList
                                            .isNotEmpty
                                        ? containerMaintenanceObjectsRowList
                                            .first
                                        : null;

                                return Container(
                                  constraints: BoxConstraints(
                                    maxHeight: 830.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 12.0, 8.0, 12.0),
                                    child: FutureBuilder<List<ProjectsRow>>(
                                      future: FFAppState().cachedAllProjects(
<<<<<<< HEAD
                                        overrideCache: widget
                                                    .maintenanceObjectId !=
                                                null &&
                                            widget.maintenanceObjectId != '',
=======
                                        overrideCache: widget!
                                                    .maintenanceObjectId !=
                                                null &&
                                            widget!.maintenanceObjectId != '',
>>>>>>> master
                                        requestFn: () =>
                                            ProjectsTable().querySingleRow(
                                          queryFn: (q) => q.eqOrNull(
                                            'id',
                                            containerMaintenanceObjectsRow
                                                ?.assignedProjectId,
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
                                        List<ProjectsRow>
                                            containerProjectsRowList =
                                            snapshot.data!;

                                        final containerProjectsRow =
                                            containerProjectsRowList.isNotEmpty
                                                ? containerProjectsRowList.first
                                                : null;

                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            constraints: BoxConstraints(
                                              maxWidth: 1170.0,
                                              maxHeight: double.infinity,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Flexible(
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 255.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x4C4B39EF),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      if (containerMaintenanceObjectsRow?.moImage !=
                                                                              null &&
                                                                          containerMaintenanceObjectsRow?.moImage !=
                                                                              '') {
                                                                        return Padding(
                                                                          padding:
                                                                              EdgeInsets.all(2.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            child:
                                                                                Image.network(
                                                                              containerMaintenanceObjectsRow!.moImage!,
                                                                              width: double.infinity,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      } else {
                                                                        return ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/placeholder-image.png',
                                                                            width:
                                                                                double.infinity,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          Flexible(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    containerMaintenanceObjectsRow
                                                                        ?.name,
                                                                    'Nombre del activo',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .outfit(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF101213),
                                                                        fontSize:
                                                                            32.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    containerMaintenanceObjectsRow
                                                                        ?.category,
                                                                    'Categoría',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .nunito(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Código:',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.nunito(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          containerMaintenanceObjectsRow
                                                                              ?.code,
                                                                          'sin código',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              font: GoogleFonts.nunito(
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    'Proyecto: ${containerProjectsRow?.name}',
                                                                    '[Assigned Project]',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .nunito(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color:
                                                                            () {
                                                                          if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .OPERATIVO.name) {
                                                                            return FlutterFlowTheme.of(context).successBackground;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .EN_MANTENIMIENTO.name) {
                                                                            return Color(0xFFECF1FF);
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .PENDIENTES_FALLA_CORREGIDA.name) {
                                                                            return Color(0xFFFFE59A);
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .FALLA.name) {
                                                                            return FlutterFlowTheme.of(context).errorBackground;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .BAJA_INVENTARIO.name) {
                                                                            return FlutterFlowTheme.of(context).alternate;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .TRASLADADO.name) {
                                                                            return Color(0x80F58321);
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .PERDIDA.name) {
                                                                            return FlutterFlowTheme.of(context).errorBackground;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus.DEVOLUCION.name) {
                                                                            return Color(0x7FFFA900);
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).secondary;
                                                                          }
                                                                        }(),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              () {
                                                                            if (containerMaintenanceObjectsRow?.currentState ==
                                                                                MttoFinalStatus.OPERATIVO.name) {
                                                                              return FlutterFlowTheme.of(context).success;
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.EN_MANTENIMIENTO.name) {
                                                                              return Color(0xFF466FFF);
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PENDIENTES_FALLA_CORREGIDA.name) {
                                                                              return FlutterFlowTheme.of(context).warning;
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.FALLA.name) {
                                                                              return FlutterFlowTheme.of(context).error;
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.BAJA_INVENTARIO.name) {
                                                                              return FlutterFlowTheme.of(context).secondaryBackground;
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.TRASLADADO.name) {
                                                                              return FlutterFlowTheme.of(context).primary;
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PERDIDA.name) {
                                                                              return FlutterFlowTheme.of(context).error;
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name) {
                                                                              return FlutterFlowTheme.of(context).primaryDegraded;
                                                                            } else {
                                                                              return FlutterFlowTheme.of(context).primaryText;
                                                                            }
                                                                          }(),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                4.0,
                                                                                0.0,
                                                                                4.0),
                                                                            child:
                                                                                Text(
                                                                              () {
                                                                                if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.OPERATIVO.name) {
                                                                                  return 'OPERATIVO';
                                                                                } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.EN_MANTENIMIENTO.name) {
                                                                                  return 'MTTO';
                                                                                } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PENDIENTES_FALLA_CORREGIDA.name) {
                                                                                  return 'PENDIENTES';
                                                                                } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.FALLA.name) {
                                                                                  return 'FALLA';
                                                                                } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.BAJA_INVENTARIO.name) {
                                                                                  return 'BAJA INVENTARIO';
                                                                                } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.TRASLADADO.name) {
                                                                                  return 'TRASLADADO';
                                                                                } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PERDIDA.name) {
                                                                                  return 'PERDIDA';
                                                                                } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name) {
                                                                                  return 'DEVOLUCIÓN';
                                                                                } else {
                                                                                  return 'SIN ESTADO';
                                                                                }
                                                                              }(),
                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                    ),
                                                                                    color: () {
                                                                                      if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.OPERATIVO.name) {
                                                                                        return FlutterFlowTheme.of(context).success;
                                                                                      } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.EN_MANTENIMIENTO.name) {
                                                                                        return Color(0xFF466FFF);
                                                                                      } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PENDIENTES_FALLA_CORREGIDA.name) {
                                                                                        return FlutterFlowTheme.of(context).warning;
                                                                                      } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.FALLA.name) {
                                                                                        return FlutterFlowTheme.of(context).error;
                                                                                      } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.BAJA_INVENTARIO.name) {
                                                                                        return FlutterFlowTheme.of(context).secondaryBackground;
                                                                                      } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.TRASLADADO.name) {
                                                                                        return FlutterFlowTheme.of(context).primary;
                                                                                      } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PERDIDA.name) {
                                                                                        return FlutterFlowTheme.of(context).error;
                                                                                      } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name) {
                                                                                        return FlutterFlowTheme.of(context).primaryDegraded;
                                                                                      } else {
                                                                                        return FlutterFlowTheme.of(context).primaryText;
                                                                                      }
                                                                                    }(),
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Builder(
                                                                            builder:
                                                                                (context) {
                                                                              if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.OPERATIVO.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 10.0,
                                                                                    height: 10.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).success,
                                                                                      shape: BoxShape.circle,
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).success,
                                                                                      ),
                                                                                    ),
                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
                                                                                );
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.EN_MANTENIMIENTO.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.build_rounded,
                                                                                    color: Color(0xFF466FFF),
                                                                                    size: 14.0,
                                                                                  ),
                                                                                );
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PENDIENTES_FALLA_CORREGIDA.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.warning,
                                                                                    color: FlutterFlowTheme.of(context).warning,
                                                                                    size: 14.0,
                                                                                  ),
                                                                                );
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.FALLA.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.dangerous_outlined,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 14.0,
                                                                                  ),
                                                                                );
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.BAJA_INVENTARIO.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.remove_circle_outline_sharp,
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    size: 14.0,
                                                                                  ),
                                                                                );
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.TRASLADADO.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.bolt,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 14.0,
                                                                                  ),
                                                                                );
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PERDIDA.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.trending_down_outlined,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 14.0,
                                                                                  ),
                                                                                );
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name) {
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.loop,
                                                                                    color: FlutterFlowTheme.of(context).primaryDegraded,
                                                                                    size: 14.0,
                                                                                  ),
                                                                                );
                                                                              } else {
                                                                                return Container(
                                                                                  width: 0.0,
                                                                                  height: 0.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                );
                                                                              }
                                                                            },
                                                                          ),
                                                                        ].divide(SizedBox(width: 5.0)),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          5.0)),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      10.0)),
                                                            ),
                                                          ),
                                                      ].divide(
                                                          SizedBox(width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 0.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 20.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 20.0;
                                                        } else {
                                                          return 20.0;
                                                        }
                                                      }())),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'rowOnPageLoadAnimation']!),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Visibility(
                                                      visible:
                                                          responsiveVisibility(
                                                        context: context,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
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
                                                              valueOrDefault<
                                                                  String>(
                                                                containerMaintenanceObjectsRow
                                                                    ?.name,
                                                                'Nombre del activo',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFF101213),
                                                                    fontSize:
                                                                        26.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerMaintenanceObjectsRow
                                                                    ?.category,
                                                                'categoría',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .nunito(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFF101213),
                                                                    fontSize:
                                                                        22.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Código:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.nunito(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Color(0xFF101213),
                                                                          fontSize:
                                                                              22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        containerMaintenanceObjectsRow
                                                                            ?.code,
                                                                        'sin código',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.nunito(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF101213),
                                                                            fontSize:
                                                                                22.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  'Proyecto: ${containerProjectsRow?.name}',
                                                                  '[Assigned Project]',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .nunito(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color:
                                                                          () {
                                                                        if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus
                                                                                .OPERATIVO.name) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .successBackground;
                                                                        } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus
                                                                                .EN_MANTENIMIENTO.name) {
                                                                          return Color(
                                                                              0xFFECF1FF);
                                                                        } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus
                                                                                .PENDIENTES_FALLA_CORREGIDA.name) {
                                                                          return Color(
                                                                              0xFFFFE59A);
                                                                        } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus
                                                                                .FALLA.name) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .errorBackground;
                                                                        } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus
                                                                                .BAJA_INVENTARIO.name) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .alternate;
                                                                        } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus
                                                                                .TRASLADADO.name) {
                                                                          return Color(
                                                                              0x80F58321);
                                                                        } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus
                                                                                .PERDIDA.name) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .errorBackground;
                                                                        } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                            MttoFinalStatus.DEVOLUCION.name) {
                                                                          return Color(
                                                                              0x7FFFA900);
                                                                        } else {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .secondary;
                                                                        }
                                                                      }(),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color:
                                                                            () {
                                                                          if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .OPERATIVO.name) {
                                                                            return FlutterFlowTheme.of(context).success;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .EN_MANTENIMIENTO.name) {
                                                                            return Color(0xFF466FFF);
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .PENDIENTES_FALLA_CORREGIDA.name) {
                                                                            return FlutterFlowTheme.of(context).warning;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .FALLA.name) {
                                                                            return FlutterFlowTheme.of(context).error;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .BAJA_INVENTARIO.name) {
                                                                            return FlutterFlowTheme.of(context).secondaryBackground;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .TRASLADADO.name) {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus
                                                                                  .PERDIDA.name) {
                                                                            return FlutterFlowTheme.of(context).error;
                                                                          } else if (containerMaintenanceObjectsRow?.currentState ==
                                                                              MttoFinalStatus.DEVOLUCION.name) {
                                                                            return FlutterFlowTheme.of(context).primaryDegraded;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).primaryText;
                                                                          }
                                                                        }(),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              4.0,
                                                                              0.0,
                                                                              4.0),
                                                                          child:
                                                                              Text(
                                                                            () {
                                                                              if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.OPERATIVO.name) {
                                                                                return 'OPERATIVO';
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.EN_MANTENIMIENTO.name) {
                                                                                return 'MTTO';
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PENDIENTES_FALLA_CORREGIDA.name) {
                                                                                return 'PENDIENTES';
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.FALLA.name) {
                                                                                return 'FALLA';
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.BAJA_INVENTARIO.name) {
                                                                                return 'BAJA INVENTARIO';
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.TRASLADADO.name) {
                                                                                return 'TRASLADADO';
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PERDIDA.name) {
                                                                                return 'PERDIDA';
                                                                              } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name) {
                                                                                return 'DEVOLUCIÓN';
                                                                              } else {
                                                                                return 'SIN ESTADO';
                                                                              }
                                                                            }(),
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                  ),
                                                                                  color: () {
                                                                                    if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.OPERATIVO.name) {
                                                                                      return FlutterFlowTheme.of(context).success;
                                                                                    } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.EN_MANTENIMIENTO.name) {
                                                                                      return Color(0xFF466FFF);
                                                                                    } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PENDIENTES_FALLA_CORREGIDA.name) {
                                                                                      return FlutterFlowTheme.of(context).warning;
                                                                                    } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.FALLA.name) {
                                                                                      return FlutterFlowTheme.of(context).error;
                                                                                    } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.BAJA_INVENTARIO.name) {
                                                                                      return FlutterFlowTheme.of(context).secondaryBackground;
                                                                                    } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.TRASLADADO.name) {
                                                                                      return FlutterFlowTheme.of(context).primary;
                                                                                    } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PERDIDA.name) {
                                                                                      return FlutterFlowTheme.of(context).error;
                                                                                    } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name) {
                                                                                      return FlutterFlowTheme.of(context).primaryDegraded;
                                                                                    } else {
                                                                                      return FlutterFlowTheme.of(context).primaryText;
                                                                                    }
                                                                                  }(),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Builder(
                                                                          builder:
                                                                              (context) {
                                                                            if (containerMaintenanceObjectsRow?.currentState ==
                                                                                MttoFinalStatus.OPERATIVO.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Container(
                                                                                  width: 10.0,
                                                                                  height: 10.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).success,
                                                                                    ),
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!),
                                                                              );
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.EN_MANTENIMIENTO.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.build_rounded,
                                                                                  color: Color(0xFF466FFF),
                                                                                  size: 14.0,
                                                                                ),
                                                                              );
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PENDIENTES_FALLA_CORREGIDA.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.warning,
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  size: 14.0,
                                                                                ),
                                                                              );
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.FALLA.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.dangerous_outlined,
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  size: 14.0,
                                                                                ),
                                                                              );
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.BAJA_INVENTARIO.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.remove_circle_outline_sharp,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  size: 14.0,
                                                                                ),
                                                                              );
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.TRASLADADO.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.bolt,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  size: 14.0,
                                                                                ),
                                                                              );
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.PERDIDA.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.trending_down_outlined,
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  size: 14.0,
                                                                                ),
                                                                              );
                                                                            } else if (containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name) {
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.loop,
                                                                                  color: FlutterFlowTheme.of(context).primaryDegraded,
                                                                                  size: 14.0,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              return Container(
                                                                                width: 0.0,
                                                                                height: 0.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              );
                                                                            }
                                                                          },
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 5.0)),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  50.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FutureBuilder<
                                                          List<
                                                              MaintenancesRow>>(
                                                        future:
                                                            MaintenancesTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .eqOrNull(
                                                                'odem_id',
<<<<<<< HEAD
                                                                widget
=======
                                                                widget!
>>>>>>> master
                                                                    .maintenanceObjectId,
                                                              )
                                                              .order(
                                                                  'created_at'),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<MaintenancesRow>
                                                              tabBarMaintenancesRowList =
                                                              snapshot.data!;

                                                          return Column(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    Alignment(
                                                                        -1.0,
                                                                        0),
                                                                child:
                                                                    FlutterFlowButtonTabBar(
                                                                  useToggleButtonStyle:
                                                                      false,
                                                                  isScrollable:
                                                                      true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .plusJakartaSans(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .fontStyle,
                                                                      ),
                                                                  unselectedLabelStyle:
                                                                      TextStyle(),
                                                                  labelColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  unselectedLabelColor:
                                                                      Color(
                                                                          0xFF57636C),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0x7FF58321),
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      12.0,
                                                                  elevation:
                                                                      0.0,
                                                                  labelPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                  tabs: [
                                                                    Tab(
                                                                      text:
                                                                          'Información',
                                                                    ),
                                                                    Tab(
                                                                      text:
                                                                          'Hist. Mttos.',
                                                                    ),
                                                                    Tab(
                                                                      text:
                                                                          'Especificaciones',
                                                                    ),
                                                                    Tab(
                                                                      text:
                                                                          'Criterios de Disposición',
                                                                    ),
                                                                  ],
                                                                  controller: _model
                                                                      .tabBarController,
                                                                  onTap:
                                                                      (i) async {
                                                                    [
                                                                      () async {},
                                                                      () async {},
                                                                      () async {},
                                                                      () async {}
                                                                    ][i]();
                                                                  },
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    TabBarView(
                                                                  controller: _model
                                                                      .tabBarController,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        primary:
                                                                            false,
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Vida Útil',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    containerMaintenanceObjectsRow?.serviceLife?.toString(),
                                                                                    'No especificada',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ].divide(SizedBox(height: 4.0)),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Nivel de Criticidad',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    containerMaintenanceObjectsRow?.criticalityLevel,
                                                                                    'No especificado',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ].divide(SizedBox(height: 4.0)),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Fecha de Adquisición',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    functions.dateForScheduledMtto(containerMaintenanceObjectsRow?.adquisitionDate?.toString()),
                                                                                    'No especificada',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ].divide(SizedBox(height: 4.0)),
                                                                            ),
                                                                            FutureBuilder<List<ObjectsWithMttoCountRow>>(
                                                                              future: ObjectsWithMttoCountTable().queryRows(
                                                                                queryFn: (q) => q.eqOrNull(
                                                                                  'id',
<<<<<<< HEAD
                                                                                  widget.maintenanceObjectId,
=======
                                                                                  widget!.maintenanceObjectId,
>>>>>>> master
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
                                                                                List<ObjectsWithMttoCountRow> containerObjectsWithMttoCountRowList = snapshot.data!;

                                                                                return Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Número de Mttos. ejecutados sobre este Objeto',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          containerObjectsWithMttoCountRowList.length.toString(),
                                                                                          'Sin registro',
                                                                                        ),
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: Colors.black,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 4.0)),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Nombre de Quien Registró',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                                FutureBuilder<List<UsersRow>>(
                                                                                  future: UsersTable().querySingleRow(
                                                                                    queryFn: (q) => q.eqOrNull(
                                                                                      'dni',
                                                                                      containerMaintenanceObjectsRow?.registrantDni,
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
                                                                                    List<UsersRow> textUsersRowList = snapshot.data!;

                                                                                    final textUsersRow = textUsersRowList.isNotEmpty ? textUsersRowList.first : null;

                                                                                    return Text(
                                                                                      valueOrDefault<String>(
                                                                                        textUsersRow?.name,
                                                                                        'No especificado',
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.black,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ].divide(SizedBox(height: 4.0)),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(),
                                                                              child: Visibility(
                                                                                visible: containerMaintenanceObjectsRow?.currentState == MttoFinalStatus.DEVOLUCION.name,
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Razón de Devolución',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        tabBarMaintenancesRowList.firstOrNull?.observations,
                                                                                        'Sin observaciones registradas',
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.black,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 4.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(height: 20.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                              decoration: BoxDecoration(),
                                                                              alignment: AlignmentDirectional(0.0, -1.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final containerVar = tabBarMaintenancesRowList.toList();
                                                                                  if (containerVar.isEmpty) {
                                                                                    return EmptyMaintenanceListWidget();
                                                                                  }

                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    primary: false,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: containerVar.length,
                                                                                    itemBuilder: (context, containerVarIndex) {
                                                                                      final containerVarItem = containerVar[containerVarIndex];
                                                                                      return wrapWithModel(
                                                                                        model: _model.maintenanceHistoryCardModels.getModel(
                                                                                          containerVarItem.id,
                                                                                          containerVarIndex,
                                                                                        ),
                                                                                        updateCallback: () => safeSetState(() {}),
                                                                                        child: MaintenanceHistoryCardWidget(
                                                                                          key: Key(
                                                                                            'Keyfts_${containerVarItem.id}',
                                                                                          ),
                                                                                          maintenanceCode: containerVarItem.maintenanceCode,
                                                                                          typeOfMaintenance: containerVarItem.typeOfMaintenance,
                                                                                          maintenanceDate: containerVarItem.startDate,
                                                                                          maintenanceId: containerVarItem.id,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                30.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Especificaciones del Objeto',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              functions.jsonToReadableString(containerMaintenanceObjectsRow?.metadata),
                                                                              'Sin registro',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: Colors.black,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 4.0)),
                                                                      ),
                                                                    ),
                                                                    SingleChildScrollView(
                                                                      primary:
                                                                          false,
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            tablet:
                                                                                false,
                                                                            tabletLandscape:
                                                                                false,
                                                                            desktop:
                                                                                false,
                                                                          ))
                                                                            SingleChildScrollView(
                                                                              primary: false,
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Criterios de reposición parcial',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.roboto(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFAppState().dispCriteria.where((e) => containerMaintenanceObjectsRow?.category == e.category.name).toList().firstOrNull!.criteriosReposicinParcial,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 5.0)),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Criterios de reposición total y dar de baja del inventario',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.roboto(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFAppState().dispCriteria.where((e) => containerMaintenanceObjectsRow?.category == e.category.name).toList().firstOrNull!.criteriosReposicinTotalBajaInventario,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 5.0)),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Criterios de disposición final',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.roboto(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFAppState().dispCriteria.where((e) => containerMaintenanceObjectsRow?.category == e.category.name).toList().firstOrNull!.criteriosDisposicionFinal,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 5.0)),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Criterios de reposición Parcial',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.roboto(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              fontSize: 18.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          FFAppState().dispCriteria.where((e) => containerMaintenanceObjectsRow?.category == e.category.name).toList().firstOrNull!.criteriosReposicinParcial,
                                                                                          textAlign: TextAlign.start,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Criterios de Reposición Total y Dar de Baja del Inventario',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.roboto(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              fontSize: 18.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          FFAppState().dispCriteria.where((e) => containerMaintenanceObjectsRow?.category == e.category.name).toList().firstOrNull!.criteriosReposicinTotalBajaInventario,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Criterios de Disposición Final',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.roboto(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              fontSize: 18.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          FFAppState().dispCriteria.where((e) => containerMaintenanceObjectsRow?.category == e.category.name).toList().firstOrNull!.criteriosDisposicionFinal,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(SizedBox(height: 30.0)),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
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
        ));
  }
}
