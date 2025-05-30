import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/alert_modal/alert_modal_widget.dart';
import '/components/commons/confirmation_modal/confirmation_modal_widget.dart';
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
<<<<<<< HEAD
=======
import '/flutter_flow/flutter_flow_widgets.dart';
>>>>>>> master
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/maintenance/create_maintenance_objects/components/equipment_machines_form/equipment_machines_form_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/infrastructure_form/infrastructure_form_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/input_element/input_element_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/measuring_tool_form/measuring_tool_form_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/tools_form/tools_form_widget.dart';
import '/pages/resources/skeletons/shimmer_create_asset/shimmer_create_asset_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/cupertino.dart';
<<<<<<< HEAD
=======
import 'package:flutter/gestures.dart';
>>>>>>> master
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_asset_page_model.dart';
export 'create_asset_page_model.dart';

class CreateAssetPageWidget extends StatefulWidget {
  const CreateAssetPageWidget({super.key});

  static String routeName = 'CreateAssetPage';
  static String routePath = '/createMttObjectPage';

  @override
  State<CreateAssetPageWidget> createState() => _CreateAssetPageWidgetState();
}

class _CreateAssetPageWidgetState extends State<CreateAssetPageWidget> {
  late CreateAssetPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateAssetPageModel());

    _model.toolsGroupTextController ??= TextEditingController();
    _model.toolsGroupFocusNode ??= FocusNode();

    _model.registrantDniTextController ??= TextEditingController();
    _model.registrantDniFocusNode ??= FocusNode();

    _model.criticalityLevelTextController ??= TextEditingController();
    _model.criticalityLevelFocusNode ??= FocusNode();

    _model.serviceLifeTextController ??= TextEditingController();
    _model.serviceLifeFocusNode ??= FocusNode();

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

    return FutureBuilder<List<ProjectsRow>>(
      future: FFAppState().cachedAllProjects(
        uniqueQueryKey: currentUserUid,
        requestFn: () => ProjectsTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'active',
            true,
          ),
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFF8FAFE),
            body: Center(
              child: ShimmerCreateAssetWidget(),
            ),
          );
        }
        List<ProjectsRow> createAssetPageProjectsRowList = snapshot.data!;

        return Title(
            title: 'Crear Mantenimiento',
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
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 56.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: FlutterFlowTheme.of(context).alternate,
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
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.safePop();
                                          },
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: FlutterFlowTheme.of(context)
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
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Crear nuevo Activo',
                                          textAlign: TextAlign.center,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
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
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 17.0, 0.0, 17.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: Container(
                                      width: 300.0,
                                      decoration: BoxDecoration(),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 120.0,
                                            height: 120.0,
                                            child: Stack(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    if (_model.uploadedFileUrl_uploadedLocalPhotoFile ==
<<<<<<< HEAD
=======
                                                            null ||
                                                        _model.uploadedFileUrl_uploadedLocalPhotoFile ==
>>>>>>> master
                                                            '') {
                                                      return Container(
                                                        width: 120.0,
                                                        height: 120.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.asset(
                                                          'assets/images/disicheck-asset-default-image.jpg',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      );
                                                    } else {
                                                      return Container(
                                                        width: 120.0,
                                                        height: 120.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          _model
                                                              .uploadedFileUrl_uploadedLocalPhotoFile,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Container(
                                                      width: 32.0,
                                                      height: 32.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 7.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: GestureDetector(
                                                        onTapUp:
                                                            (details) async {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            storageFolderPath:
                                                                'disicheck_all_media',
                                                            maxWidth: 130.00,
                                                            maxHeight: 130.00,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadedLocalPhotoFile =
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
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
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
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              _model.isDataUploading_uploadedLocalPhotoFile =
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
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadedLocalPhotoFile =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadedLocalPhotoFile =
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
                                                        child: Icon(
                                                          Icons
                                                              .add_a_photo_rounded,
                                                          color:
                                                              Color(0xFF466FFF),
                                                          size: 22.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Sube una fotografía \npara identificar el activo',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
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
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        32.0, 0.0, 32.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        wrapWithModel(
                                          model: _model.moNameModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: InputElementWidget(
                                            inputLabel: FFAppState()
                                                        .isIndividualTool ==
                                                    true
                                                ? 'Nombre del Activo'
                                                : 'Ingresa el nombre del grupo de herramientas.',
                                            inputHint:
                                                FFAppState().isIndividualTool ==
                                                        true
                                                    ? 'Taladro'
                                                    : 'Grupo de herramientas 1',
                                            capitalized: true,
                                          ),
                                        ),
                                        if (_model.categoryDropdownValue ==
                                            MoCategories.HERRAMIENTAS.name)
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 350.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      Text(
                                                        '¿Herramienta Individual o Grupo de Herramientas?',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Theme(
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
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
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
                                                                      .checkboxValue1 ??=
                                                                  FFAppState()
                                                                          .isIndividualTool ==
                                                                      true,
                                                              onChanged: (FFAppState()
                                                                          .isIndividualTool ==
                                                                      false)
                                                                  ? null
                                                                  : (newValue) async {
                                                                      safeSetState(() =>
                                                                          _model.checkboxValue1 =
                                                                              newValue!);
                                                                      if (newValue!) {
                                                                        FFAppState().isIndividualTool =
                                                                            true;
                                                                        _model.updatePage(
                                                                            () {});
                                                                      } else {
                                                                        FFAppState().isIndividualTool =
                                                                            false;
                                                                        _model.updatePage(
                                                                            () {});
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
                                                              checkColor: (FFAppState()
                                                                          .isIndividualTool ==
                                                                      false)
                                                                  ? null
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Individual',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Theme(
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
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
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
                                                                      .checkboxValue2 ??=
                                                                  FFAppState()
                                                                          .isIndividualTool ==
                                                                      false,
                                                              onChanged: (FFAppState()
                                                                          .isIndividualTool ==
                                                                      true)
                                                                  ? null
                                                                  : (newValue) async {
                                                                      safeSetState(() =>
                                                                          _model.checkboxValue2 =
                                                                              newValue!);
                                                                      if (newValue!) {
                                                                        FFAppState().isIndividualTool =
                                                                            false;
                                                                        _model.updatePage(
                                                                            () {});
                                                                      } else {
                                                                        FFAppState().isIndividualTool =
                                                                            true;
                                                                        _model.updatePage(
                                                                            () {});
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
                                                              checkColor: (FFAppState()
                                                                          .isIndividualTool ==
                                                                      true)
                                                                  ? null
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Grupo de herramientas',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 8.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        if (FFAppState().isIndividualTool ==
                                            false)
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 350.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      Text(
                                                        'Ingresa las herramientas del grupo',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .toolsGroupTextController,
                                                          focusNode: _model
                                                              .toolsGroupFocusNode,
                                                          autofocus: false,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .none,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelMediumIsCustom,
                                                                    ),
                                                            hintText:
                                                                'Destornillador, tornillos, llaves, etc',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
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
                                                                          12.0),
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
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
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
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                          maxLines: null,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          validator: _model
                                                              .toolsGroupTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            if (!isAndroid &&
                                                                !isiOS)
                                                              TextInputFormatter
                                                                  .withFunction(
                                                                      (oldValue,
                                                                          newValue) {
                                                                return TextEditingValue(
                                                                  selection:
                                                                      newValue
                                                                          .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                          TextCapitalization
                                                                              .none),
                                                                );
                                                              }),
                                                          ],
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 8.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                constraints: BoxConstraints(
                                                  maxWidth: 350.0,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Text(
                                                      'Cédula de quien registra',
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
                                                    ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .registrantDniTextController,
                                                        focusNode: _model
                                                            .registrantDniFocusNode,
                                                        autofocus: false,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .none,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelMediumIsCustom,
                                                                  ),
                                                          hintText:
                                                              '1234567890',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
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
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .tertiary,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        maxLines: null,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        validator: _model
                                                            .registrantDniTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter
                                                                .withFunction(
                                                                    (oldValue,
                                                                        newValue) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                        TextCapitalization
                                                                            .none),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Categoría',
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
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .categoryDropdownValueController ??=
                                                  FormFieldController<String>(
                                                _model.categoryDropdownValue ??=
                                                    '',
                                              ),
                                              options: List<String>.from(
                                                  MoCategories.values
                                                      .map((e) => e.name)
                                                      .toList()),
                                              optionLabels: [
                                                'EQUIPOS Y MÁQUINAS',
                                                'HERRAMIENTAS',
                                                'INFRAESTRUCTURA',
                                                'INSTRUMENTOS'
                                              ],
                                              onChanged: (val) async {
                                                safeSetState(() => _model
                                                        .categoryDropdownValue =
                                                    val);
                                                _model.moSelectedCategory =
                                                    _model
                                                        .categoryDropdownValue;
                                                safeSetState(() {});
                                              },
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 40.0,
                                              textStyle:
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
                                              hintText:
                                                  'Selecciona su categoría',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Builder(
                                              builder: (context) {
                                                if (FFAppState()
                                                        .authenticatedRole ==
                                                    1) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Proyecto',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .projectAssignedValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.projectAssignedValue ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            createAssetPageProjectsRowList
                                                                .map(
                                                                    (e) => e.id)
                                                                .toList()),
                                                        optionLabels:
                                                            createAssetPageProjectsRowList
                                                                .map((e) =>
                                                                    e.name)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.projectAssignedValue =
                                                                    val),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText:
                                                            'Vincula un proyecto',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 8.0)),
                                                  );
                                                } else {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Proyecto',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'El activo será creado para el proyecto actual.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 8.0)),
                                                  );
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nivel de criticidad (alta, media o baja)',
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
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .criticalityLevelTextController,
                                                focusNode: _model
                                                    .criticalityLevelFocusNode,
                                                autofocus: false,
                                                textCapitalization:
                                                    TextCapitalization.none,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            color: Colors.black,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                  hintText: 'Alto',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary,
                                                ),
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
                                                maxLines: null,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .criticalityLevelTextControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  if (!isAndroid && !isiOS)
                                                    TextInputFormatter
                                                        .withFunction((oldValue,
                                                            newValue) {
                                                      return TextEditingValue(
                                                        selection:
                                                            newValue.selection,
                                                        text: newValue.text
                                                            .toCapitalization(
                                                                TextCapitalization
                                                                    .none),
                                                      );
                                                    }),
                                                ],
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Vida útil (años)',
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
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .serviceLifeTextController,
                                                focusNode:
                                                    _model.serviceLifeFocusNode,
                                                autofocus: false,
                                                textCapitalization:
                                                    TextCapitalization.none,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            color: Colors.black,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                  hintText: '1',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary,
                                                ),
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
                                                maxLines: null,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .serviceLifeTextControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  if (!isAndroid && !isiOS)
                                                    TextInputFormatter
                                                        .withFunction((oldValue,
                                                            newValue) {
                                                      return TextEditingValue(
                                                        selection:
                                                            newValue.selection,
                                                        text: newValue.text
                                                            .toCapitalization(
                                                                TextCapitalization
                                                                    .none),
                                                      );
                                                    }),
                                                ],
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Tarea Crítica en la cual se utiliza',
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
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .criticalTaskPerformedValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options:
                                                  FFAppState().criticalTasks,
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .criticalTaskPerformedValue =
                                                      val),
                                              width: 350.0,
                                              height: 40.0,
                                              textStyle:
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
                                              hintText: 'Selecciona la tarea',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 42.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model.datePicked
                                                              ?.toString(),
                                                          'Fecha de adquisición',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 50.0,
                                              height: 42.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet<
                                                          bool>(
                                                      context: context,
                                                      builder: (context) {
                                                        final _datePickedCupertinoTheme =
                                                            CupertinoTheme.of(
                                                                context);
                                                        return ScrollConfiguration(
                                                          behavior:
                                                              const MaterialScrollBehavior()
                                                                  .copyWith(
                                                            dragDevices: {
                                                              PointerDeviceKind
                                                                  .mouse,
                                                              PointerDeviceKind
                                                                  .touch,
                                                              PointerDeviceKind
                                                                  .stylus,
                                                              PointerDeviceKind
                                                                  .unknown
                                                            },
                                                          ),
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height /
                                                                3,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            child:
                                                                CupertinoTheme(
                                                              data:
                                                                  _datePickedCupertinoTheme
                                                                      .copyWith(
                                                                textTheme:
                                                                    _datePickedCupertinoTheme
                                                                        .textTheme
                                                                        .copyWith(
                                                                  dateTimePickerTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                              child:
                                                                  CupertinoDatePicker(
                                                                mode:
                                                                    CupertinoDatePickerMode
                                                                        .date,
                                                                minimumDate: (DateTime
                                                                        .fromMicrosecondsSinceEpoch(
                                                                            -315601200000000) ??
                                                                    DateTime(
                                                                        1900)),
                                                                initialDateTime:
                                                                    (_model.datePicked ??
                                                                        DateTime
                                                                            .now()),
                                                                maximumDate: (DateTime
                                                                        .fromMicrosecondsSinceEpoch(
                                                                            1769662800000000) ??
                                                                    DateTime(
                                                                        2050)),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                use24hFormat:
                                                                    false,
                                                                onDateTimeChanged:
                                                                    (newDateTime) =>
                                                                        safeSetState(
                                                                            () {
                                                                  _model.datePicked =
                                                                      newDateTime;
                                                                }),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: Icon(
                                                  Icons.edit_calendar,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 15.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Builder(
                                              builder: (context) {
                                                if (_model
                                                        .categoryDropdownValue ==
                                                    MoCategories.INFRA.name) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .infrastructureFormModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            InfrastructureFormWidget(),
                                                      ),
                                                    ],
                                                  );
                                                } else if (_model
                                                        .categoryDropdownValue ==
                                                    MoCategories
                                                        .HERRAMIENTAS.name) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .toolsFormModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            ToolsFormWidget(),
                                                      ),
                                                    ],
                                                  );
                                                } else if (_model
                                                        .categoryDropdownValue ==
                                                    MoCategories
                                                        .EQUIPOS_MAQUINAS
                                                        .name) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .equipmentMachinesFormModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            EquipmentMachinesFormWidget(),
                                                      ),
                                                    ],
                                                  );
                                                } else if (_model
                                                        .categoryDropdownValue ==
                                                    MoCategories
                                                        .INSTRUMENTOS.name) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .measuringToolFormModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            MeasuringToolFormWidget(),
                                                      ),
                                                    ],
                                                  );
                                                } else {
                                                  return Container(
                                                    width: 1.0,
                                                    height: 1.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    decoration: BoxDecoration(),
                                    child: Visibility(
                                      visible:
                                          _model.moSelectedCategory != null &&
                                              _model.moSelectedCategory != '',
                                      child: Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 20.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .principalActionButtonOrangeModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                PrincipalActionButtonOrangeWidget(
                                              buttonText: 'Crear Activo',
                                              requiredAction: () async {
                                                if (_model.moSelectedCategory ==
                                                    MoCategories.INFRA.name) {
<<<<<<< HEAD
                                                  if ((_model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController
=======
                                                  if ((_model.registrantDniTextController.text == null || _model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController.text ==
                                                              null ||
                                                          _model.criticalityLevelTextController
>>>>>>> master
                                                                  .text ==
                                                              '') ||
                                                      (_model
                                                                  .serviceLifeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .serviceLifeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model.criticalTaskPerformedValue ==
                                                              null ||
                                                          _model.criticalTaskPerformedValue ==
                                                              '') ||
                                                      (_model
                                                              .datePicked ==
                                                          null) ||
                                                      (_model
                                                                  .infrastructureFormModel
                                                                  .infraIdentifierCodeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .infrastructureFormModel
                                                                  .infraIdentifierCodeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model
                                                                  .infrastructureFormModel
                                                                  .infraSerialCodeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .infrastructureFormModel
                                                                  .infraSerialCodeTextController
                                                                  .text ==
>>>>>>> master
                                                              '')) {
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
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Campos Faltantes',
                                                              alertDescription:
                                                                  'Recuerda diligenciar el mínimo de campos requeridos: nombre, código, serial, proyecto, categoría, nivel de criticidad, vida útil, cédula, tarea donde se emplea y fecha adquisición.',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    return;
                                                  } else {
                                                    // Create asset for: INFRA
                                                    await MaintenanceObjectsTable()
                                                        .insert({
                                                      'name': _model
                                                          .moNameModel
                                                          .assetNameTextController
                                                          .text,
                                                      'category': MoCategories
                                                          .INFRA.name,
                                                      'current_state':
                                                          MttoFinalStatus
                                                              .OPERATIVO.name,
                                                      'code': _model
                                                          .infrastructureFormModel
                                                          .infraIdentifierCodeTextController
                                                          .text,
                                                      'critical_task_performed':
                                                          _model
                                                              .criticalTaskPerformedValue,
                                                      'assigned_project_id': FFAppState()
                                                                  .authenticatedRole ==
                                                              1
                                                          ? _model
                                                              .projectAssignedValue
                                                          : FFAppState()
                                                              .currentProject,
                                                      'is_active': true,
                                                      'adquisition_date':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              _model
                                                                  .datePicked),
                                                      'entry_date': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'created_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'updated_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'mo_image': _model
                                                          .uploadedFileUrl_uploadedLocalPhotoFile,
                                                      'registrant_dni':
                                                          double.tryParse(_model
                                                              .registrantDniTextController
                                                              .text),
                                                      'metadata':
                                                          <String, dynamic>{
                                                        'Código identificador': _model
                                                            .infrastructureFormModel
                                                            .infraIdentifierCodeTextController
                                                            .text,
                                                        'Ubicación': _model
                                                            .infrastructureFormModel
                                                            .infraLocationTextController
                                                            .text,
                                                        'Cantidad de edificaciones': _model
                                                            .infrastructureFormModel
                                                            .infraTotalBuildingsTextController
                                                            .text,
                                                        'Número de pisos y tipo de cubierta': _model
                                                            .infrastructureFormModel
                                                            .infraNumberOfFloorsAndTypeOfRoofTextController
                                                            .text,
                                                        'Áreas disponibles': _model
                                                            .infrastructureFormModel
                                                            .infraAvailableAreasTextController
                                                            .text,
                                                        'Año de construcción': _model
                                                            .infrastructureFormModel
                                                            .infraYearBuiltTextController
                                                            .text,
                                                        'Uso de la infraestrucura': _model
                                                            .infrastructureFormModel
                                                            .infraUseTextController
                                                            .text,
                                                        'Condiciones de la infraestructura': _model
                                                            .infrastructureFormModel
                                                            .infraConditionsTextController
                                                            .text,
                                                        'Tipo': _model
                                                            .infrastructureFormModel
                                                            .infraStructureTypeValue,
                                                        'Limpieza recomendada': _model
                                                            .infrastructureFormModel
                                                            .infraRecomCleaningTextController
                                                            .text,
                                                        'Mtto Recomedado': _model
                                                            .infrastructureFormModel
                                                            .infraRecomMainttTextController
                                                            .text,
                                                        'Seguridad recomendada': _model
                                                            .infrastructureFormModel
                                                            .infraRecomSecurityTextController
                                                            .text,
                                                        'Observaciones': _model
                                                            .infrastructureFormModel
                                                            .infraObservationsTextController
                                                            .text,
                                                        'Tipo de administración':
                                                            FFAppState()
                                                                .propertyAdminType,
                                                      },
                                                      'criticality_level': _model
                                                          .criticalityLevelTextController
                                                          .text,
                                                      'service_life':
                                                          double.tryParse(_model
                                                              .serviceLifeTextController
                                                              .text),
                                                      'ref': _model
                                                          .infrastructureFormModel
                                                          .infraSerialCodeTextController
                                                          .text,
                                                    });
                                                  }
                                                } else if (_model
                                                        .moSelectedCategory ==
                                                    MoCategories
                                                        .HERRAMIENTAS.name) {
<<<<<<< HEAD
                                                  if ((_model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController
=======
                                                  if ((_model.registrantDniTextController.text == null || _model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController.text ==
                                                              null ||
                                                          _model.criticalityLevelTextController
>>>>>>> master
                                                                  .text ==
                                                              '') ||
                                                      (_model
                                                                  .serviceLifeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .serviceLifeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model.criticalTaskPerformedValue ==
                                                              null ||
                                                          _model.criticalTaskPerformedValue ==
                                                              '') ||
                                                      (_model
                                                              .datePicked ==
                                                          null) ||
                                                      (_model
                                                                  .toolsFormModel
                                                                  .toolsIdentifierCodeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .toolsFormModel
                                                                  .toolsIdentifierCodeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model
                                                                  .toolsFormModel
                                                                  .toolsSerialCodeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .toolsFormModel
                                                                  .toolsSerialCodeTextController
                                                                  .text ==
>>>>>>> master
                                                              '')) {
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
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Campos Faltantes',
                                                              alertDescription:
                                                                  'Recuerda diligenciar el mínimo de campos requeridos: si es una sola herramienta o grupo, nombre de la o el grupo de herramientas, herramientas dentro del grupo (si lo es), código, serial, proyecto, categoría, nivel de criticidad, vida útil, cédula, tarea donde se emplea y fecha adquisición.',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    return;
                                                  } else {
                                                    // Create Asset for: TOOLS
                                                    await MaintenanceObjectsTable()
                                                        .insert({
                                                      'name': _model
                                                          .moNameModel
                                                          .assetNameTextController
                                                          .text,
                                                      'code': _model
                                                          .toolsFormModel
                                                          .toolsIdentifierCodeTextController
                                                          .text,
                                                      'category': MoCategories
                                                          .HERRAMIENTAS.name,
                                                      'current_state':
                                                          MttoFinalStatus
                                                              .OPERATIVO.name,
                                                      'critical_task_performed':
                                                          _model
                                                              .criticalTaskPerformedValue,
                                                      'assigned_project_id': FFAppState()
                                                                  .authenticatedRole ==
                                                              1
                                                          ? _model
                                                              .projectAssignedValue
                                                          : FFAppState()
                                                              .currentProject,
                                                      'is_active': true,
                                                      'adquisition_date':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              _model
                                                                  .datePicked),
                                                      'entry_date': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'updated_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'created_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'registrant_dni':
                                                          double.tryParse(_model
                                                              .registrantDniTextController
                                                              .text),
                                                      'mo_image': _model
                                                          .uploadedFileUrl_uploadedLocalPhotoFile,
                                                      'metadata':
                                                          <String, dynamic>{
                                                        'Ubicación de las herramientas':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxLocationTextController
                                                                .text,
                                                        'Número de herramientas':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxNumberOfToolsTextController
                                                                .text,
                                                        'Marca o Fabricante': _model
                                                            .toolsFormModel
                                                            .toolsBrandTextController
                                                            .text,
                                                        'Año de fabricación': _model
                                                            .toolsFormModel
                                                            .toolsBoxElaborationYearTextController
                                                            .text,
                                                        'Tipo o función': _model
                                                            .toolsFormModel
                                                            .toolsBoxTypeValue,
                                                        'Fuente de energía': _model
                                                            .toolsFormModel
                                                            .toolsBoxCASourceTextController
                                                            .text,
                                                        'Voltage': _model
                                                            .toolsFormModel
                                                            .toolsBoxVoltageTextController
                                                            .text,
                                                        'Corriente A': _model
                                                            .toolsFormModel
                                                            .toolsBoxStreamATextController
                                                            .text,
                                                        'Peso': _model
                                                            .toolsFormModel
                                                            .toolsBoxWeightTextController
                                                            .text,
                                                        'Número de fases': _model
                                                            .toolsFormModel
                                                            .toolsBoxNumberOfPhasesTextController
                                                            .text,
                                                        'Potencia': _model
                                                            .toolsFormModel
                                                            .toolsBoxPowerTextController
                                                            .text,
                                                        'Temperatura de operación':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxTemperatureTextController
                                                                .text,
                                                        'Velocidad de operación':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxSpeedTextController
                                                                .text,
                                                        'Manteninimiento recomendado':
                                                            _model
                                                                .toolsFormModel
                                                                .infraRecomMainttTextController
                                                                .text,
                                                        'Otras condiciones de operación':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxOtherConditionsTextController
                                                                .text,
                                                        'Recomendaciones de seguridad':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxSecurityTextController
                                                                .text,
                                                        'Tipo de lubricación':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxLubricationTextController
                                                                .text,
                                                        'Limpieza recomendada':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxRecomCleaningTextController
                                                                .text,
                                                        'Mtto. preventivo recomendado':
                                                            _model
                                                                .toolsFormModel
                                                                .toolsBoxRecomPreventiveMttoTextController
                                                                .text,
                                                        'Observaciones': _model
                                                            .toolsFormModel
                                                            .toolsBoxObservationsTextController
                                                            .text,
                                                      },
                                                      'criticality_level': _model
                                                          .criticalityLevelTextController
                                                          .text,
                                                      'service_life':
                                                          double.tryParse(_model
                                                              .serviceLifeTextController
                                                              .text),
                                                      'ref': _model
                                                          .toolsFormModel
                                                          .toolsSerialCodeTextController
                                                          .text,
                                                      'tools_group': _model
                                                          .toolsGroupTextController
                                                          .text,
                                                    });
                                                  }
                                                } else if (_model
                                                        .moSelectedCategory ==
                                                    MoCategories
                                                        .EQUIPOS_MAQUINAS
                                                        .name) {
<<<<<<< HEAD
                                                  if ((_model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController
=======
                                                  if ((_model.registrantDniTextController.text == null || _model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController.text ==
                                                              null ||
                                                          _model.criticalityLevelTextController
>>>>>>> master
                                                                  .text ==
                                                              '') ||
                                                      (_model
                                                                  .serviceLifeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .serviceLifeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model.criticalTaskPerformedValue ==
                                                              null ||
                                                          _model.criticalTaskPerformedValue ==
                                                              '') ||
                                                      (_model
                                                              .datePicked ==
                                                          null) ||
                                                      (_model
                                                                  .equipmentMachinesFormModel
                                                                  .equipmentMachineIdentifierCodeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .equipmentMachinesFormModel
                                                                  .equipmentMachineIdentifierCodeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model
                                                                  .equipmentMachinesFormModel
                                                                  .equipmentMachineSerialCodeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .equipmentMachinesFormModel
                                                                  .equipmentMachineSerialCodeTextController
                                                                  .text ==
>>>>>>> master
                                                              '')) {
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
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Campos Faltantes',
                                                              alertDescription:
                                                                  'Recuerda diligenciar el mínimo de campos requeridos: si es una sola herramienta o grupo, nombre de la o el grupo de herramientas, herramientas dentro del grupo de herramientas (si lo es), código, serial, proyecto, categoría, nivel de criticidad, vida útil, cédula, tarea donde se emplea y fecha adquisición.',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    return;
                                                  } else {
                                                    // Create Asset for: MACHINES
                                                    await MaintenanceObjectsTable()
                                                        .insert({
                                                      'name': _model
                                                          .moNameModel
                                                          .assetNameTextController
                                                          .text,
                                                      'code': _model
                                                          .equipmentMachinesFormModel
                                                          .equipmentMachineIdentifierCodeTextController
                                                          .text,
                                                      'category': MoCategories
                                                          .EQUIPOS_MAQUINAS
                                                          .name,
                                                      'current_state':
                                                          MttoFinalStatus
                                                              .OPERATIVO.name,
                                                      'critical_task_performed':
                                                          _model
                                                              .criticalTaskPerformedValue,
                                                      'assigned_project_id': FFAppState()
                                                                  .authenticatedRole ==
                                                              1
                                                          ? _model
                                                              .projectAssignedValue
                                                          : FFAppState()
                                                              .currentProject,
                                                      'is_active': true,
                                                      'adquisition_date':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              _model
                                                                  .datePicked),
                                                      'entry_date': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'updated_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'created_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'registrant_dni':
                                                          double.tryParse(_model
                                                              .registrantDniTextController
                                                              .text),
                                                      'mo_image': _model
                                                          .uploadedFileUrl_uploadedLocalPhotoFile,
                                                      'metadata':
                                                          <String, dynamic>{
                                                        'Código identificador (PLACA, SERIAL)': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineIdentifierCodeTextController
                                                            .text,
                                                        'Ubicación': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineLocationTextController
                                                            .text,
                                                        'Número de máquinas o equipos': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineNumberTextController
                                                            .text,
                                                        'Marca': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineBrandTextController
                                                            .text,
                                                        'Año de frabricación': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineYearBuiltTextController
                                                            .text,
                                                        'Función o funciones': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineFunctionTextController
                                                            .text,
                                                        'Fuente de energía': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineCASourceTextController
                                                            .text,
                                                        'Número de unidades motoras': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineNumberMotorUnitsTextController
                                                            .text,
                                                        'Capacidad de operación': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineNumberOperationCapacityTextController
                                                            .text,
                                                        'Peso': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineNumberWeightTextController
                                                            .text,
                                                        'Número de fases de la conexión': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineNumberOfPhasesTextController
                                                            .text,
                                                        'Temperatura de operación': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineTemperatureTextController
                                                            .text,
                                                        'Voltage utilizado': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineUsedVoltageTextController
                                                            .text,
                                                        'Corriente A utilizada': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineCAUsedTextController
                                                            .text,
                                                        'Presión de operacion': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachinePressionTextController
                                                            .text,
                                                        'Otras condiciones de operación': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineOtherConditionsTextController
                                                            .text,
                                                        'Accesorios o consumibles': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineOtherAccesoriesTextController
                                                            .text,
                                                        'Lubricación': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineLubricationTextController
                                                            .text,
                                                        'Mtto. preventivo recomendado': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineRecomPreventiveMttoTextController
                                                            .text,
                                                        'Observaciones': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineObservationsTextController
                                                            .text,
                                                        'Recomendaciones de seguridad para el uso': _model
                                                            .equipmentMachinesFormModel
                                                            .equipmentMachineSecurityRecomsTextController
                                                            .text,
                                                      },
                                                      'criticality_level': _model
                                                          .criticalityLevelTextController
                                                          .text,
                                                      'service_life':
                                                          double.tryParse(_model
                                                              .serviceLifeTextController
                                                              .text),
                                                      'ref': _model
                                                          .equipmentMachinesFormModel
                                                          .equipmentMachineSerialCodeTextController
                                                          .text,
                                                    });
                                                  }
                                                } else if (_model
                                                        .moSelectedCategory ==
                                                    MoCategories
                                                        .INSTRUMENTOS.name) {
<<<<<<< HEAD
                                                  if ((_model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController
=======
                                                  if ((_model.registrantDniTextController.text == null || _model.registrantDniTextController.text == '') ||
                                                      (_model.categoryDropdownValue == null ||
                                                          _model.categoryDropdownValue ==
                                                              '') ||
                                                      (_model.criticalityLevelTextController.text ==
                                                              null ||
                                                          _model.criticalityLevelTextController
>>>>>>> master
                                                                  .text ==
                                                              '') ||
                                                      (_model
                                                                  .serviceLifeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .serviceLifeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model.criticalTaskPerformedValue ==
                                                              null ||
                                                          _model.criticalTaskPerformedValue ==
                                                              '') ||
                                                      (_model
                                                              .datePicked ==
                                                          null) ||
                                                      (_model
                                                                  .measuringToolFormModel
                                                                  .measuringToolCodeTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .measuringToolFormModel
                                                                  .measuringToolCodeTextController
                                                                  .text ==
>>>>>>> master
                                                              '') ||
                                                      (_model
                                                                  .measuringToolFormModel
                                                                  .measuringToolSerialTextController
                                                                  .text ==
<<<<<<< HEAD
=======
                                                              null ||
                                                          _model
                                                                  .measuringToolFormModel
                                                                  .measuringToolSerialTextController
                                                                  .text ==
>>>>>>> master
                                                              '')) {
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
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                AlertModalWidget(
                                                              alertTitle:
                                                                  'Campos Faltantes',
                                                              alertDescription:
                                                                  'Recuerda diligenciar el mínimo de campos requeridos: si es una sola herramienta o grupo, nombre de la o el grupo de herramientas, herramientas dentro del grupo de herramientas (si lo es), código, serial, proyecto, categoría, nivel de criticidad, vida útil, cédula, tarea donde se emplea y fecha adquisición.',
                                                              setCustomAction:
                                                                  () async {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    return;
                                                  } else {
                                                    // Create Asset for: INSTRUMENTS
                                                    await MaintenanceObjectsTable()
                                                        .insert({
                                                      'name': _model
                                                          .moNameModel
                                                          .assetNameTextController
                                                          .text,
                                                      'code': _model
                                                          .measuringToolFormModel
                                                          .measuringToolCodeTextController
                                                          .text,
                                                      'category': MoCategories
                                                          .INSTRUMENTOS.name,
                                                      'current_state':
                                                          MttoFinalStatus
                                                              .OPERATIVO.name,
                                                      'critical_task_performed':
                                                          _model
                                                              .criticalTaskPerformedValue,
                                                      'assigned_project_id': FFAppState()
                                                                  .authenticatedRole ==
                                                              1
                                                          ? _model
                                                              .projectAssignedValue
                                                          : FFAppState()
                                                              .currentProject,
                                                      'is_active': true,
                                                      'adquisition_date':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              _model
                                                                  .datePicked),
                                                      'entry_date': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'updated_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'created_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'registrant_dni':
                                                          double.tryParse(_model
                                                              .registrantDniTextController
                                                              .text),
                                                      'mo_image': _model
                                                          .uploadedFileUrl_uploadedLocalPhotoFile,
                                                      'metadata':
                                                          <String, dynamic>{
                                                        'Ubicación': _model
                                                            .measuringToolFormModel
                                                            .measuringToolLocationTextController
                                                            .text,
                                                        'Número de instrumentos': _model
                                                            .measuringToolFormModel
                                                            .measuringToolQtyTextController
                                                            .text,
                                                        'Marca, modelo o fabricante': _model
                                                            .measuringToolFormModel
                                                            .measuringToolBrandTextController
                                                            .text,
                                                        'Año de fabricación': _model
                                                            .measuringToolFormModel
                                                            .measuringToolElaborationYearTextController
                                                            .text,
                                                        'Variable a medir': _model
                                                            .measuringToolFormModel
                                                            .measuringToolMeasuredVariableTextController
                                                            .text,
                                                        'Rango de medida': _model
                                                            .measuringToolFormModel
                                                            .measuringToolMeasuringRangeTextController
                                                            .text,
                                                        'Precisión requerida': _model
                                                            .measuringToolFormModel
                                                            .measuringToolRequiredPrecisionTextController
                                                            .text,
                                                        'Tipo de control a implementar':
                                                            <String,
                                                                List<String>?>{
                                                          'controlType':
                                                              FFAppState()
                                                                  .controlTypeToImplement,
                                                        },
                                                        'Frecuencia de control': _model
                                                            .measuringToolFormModel
                                                            .measuringToolControlFrecuencyValue,
                                                        'Otras condiciones de operación': _model
                                                            .measuringToolFormModel
                                                            .measuringToolOtherConditionsTextController
                                                            .text,
                                                        'Limpieza recomendada': _model
                                                            .measuringToolFormModel
                                                            .measuringToolRecomCleaningTextController
                                                            .text,
                                                        'Mtto. preventivo recomendado': _model
                                                            .measuringToolFormModel
                                                            .measuringToolPreventiveMttoTextController
                                                            .text,
                                                        'Recomendaciones de seguridad': _model
                                                            .measuringToolFormModel
                                                            .measuringToolSecurityRecomsTextController
                                                            .text,
                                                        'Observaciones': _model
                                                            .measuringToolFormModel
                                                            .measuringToolObservationsTextController
                                                            .text,
                                                      },
                                                      'criticality_level': _model
                                                          .criticalityLevelTextController
                                                          .text,
                                                      'service_life':
                                                          double.tryParse(_model
                                                              .serviceLifeTextController
                                                              .text),
                                                      'ref': _model
                                                          .measuringToolFormModel
                                                          .measuringToolSerialTextController
                                                          .text,
                                                    });
                                                  }
                                                } else {
                                                  return;
                                                }

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
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(
                                                                  dialogContext)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child:
                                                            ConfirmationModalWidget(
                                                          confirmationTitle:
                                                              'Activo Creado',
                                                          confirmationDescription:
                                                              'El activo fue credo con éxito.',
                                                          setCustomAction:
                                                              () async {
                                                            context.pushNamed(
                                                              AssetsInventoryPageWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'pageComingFrom':
                                                                    serializeParam(
                                                                  NavbarNavigation
                                                                      .HOME_PAGE,
                                                                  ParamType
                                                                      .Enum,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
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
                ),
              ),
            ));
      },
    );
  }
}
