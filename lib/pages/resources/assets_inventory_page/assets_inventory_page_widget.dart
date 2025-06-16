import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/empty_assets_list_component/empty_assets_list_component_widget.dart';
import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/components/maintenance_object_grid_view/maintenance_object_grid_view_widget.dart';
import '/components/maintenance_object_list_view/maintenance_object_list_view_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/home/components/mobile_objects_metrics/mobile_objects_metrics_widget.dart';
import '/pages/maintenance/components/skeletons/shimmer_project_input/shimmer_project_input_widget.dart';
import '/pages/resources/components/filter_by_category/filter_by_category_widget.dart';
import '/pages/resources/components/filter_by_category_copy/filter_by_category_copy_widget.dart';
import '/pages/resources/skeletons/shimmer_mobile_objects_list/shimmer_mobile_objects_list_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'assets_inventory_page_model.dart';
export 'assets_inventory_page_model.dart';

class AssetsInventoryPageWidget extends StatefulWidget {
  const AssetsInventoryPageWidget({
    super.key,
    this.pageComingFrom,
  });

  final NavbarNavigation? pageComingFrom;

  static String routeName = 'AssetsInventoryPage';
  static String routePath = '/AssetsInventoryPage';

  @override
  State<AssetsInventoryPageWidget> createState() =>
      _AssetsInventoryPageWidgetState();
}

class _AssetsInventoryPageWidgetState extends State<AssetsInventoryPageWidget>
    with TickerProviderStateMixin {
  late AssetsInventoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssetsInventoryPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {});
      _model.queryAuxUnassignedObjects =
          await UnassignedObjectsTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'is_active',
              true,
            )
            .eqOrNull(
              'assigned_project_id',
              FFAppState().authenticatedRole == 1
                  ? _model.selectedProjectToAssignValue
                  : FFAppState().currentProject,
            ),
      );
      _model.baseAssets = _model.queryAuxUnassignedObjects!
          .toList()
          .cast<UnassignedObjectsRow>();
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 220.0.ms,
            duration: 820.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 220.0.ms,
            duration: 820.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 220.0.ms,
            duration: 820.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 220.0.ms,
            duration: 820.0.ms,
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
        title: 'Inventario',
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
                  if (FFAppState().Internet == true) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.desktopSideBarModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: DesktopSideBarWidget(
                            homeSelected: false,
                            mttosSelected: false,
                            inventorySelected: true,
                            reportsSelected: false,
                            usersSelected: false,
                            scheduleSelected: false,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return MediaQuery.sizeOf(context).width;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 650.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 800.0;
                              } else {
                                return 800.0;
                              }
                            }(),
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            offset: Offset(
                                              0.0,
                                              4.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18.59, 0.0, 18.59, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      HomePageWidget.routeName);
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.arrow_back,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Lista de Activos',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
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
                                            Expanded(
                                              flex: 1,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
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
                                                          MaintenancePageWidget
                                                              .routeName);
                                                    },
                                                    child: Text(
                                                      'Cancelar',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .nunito(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8FAFE),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 24.0, 24.0, 24.0),
                                          child: SingleChildScrollView(
                                            primary: false,
                                            child: Column(
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
                                                    if (widget
                                                            .pageComingFrom ==
                                                        NavbarNavigation
                                                            .CREATING_MAINTENANCE_STATE_PAGE) {
                                                      context.pushNamed(
                                                          ScheduleMaintenancePageWidget
                                                              .routeName);
                                                    } else {
                                                      context.pushNamed(
                                                          CreateAssetPageWidget
                                                              .routeName);

                                                      _model
                                                          .clearCacheMaintenanceObjectListForAdminsCache();
                                                      _model
                                                          .clearCacheMaintenanceObjectsListCache();
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                      context)
                                                                  .width,
                                                          height: 56.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryDegraded,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .playlist_add,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                widget.pageComingFrom ==
                                                                        NavbarNavigation
                                                                            .CREATING_MAINTENANCE_STATE_PAGE
                                                                    ? 'Seleccionar este activo'
                                                                    : 'Crear activo',
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
                                                                          .primary,
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
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .mobileObjectsMetricsModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      MobileObjectsMetricsWidget(
                                                    project: _model
                                                        .projectToFilterAssets,
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    if (_model.layouView ==
                                                        LayoutView.LIST) {
                                                      return SingleChildScrollView(
                                                        primary: false,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          24.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Lista Completa de Activos',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
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
                                                                        onTap:
                                                                            () async {
                                                                          _model.layouView =
                                                                              LayoutView.LIST;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .format_list_bulleted_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
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
                                                                          _model.layouView =
                                                                              LayoutView.GRID;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .grid_view_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      if (!_model
                                                                          .searchIsActive)
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
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              useSafeArea: true,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: Container(
                                                                                      height: 300.0,
                                                                                      child: FilterByCategoryCopyWidget(
                                                                                        setCategory: (selectedCategoryToSortAssets) async {
                                                                                          _model.selectedCategory = selectedCategoryToSortAssets;
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.filter_alt_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            5.0)),
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'rowOnPageLoadAnimation']!),
                                                                ],
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
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (FFAppState()
                                                                          .authenticatedRole ==
                                                                      1)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          'Filtrar activos por proyecto',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                        FutureBuilder<
                                                                            List<ProjectsRow>>(
                                                                          future:
                                                                              ProjectsTable().queryRows(
                                                                            queryFn: (q) =>
                                                                                q.eqOrNull(
                                                                              'active',
                                                                              true,
                                                                            ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return ShimmerProjectInputWidget();
                                                                            }
                                                                            List<ProjectsRow>
                                                                                containerProjectsRowList =
                                                                                snapshot.data!;

                                                                            return Container(
                                                                              width: double.infinity,
                                                                              height: 50.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.selectedProjectToAssignValueController ??= FormFieldController<String>(
                                                                                  _model.selectedProjectToAssignValue ??= '',
                                                                                ),
                                                                                options: List<String>.from(containerProjectsRowList.map((e) => e.id).toList()),
                                                                                optionLabels: containerProjectsRowList.map((e) => e.name).toList(),
                                                                                onChanged: (val) async {
                                                                                  safeSetState(() => _model.selectedProjectToAssignValue = val);
                                                                                  _model.clearCacheMaintenanceObjectListForAdminsCache();
                                                                                  _model.clearCacheMaintenanceObjectsListCache();
                                                                                  _model.projectToFilterAssets = _model.selectedProjectToAssignValue!;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                width: double.infinity,
                                                                                height: 40.0,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                                hintText: containerProjectsRowList.firstOrNull?.name,
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                elevation: 0.0,
                                                                                borderColor: Colors.transparent,
                                                                                borderWidth: 0.0,
                                                                                borderRadius: 8.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 10.0)),
                                                                    ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Busca activos por su código',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children:
                                                                              [
                                                                            Flexible(
                                                                              child: Container(
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                child: TextFormField(
                                                                                  controller: _model.textController,
                                                                                  focusNode: _model.textFieldFocusNode,
                                                                                  onChanged: (_) => EasyDebounce.debounce(
                                                                                    '_model.textController',
                                                                                    Duration(milliseconds: 2000),
                                                                                    () async {
                                                                                      _model.searchIsActive = true;
                                                                                      safeSetState(() {});
                                                                                    },
                                                                                  ),
                                                                                  autofocus: false,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: true,
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                        ),
                                                                                    hintText: 'ABC123',
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    filled: true,
                                                                                    fillColor: FlutterFlowTheme.of(context).tertiary,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  validator: _model.textControllerValidator.asValidator(context),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation']!),
                                                                            ),
                                                                            if (_model.searchIsActive)
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  safeSetState(() {
                                                                                    _model.textController?.clear();
                                                                                  });
                                                                                  _model.searchIsActive = false;
                                                                                  safeSetState(() {});
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.close,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
                                                                          ].divide(SizedBox(width: 10.0)),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            10.0)),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                if (widget
                                                                        .pageComingFrom ==
                                                                    NavbarNavigation
                                                                        .CREATING_MAINTENANCE_STATE_PAGE) {
                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Estás viendo Activos sin Mtto.',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FontStyle.italic,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      if (_model
                                                                              .searchIsActive ==
                                                                          false)
                                                                        FutureBuilder<
                                                                            List<UnassignedObjectsRow>>(
                                                                          future:
                                                                              _model.cacheMaintenanceObjectListForAdmins(
                                                                            uniqueQueryKey:
                                                                                currentUserUid,
                                                                            requestFn: () =>
                                                                                UnassignedObjectsTable().queryRows(
                                                                              queryFn: (q) => q
                                                                                  .eqOrNull(
                                                                                    'assigned_project_id',
                                                                                    FFAppState().authenticatedRole == 1 ? _model.selectedProjectToAssignValue : FFAppState().currentProject,
                                                                                  )
                                                                                  .eqOrNull(
                                                                                    'is_active',
                                                                                    true,
                                                                                  )
                                                                                  .order('created_at'),
                                                                              limit: 300,
                                                                            ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return ShimmerMobileObjectsListWidget();
                                                                            }
                                                                            List<UnassignedObjectsRow>
                                                                                containerUnassignedObjectsRowList =
                                                                                snapshot.data!;

                                                                            return Container(
                                                                              width: double.infinity,
                                                                              height: MediaQuery.sizeOf(context).height * 0.7,
                                                                              decoration: BoxDecoration(),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final objectsWithNoMttoList = containerUnassignedObjectsRowList.where((e) => _model.selectedCategory == null || _model.selectedCategory == '' ? true : (e.category == _model.selectedCategory)).toList().take(100).toList();
                                                                                    if (objectsWithNoMttoList.isEmpty) {
                                                                                      return EmptyAssetsListComponentWidget();
                                                                                    }

                                                                                    return ListView.separated(
                                                                                      padding: EdgeInsets.zero,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: objectsWithNoMttoList.length,
                                                                                      separatorBuilder: (_, __) => SizedBox(height: 16.0),
                                                                                      itemBuilder: (context, objectsWithNoMttoListIndex) {
                                                                                        final objectsWithNoMttoListItem = objectsWithNoMttoList[objectsWithNoMttoListIndex];
                                                                                        return Visibility(
                                                                                          visible: (objectsWithNoMttoListItem.id == _model.index) || (_model.index == null || _model.index == ''),
                                                                                          child: wrapWithModel(
                                                                                            model: _model.maintenanceObjectListViewModels1.getModel(
                                                                                              objectsWithNoMttoListItem.id!,
                                                                                              objectsWithNoMttoListIndex,
                                                                                            ),
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: MaintenanceObjectListViewWidget(
                                                                                              key: Key(
                                                                                                'Keyv2u_${objectsWithNoMttoListItem.id!}',
                                                                                              ),
                                                                                              assetName: objectsWithNoMttoListItem.name,
                                                                                              assetProject: objectsWithNoMttoListItem.assignedProjectId,
                                                                                              assetCategory: objectsWithNoMttoListItem.category,
                                                                                              pageComingFrom: widget.pageComingFrom!.name,
                                                                                              assetId: objectsWithNoMttoListItem.id,
                                                                                              maintenanceObjectPhoto: objectsWithNoMttoListItem.moImage,
                                                                                              assetCode: objectsWithNoMttoListItem.code,
                                                                                              callbackSetIndex: () async {
                                                                                                _model.index = objectsWithNoMttoListItem.id;
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetIndex: () async {
                                                                                                _model.index = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackSetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = objectsWithNoMttoListItem.id!;
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation1']!);
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      if (_model
                                                                              .searchIsActive ==
                                                                          true)
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.7,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                20.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FutureBuilder<ApiCallResponse>(
                                                                              future: SearchForAssetsWithoutAssignedMaintenanceCall.call(
                                                                                searchString: _model.textController.text,
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
                                                                                final onlineListViewSearchForAssetsWithoutAssignedMaintenanceResponse = snapshot.data!;

                                                                                return Builder(
                                                                                  builder: (context) {
                                                                                    final searchedObjectsWithNoMtto = onlineListViewSearchForAssetsWithoutAssignedMaintenanceResponse.jsonBody.toList();
                                                                                    if (searchedObjectsWithNoMtto.isEmpty) {
                                                                                      return EmptyAssetsListComponentWidget();
                                                                                    }

                                                                                    return ListView.separated(
                                                                                      padding: EdgeInsets.zero,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: searchedObjectsWithNoMtto.length,
                                                                                      separatorBuilder: (_, __) => SizedBox(height: 16.0),
                                                                                      itemBuilder: (context, searchedObjectsWithNoMttoIndex) {
                                                                                        final searchedObjectsWithNoMttoItem = searchedObjectsWithNoMtto[searchedObjectsWithNoMttoIndex];
                                                                                        return Visibility(
                                                                                          visible: (getJsonField(
                                                                                                    searchedObjectsWithNoMttoItem,
                                                                                                    r'''$.id''',
                                                                                                  ) ==
                                                                                                  _model.index) ||
                                                                                              (_model.index == null || _model.index == ''),
                                                                                          child: wrapWithModel(
                                                                                            model: _model.maintenanceObjectListViewModels2.getModel(
                                                                                              searchedObjectsWithNoMttoIndex.toString(),
                                                                                              searchedObjectsWithNoMttoIndex,
                                                                                            ),
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: MaintenanceObjectListViewWidget(
                                                                                              key: Key(
                                                                                                'Keyh3l_${searchedObjectsWithNoMttoIndex.toString()}',
                                                                                              ),
                                                                                              assetName: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.name''',
                                                                                              ).toString(),
                                                                                              assetProject: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.assigned_project_id''',
                                                                                              ).toString(),
                                                                                              assetCategory: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.category''',
                                                                                              ).toString(),
                                                                                              pageComingFrom: widget.pageComingFrom!.name,
                                                                                              assetId: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.id''',
                                                                                              ).toString(),
                                                                                              maintenanceObjectPhoto: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.mo_image''',
                                                                                              ).toString(),
                                                                                              assetCode: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.code''',
                                                                                              ).toString(),
                                                                                              callbackSetIndex: () async {
                                                                                                _model.index = getJsonField(
                                                                                                  searchedObjectsWithNoMttoItem,
                                                                                                  r'''$.id''',
                                                                                                ).toString();
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetIndex: () async {
                                                                                                _model.index = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackSetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = searchedObjectsWithNoMttoIndex.toString();
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  );
                                                                } else {
                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      if (_model
                                                                              .searchIsActive ==
                                                                          false)
                                                                        FutureBuilder<
                                                                            List<MaintenanceObjectsRow>>(
                                                                          future:
                                                                              _model.cacheMaintenanceObjectsList(
                                                                            uniqueQueryKey:
                                                                                currentUserUid,
                                                                            requestFn: () =>
                                                                                MaintenanceObjectsTable().queryRows(
                                                                              queryFn: (q) => q
                                                                                  .eqOrNull(
                                                                                    'assigned_project_id',
                                                                                    FFAppState().authenticatedRole == 1 ? _model.projectToFilterAssets : FFAppState().currentProject,
                                                                                  )
                                                                                  .eqOrNull(
                                                                                    'is_active',
                                                                                    true,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return ShimmerMobileObjectsListWidget();
                                                                            }
                                                                            List<MaintenanceObjectsRow>
                                                                                containerMaintenanceObjectsRowList =
                                                                                snapshot.data!;

                                                                            return Container(
                                                                              width: double.infinity,
                                                                              height: MediaQuery.sizeOf(context).height * 0.7,
                                                                              decoration: BoxDecoration(),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final objectsList = containerMaintenanceObjectsRowList
                                                                                        .where((e) => valueOrDefault<bool>(
                                                                                              _model.selectedCategory == null || _model.selectedCategory == '' ? true : (_model.selectedCategory == e.category),
                                                                                              false,
                                                                                            ))
                                                                                        .toList();
                                                                                    if (objectsList.isEmpty) {
                                                                                      return EmptyAssetsListComponentWidget();
                                                                                    }

                                                                                    return ListView.separated(
                                                                                      padding: EdgeInsets.zero,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: objectsList.length,
                                                                                      separatorBuilder: (_, __) => SizedBox(height: 16.0),
                                                                                      itemBuilder: (context, objectsListIndex) {
                                                                                        final objectsListItem = objectsList[objectsListIndex];
                                                                                        return Visibility(
                                                                                          visible: (objectsListItem.id == _model.index) || (_model.index == null || _model.index == ''),
                                                                                          child: wrapWithModel(
                                                                                            model: _model.maintenanceObjectListViewModels3.getModel(
                                                                                              objectsListItem.id,
                                                                                              objectsListIndex,
                                                                                            ),
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: MaintenanceObjectListViewWidget(
                                                                                              key: Key(
                                                                                                'Keyp9b_${objectsListItem.id}',
                                                                                              ),
                                                                                              assetName: objectsListItem.name,
                                                                                              assetProject: objectsListItem.assignedProjectId,
                                                                                              assetCategory: objectsListItem.category,
                                                                                              pageComingFrom: widget.pageComingFrom!.name,
                                                                                              assetId: objectsListItem.id,
                                                                                              maintenanceObjectPhoto: objectsListItem.moImage,
                                                                                              assetCode: objectsListItem.code,
                                                                                              callbackSetIndex: () async {
                                                                                                _model.index = objectsListItem.id;
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetIndex: () async {
                                                                                                _model.index = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackSetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = objectsListItem.id;
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation2']!);
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      if (_model
                                                                              .searchIsActive ==
                                                                          true)
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.7,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                20.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FutureBuilder<ApiCallResponse>(
                                                                              future: SearchForFullAssetsInventoryCall.call(
                                                                                searchString: _model.textController.text,
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
                                                                                final onlineListViewSearchForFullAssetsInventoryResponse = snapshot.data!;

                                                                                return Builder(
                                                                                  builder: (context) {
                                                                                    final searchedObjectsWithNoMtto = onlineListViewSearchForFullAssetsInventoryResponse.jsonBody.toList();
                                                                                    if (searchedObjectsWithNoMtto.isEmpty) {
                                                                                      return EmptyAssetsListComponentWidget();
                                                                                    }

                                                                                    return ListView.separated(
                                                                                      padding: EdgeInsets.zero,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: searchedObjectsWithNoMtto.length,
                                                                                      separatorBuilder: (_, __) => SizedBox(height: 16.0),
                                                                                      itemBuilder: (context, searchedObjectsWithNoMttoIndex) {
                                                                                        final searchedObjectsWithNoMttoItem = searchedObjectsWithNoMtto[searchedObjectsWithNoMttoIndex];
                                                                                        return Visibility(
                                                                                          visible: (getJsonField(
                                                                                                    searchedObjectsWithNoMttoItem,
                                                                                                    r'''$.id''',
                                                                                                  ) ==
                                                                                                  _model.index) ||
                                                                                              (_model.index == null || _model.index == ''),
                                                                                          child: wrapWithModel(
                                                                                            model: _model.maintenanceObjectListViewModels4.getModel(
                                                                                              searchedObjectsWithNoMttoIndex.toString(),
                                                                                              searchedObjectsWithNoMttoIndex,
                                                                                            ),
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: MaintenanceObjectListViewWidget(
                                                                                              key: Key(
                                                                                                'Key2n3_${searchedObjectsWithNoMttoIndex.toString()}',
                                                                                              ),
                                                                                              assetName: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.name''',
                                                                                              ).toString(),
                                                                                              assetProject: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.assigned_project_id''',
                                                                                              ).toString(),
                                                                                              assetCategory: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.category''',
                                                                                              ).toString(),
                                                                                              pageComingFrom: widget.pageComingFrom!.name,
                                                                                              assetId: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.id''',
                                                                                              ).toString(),
                                                                                              maintenanceObjectPhoto: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.mo_image''',
                                                                                              ).toString(),
                                                                                              assetCode: getJsonField(
                                                                                                searchedObjectsWithNoMttoItem,
                                                                                                r'''$.code''',
                                                                                              ).toString(),
                                                                                              callbackSetIndex: () async {
                                                                                                _model.index = getJsonField(
                                                                                                  searchedObjectsWithNoMttoItem,
                                                                                                  r'''$.id''',
                                                                                                ).toString();
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetIndex: () async {
                                                                                                _model.index = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackSetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = getJsonField(
                                                                                                  searchedObjectsWithNoMttoItem,
                                                                                                  r'''$.id''',
                                                                                                ).toString();
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              callbackResetMttoObject: () async {
                                                                                                FFAppState().selectedMoForScheduledMtto = '';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    } else {
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        24.0,
                                                                        0.0,
                                                                        16.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Lista Completa de Activos',
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
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
                                                                        _model.layouView =
                                                                            LayoutView.LIST;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .format_list_bulleted_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
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
                                                                        _model.layouView =
                                                                            LayoutView.GRID;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .grid_view_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
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
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          useSafeArea:
                                                                              true,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: Container(
                                                                                  height: 400.0,
                                                                                  child: FilterByCategoryWidget(
                                                                                    setProject: (selectedProjectToFilterAssets) async {
                                                                                      _model.projectToFilterAssets = selectedProjectToFilterAssets;
                                                                                      safeSetState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .filter_alt_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          5.0)),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          FutureBuilder<
                                                              List<
                                                                  MaintenanceObjectsRow>>(
                                                            future: _model
                                                                .cacheMaintenanceObjectsList(
                                                              uniqueQueryKey:
                                                                  currentUserUid,
                                                              requestFn: () =>
                                                                  MaintenanceObjectsTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'assigned_project_id',
                                                                  FFAppState().authenticatedRole ==
                                                                          1
                                                                      ? _model
                                                                          .selectedProjectToAssignValue
                                                                      : FFAppState()
                                                                          .currentProject,
                                                                ),
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
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
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
                                                              List<MaintenanceObjectsRow>
                                                                  containerMaintenanceObjectsRowList =
                                                                  snapshot
                                                                      .data!;

                                                              return Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  primary:
                                                                      false,
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final activosGrid = containerMaintenanceObjectsRowList
                                                                                .where((e) => valueOrDefault<bool>(
                                                                                      functions.isNull(FFAppState().selectedMOCategories.toList()) ? true : FFAppState().selectedMOCategories.contains(e.category),
                                                                                      false,
                                                                                    ))
                                                                                .toList();
                                                                            if (activosGrid.isEmpty) {
                                                                              return EmptyAssetsListComponentWidget();
                                                                            }

                                                                            return GridView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                                crossAxisCount: 2,
                                                                                crossAxisSpacing: 10.0,
                                                                                mainAxisSpacing: 20.0,
                                                                                childAspectRatio: 1.0,
                                                                              ),
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: activosGrid.length,
                                                                              itemBuilder: (context, activosGridIndex) {
                                                                                final activosGridItem = activosGrid[activosGridIndex];
                                                                                return wrapWithModel(
                                                                                  model: _model.maintenanceObjectGridViewModels1.getModel(
                                                                                    activosGridItem.id,
                                                                                    activosGridIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: MaintenanceObjectGridViewWidget(
                                                                                    key: Key(
                                                                                      'Key0hz_${activosGridItem.id}',
                                                                                    ),
                                                                                    maintenanceObjectImage: activosGridItem.moImage,
                                                                                    maintenanceObjectName: activosGridItem.name,
                                                                                    maintenanceObjectCategory: activosGridItem.category,
                                                                                  ),
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
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
                                      mttosSelected: false,
                                      inventorySelected: true,
                                      profileSelected: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.desktopSideBarModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: DesktopSideBarWidget(
                            homeSelected: false,
                            mttosSelected: false,
                            inventorySelected: true,
                            reportsSelected: false,
                            usersSelected: false,
                            scheduleSelected: false,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return MediaQuery.sizeOf(context).width;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 650.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 800.0;
                              } else {
                                return 800.0;
                              }
                            }(),
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            offset: Offset(
                                              0.0,
                                              4.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18.59, 0.0, 18.59, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Row(
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
                                                      context.safePop();
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
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Lista de recursos',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
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
                                            Expanded(
                                              flex: 1,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
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
                                                          MaintenancePageWidget
                                                              .routeName);
                                                    },
                                                    child: Text(
                                                      'Cancelar',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .nunito(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8FAFE),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 24.0, 24.0, 24.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Últimos creados',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.layouView =
                                                                LayoutView.LIST;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .format_list_bulleted_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.layouView =
                                                                LayoutView.GRID;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .grid_view_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              useSafeArea: true,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          250.0,
                                                                      child:
                                                                          FilterByCategoryWidget(
                                                                        setProject:
                                                                            (selectedProjectToFilterAssets) async {
                                                                          _model.projectToFilterAssets =
                                                                              selectedProjectToFilterAssets;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .filter_alt_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        if (FFAppState()
                                                            .Internet)
                                                          Icon(
                                                            Icons.wifi,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 24.0,
                                                          ),
                                                        if (FFAppState()
                                                                .Internet ==
                                                            false)
                                                          Icon(
                                                            Icons.wifi_off,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 24.0,
                                                          ),
                                                      ].divide(
                                                          SizedBox(width: 5.0)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (widget.pageComingFrom ==
                                                  NavbarNavigation
                                                      .CREATING_MAINTENANCE_STATE_PAGE)
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Flexible(
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (widget
                                                                  .pageComingFrom ==
                                                              NavbarNavigation
                                                                  .CREATING_MAINTENANCE_STATE_PAGE) {
                                                            context.pushNamed(
                                                                ScheduleMaintenancePageWidget
                                                                    .routeName);
                                                          } else {
                                                            context.pushNamed(
                                                                CreateAssetPageWidget
                                                                    .routeName);
                                                          }
                                                        },
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                      context)
                                                                  .width,
                                                          height: 56.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryDegraded,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .playlist_add,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Seleccionar este activo',
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
                                                                          .primary,
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
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              Builder(
                                                builder: (context) {
                                                  if (_model.layouView ==
                                                      LayoutView.LIST) {
                                                    return Container(
                                                      height: 450.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final objectsList =
                                                                FFAppState()
                                                                    .inventoryList
                                                                    .where((e) =>
                                                                        valueOrDefault<
                                                                            bool>(
                                                                          functions.isNull(FFAppState().selectedMOCategories.toList())
                                                                              ? true
                                                                              : FFAppState().selectedMOCategories.contains(e.category),
                                                                          false,
                                                                        ))
                                                                    .toList();

                                                            return ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  objectsList
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          16.0),
                                                              itemBuilder: (context,
                                                                  objectsListIndex) {
                                                                final objectsListItem =
                                                                    objectsList[
                                                                        objectsListIndex];
                                                                return Visibility(
                                                                  visible: (objectsListIndex ==
                                                                          FFAppState()
                                                                              .index) ||
                                                                      (_model.index ==
                                                                              null ||
                                                                          _model.index ==
                                                                              ''),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .maintenanceObjectListViewModels5
                                                                        .getModel(
                                                                      objectsListIndex
                                                                          .toString(),
                                                                      objectsListIndex,
                                                                    ),
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MaintenanceObjectListViewWidget(
                                                                      key: Key(
                                                                        'Keyw7a_${objectsListIndex.toString()}',
                                                                      ),
                                                                      assetName:
                                                                          objectsListItem
                                                                              .name,
                                                                      assetProject:
                                                                          objectsListItem
                                                                              .assignedProjectId,
                                                                      assetCategory:
                                                                          objectsListItem
                                                                              .category,
                                                                      pageComingFrom: widget
                                                                          .pageComingFrom!
                                                                          .name,
                                                                      assetId:
                                                                          objectsListItem
                                                                              .id,
                                                                      callbackSetIndex:
                                                                          () async {
                                                                        _model.index =
                                                                            objectsListIndex.toString();
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      callbackResetIndex:
                                                                          () async {
                                                                        _model.index =
                                                                            '';
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      callbackSetMttoObject:
                                                                          () async {
                                                                        FFAppState().selectedMoForScheduledMtto =
                                                                            objectsListItem.id;
                                                                        FFAppState()
                                                                            .update(() {});
                                                                      },
                                                                      callbackResetMttoObject:
                                                                          () async {
                                                                        FFAppState().selectedMoForScheduledMtto =
                                                                            '';
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  } else {
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final gridItems =
                                                              FFAppState()
                                                                  .inventoryList
                                                                  .where((e) =>
                                                                      valueOrDefault<
                                                                          bool>(
                                                                        functions.isNull(FFAppState().selectedMOCategories.toList())
                                                                            ? true
                                                                            : FFAppState().selectedMOCategories.contains(e.category),
                                                                        false,
                                                                      ))
                                                                  .toList();

                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 2,
                                                              crossAxisSpacing:
                                                                  20.0,
                                                              mainAxisSpacing:
                                                                  50.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount: gridItems
                                                                .length,
                                                            itemBuilder: (context,
                                                                gridItemsIndex) {
                                                              final gridItemsItem =
                                                                  gridItems[
                                                                      gridItemsIndex];
                                                              return wrapWithModel(
                                                                model: _model
                                                                    .maintenanceObjectGridViewModels2
                                                                    .getModel(
                                                                  gridItemsIndex
                                                                      .toString(),
                                                                  gridItemsIndex,
                                                                ),
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    MaintenanceObjectGridViewWidget(
                                                                  key: Key(
                                                                    'Keyj6c_${gridItemsIndex.toString()}',
                                                                  ),
                                                                  maintenanceObjectImage:
                                                                      getJsonField(
                                                                    gridItemsItem
                                                                        .toMap(),
                                                                    r'''$.mo_image''',
                                                                  ).toString(),
                                                                  maintenanceObjectName:
                                                                      getJsonField(
                                                                    gridItemsItem
                                                                        .toMap(),
                                                                    r'''$.name''',
                                                                  ).toString(),
                                                                  maintenanceObjectCategory:
                                                                      getJsonField(
                                                                    gridItemsItem
                                                                        .toMap(),
                                                                    r'''$.category''',
                                                                  ).toString(),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
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
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: wrapWithModel(
                                    model: _model.navBarModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavBarWidget(
                                      homeSelected: false,
                                      mttosSelected: false,
                                      inventorySelected: true,
                                      profileSelected: false,
                                    ),
                                  ),
                                ),
                              ],
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
