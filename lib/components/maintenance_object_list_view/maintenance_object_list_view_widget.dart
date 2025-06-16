import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/skeletons/shimmer_current_project/shimmer_current_project_widget.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'maintenance_object_list_view_model.dart';
export 'maintenance_object_list_view_model.dart';

/// Show a selected MO to be scheduled for maintenance
class MaintenanceObjectListViewWidget extends StatefulWidget {
  const MaintenanceObjectListViewWidget({
    super.key,
    this.assetName,
    this.assetProject,
    this.assetCategory,
    required this.pageComingFrom,
    this.assetId,
    required this.callbackSetIndex,
    required this.callbackResetIndex,
    required this.callbackSetMttoObject,
    required this.callbackResetMttoObject,
    this.maintenanceObjectPhoto,
    this.assetCode,
  });

  final String? assetName;
  final String? assetProject;
  final String? assetCategory;
  final String? pageComingFrom;
  final String? assetId;
  final Future Function()? callbackSetIndex;
  final Future Function()? callbackResetIndex;
  final Future Function()? callbackSetMttoObject;
  final Future Function()? callbackResetMttoObject;
  final String? maintenanceObjectPhoto;
  final String? assetCode;

  @override
  State<MaintenanceObjectListViewWidget> createState() =>
      _MaintenanceObjectListViewWidgetState();
}

class _MaintenanceObjectListViewWidgetState
    extends State<MaintenanceObjectListViewWidget> {
  late MaintenanceObjectListViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenanceObjectListViewModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {});
    });

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

    return Builder(
      builder: (context) {
        if (FFAppState().Internet) {
          return FutureBuilder<List<ProjectsRow>>(
            future: FFAppState().cacheProjectName(
              uniqueQueryKey: widget.assetProject,
              requestFn: () => ProjectsTable().querySingleRow(
                queryFn: (q) => q.eqOrNull(
                  'id',
                  widget.assetProject,
                ),
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return ShimmerCurrentProjectWidget();
              }
              List<ProjectsRow> containerProjectsRowList = snapshot.data!;

              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final containerProjectsRow = containerProjectsRowList.isNotEmpty
                  ? containerProjectsRowList.first
                  : null;

              return InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if ((widget.pageComingFrom ==
                          NavbarNavigation.SCHEDULE_MAINTENANCE_PAGE.name) ||
                      (widget.pageComingFrom ==
                          NavbarNavigation
                              .CREATING_MAINTENANCE_STATE_PAGE.name)) {
                    context.goNamed(
                      AssetsInventoryPageWidget.routeName,
                      queryParameters: {
                        'pageComingFrom': serializeParam(
                          NavbarNavigation.CREATING_MAINTENANCE_STATE_PAGE,
                          ParamType.Enum,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  } else {
                    context.goNamed(
                      AssetProfilePageWidget.routeName,
                      queryParameters: {
                        'maintenanceObjectId': serializeParam(
                          widget.assetId,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    width: double.infinity,
                    height: 122.8,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(14.0, 9.5, 14.0, 9.5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              Duration(milliseconds: 3000),
                                          fadeOutDuration:
                                              Duration(milliseconds: 3000),
                                          imageUrl: widget
                                                          .maintenanceObjectPhoto !=
                                                      null &&
                                                  widget.maintenanceObjectPhoto !=
                                                      ''
                                              ? widget.maintenanceObjectPhoto!
                                              : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/c8bRUeGNp3TczWAFJQdZ/assets/y9xiztzrmjgm/disicheck-asset-default-image.jpg',
                                          width: 0.0,
                                          height: 10.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    widget.assetName,
                                                    'Activo sin nombre',
                                                  ).maybeHandleOverflow(
                                                    maxChars: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 22;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 22;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 150;
                                                      } else {
                                                        return 150;
                                                      }
                                                    }(),
                                                    replacement: '…',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
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
                                                Text(
                                                  valueOrDefault<String>(
                                                    containerProjectsRow?.name,
                                                    'Proyecto',
                                                  ).maybeHandleOverflow(
                                                    maxChars: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 22;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 22;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 150;
                                                      } else {
                                                        return 150;
                                                      }
                                                    }(),
                                                    replacement: '…',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.nunito(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
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
                                                RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Código: ',
                                                        style: TextStyle(),
                                                      ),
                                                      TextSpan(
                                                        text: valueOrDefault<
                                                            String>(
                                                          widget.assetCode,
                                                          'sin código',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .nunito(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .nunito(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
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
                                                Text(
                                                  valueOrDefault<String>(
                                                    widget.assetCategory,
                                                    'Categoría',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.nunito(
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
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
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Builder(
                                                    builder: (context) {
                                                      if (widget
                                                              .pageComingFrom ==
                                                          NavbarNavigation
                                                              .CREATING_MAINTENANCE_STATE_PAGE
                                                              .name) {
                                                        return Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              visualDensity:
                                                                  VisualDensity
                                                                      .compact,
                                                              materialTapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              shape:
                                                                  CircleBorder(),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxValue1 ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              safeSetState(() =>
                                                                  _model.checkboxValue1 =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                await widget
                                                                    .callbackSetIndex
                                                                    ?.call();
                                                                await widget
                                                                    .callbackSetMttoObject
                                                                    ?.call();
                                                              } else {
                                                                await widget
                                                                    .callbackResetIndex
                                                                    ?.call();
                                                                await widget
                                                                    .callbackResetMttoObject
                                                                    ?.call();
                                                              }
                                                            },
                                                            side: (FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  )
                                                                : null,
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        );
                                                      } else if (widget
                                                              .pageComingFrom ==
                                                          NavbarNavigation
                                                              .SCHEDULE_MAINTENANCE_PAGE
                                                              .name) {
                                                        return Icon(
                                                          Icons
                                                              .keyboard_arrow_right_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        );
                                                      } else {
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              AssetProfileEditWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'maintenanceObjectId':
                                                                    serializeParam(
                                                                  widget
                                                                      .assetId,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons.edit_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 24.0,
                                                          ),
                                                        );
                                                      }
                                                    },
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
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if ((widget.pageComingFrom ==
                      NavbarNavigation.SCHEDULE_MAINTENANCE_PAGE.name) ||
                  (widget.pageComingFrom ==
                      NavbarNavigation.CREATING_MAINTENANCE_STATE_PAGE.name)) {
                context.goNamed(
                  AssetsInventoryPageWidget.routeName,
                  queryParameters: {
                    'pageComingFrom': serializeParam(
                      NavbarNavigation.CREATING_MAINTENANCE_STATE_PAGE,
                      ParamType.Enum,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              } else {
                context.goNamed(
                  AssetProfilePageWidget.routeName,
                  queryParameters: {
                    'maintenanceObjectId': serializeParam(
                      widget.assetId,
                      ParamType.String,
                    ),
                  }.withoutNulls,
                );
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                width: double.infinity,
                height: 96.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).tertiary,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          Duration(milliseconds: 3000),
                                      fadeOutDuration:
                                          Duration(milliseconds: 3000),
                                      imageUrl: widget
                                                      .maintenanceObjectPhoto !=
                                                  null &&
                                              widget.maintenanceObjectPhoto !=
                                                  ''
                                          ? widget.maintenanceObjectPhoto!
                                          : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d5sk98qZloElOEHM6UCe/assets/v7hcgz9y5jsj/disicheck-default-mo-image.png',
                                      width: 0.0,
                                      height: 10.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.assetName,
                                                  'Activo sin nombre',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
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
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.assetCategory,
                                                  'Categoría',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.nunito(
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
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
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
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  if (widget.pageComingFrom ==
                                                      NavbarNavigation
                                                          .CREATING_MAINTENANCE_STATE_PAGE
                                                          .name) {
                                                    return Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape: CircleBorder(),
                                                        ),
                                                        unselectedWidgetColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkboxValue2 ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkboxValue2 =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            await widget
                                                                .callbackSetIndex
                                                                ?.call();
                                                            await widget
                                                                .callbackSetMttoObject
                                                                ?.call();
                                                          } else {
                                                            await widget
                                                                .callbackResetIndex
                                                                ?.call();
                                                            await widget
                                                                .callbackResetMttoObject
                                                                ?.call();
                                                          }
                                                        },
                                                        side: (FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate !=
                                                                null)
                                                            ? BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                              )
                                                            : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                      ),
                                                    );
                                                  } else if (widget
                                                          .pageComingFrom ==
                                                      NavbarNavigation
                                                          .SCHEDULE_MAINTENANCE_PAGE
                                                          .name) {
                                                    return Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    );
                                                  } else {
                                                    return InkWell(
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
                                                          AssetProfileEditWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'maintenanceObjectId':
                                                                serializeParam(
                                                              widget.assetId,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons.edit_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                    );
                                                  }
                                                },
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
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
