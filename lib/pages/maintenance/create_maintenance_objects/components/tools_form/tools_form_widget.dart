import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
<<<<<<< HEAD
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
=======
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
>>>>>>> master
import 'package:provider/provider.dart';
import 'tools_form_model.dart';
export 'tools_form_model.dart';

class ToolsFormWidget extends StatefulWidget {
  const ToolsFormWidget({super.key});

  @override
  State<ToolsFormWidget> createState() => _ToolsFormWidgetState();
}

class _ToolsFormWidgetState extends State<ToolsFormWidget> {
  late ToolsFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToolsFormModel());

    _model.toolsBoxLocationTextController ??= TextEditingController();
    _model.toolsBoxLocationFocusNode ??= FocusNode();

    _model.toolsIdentifierCodeTextController ??= TextEditingController();
    _model.toolsIdentifierCodeFocusNode ??= FocusNode();

    _model.toolsSerialCodeTextController ??= TextEditingController();
    _model.toolsSerialCodeFocusNode ??= FocusNode();

    _model.toolsBoxNumberOfToolsTextController ??= TextEditingController();
    _model.toolsBoxNumberOfToolsFocusNode ??= FocusNode();

    _model.toolsBrandTextController ??= TextEditingController();
    _model.toolsBrandFocusNode ??= FocusNode();

    _model.toolsBoxElaborationYearTextController ??= TextEditingController();
    _model.toolsBoxElaborationYearFocusNode ??= FocusNode();

    _model.toolsBoxCASourceTextController ??= TextEditingController();
    _model.toolsBoxCASourceFocusNode ??= FocusNode();

    _model.toolsBoxVoltageTextController ??= TextEditingController();
    _model.toolsBoxVoltageFocusNode ??= FocusNode();

    _model.toolsBoxStreamATextController ??= TextEditingController();
    _model.toolsBoxStreamAFocusNode ??= FocusNode();

    _model.toolsBoxWeightTextController ??= TextEditingController();
    _model.toolsBoxWeightFocusNode ??= FocusNode();

    _model.toolsBoxNumberOfPhasesTextController ??= TextEditingController();
    _model.toolsBoxNumberOfPhasesFocusNode ??= FocusNode();

    _model.toolsBoxPowerTextController ??= TextEditingController();
    _model.toolsBoxPowerFocusNode ??= FocusNode();

    _model.toolsBoxTemperatureTextController ??= TextEditingController();
    _model.toolsBoxTemperatureFocusNode ??= FocusNode();

    _model.toolsBoxSpeedTextController ??= TextEditingController();
    _model.toolsBoxSpeedFocusNode ??= FocusNode();

    _model.infraRecomMainttTextController ??= TextEditingController();
    _model.infraRecomMainttFocusNode ??= FocusNode();

    _model.toolsBoxOtherConditionsTextController ??= TextEditingController();
    _model.toolsBoxOtherConditionsFocusNode ??= FocusNode();

    _model.toolsBoxSecurityTextController ??= TextEditingController();
    _model.toolsBoxSecurityFocusNode ??= FocusNode();

    _model.toolsBoxLubricationTextController ??= TextEditingController();
    _model.toolsBoxLubricationFocusNode ??= FocusNode();

    _model.toolsBoxRecomCleaningTextController ??= TextEditingController();
    _model.toolsBoxRecomCleaningFocusNode ??= FocusNode();

    _model.toolsBoxRecomPreventiveMttoTextController ??=
        TextEditingController();
    _model.toolsBoxRecomPreventiveMttoFocusNode ??= FocusNode();

    _model.toolsBoxSecurityRecomsTextController ??= TextEditingController();
    _model.toolsBoxSecurityRecomsFocusNode ??= FocusNode();

    _model.toolsBoxObservationsTextController ??= TextEditingController();
    _model.toolsBoxObservationsFocusNode ??= FocusNode();

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

    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF8FAFE),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Ubicación de las Herramientas (ciudad, cabecera municipal o municipio)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxLocationTextController,
                            focusNode: _model.toolsBoxLocationFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxLocationTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxLocationTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .toolsBoxLocationTextController.text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .toolsBoxLocationTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación': _model
                                        .toolsBoxLocationTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Bogotá, Cundinamarca',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: null,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxLocationTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Codigo',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsIdentifierCodeTextController,
                            focusNode: _model.toolsIdentifierCodeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsIdentifierCodeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsIdentifierCodeTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .toolsIdentifierCodeTextController
                                        .text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .toolsIdentifierCodeTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación': _model
                                        .toolsIdentifierCodeTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '1DD4XF4',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: null,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsIdentifierCodeTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Serial',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsSerialCodeTextController,
                            focusNode: _model.toolsSerialCodeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsSerialCodeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsSerialCodeTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .toolsSerialCodeTextController.text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .toolsSerialCodeTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación': _model
                                        .toolsSerialCodeTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '111EEE333',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: null,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsSerialCodeTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Cantidad de Herramientas',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxNumberOfToolsTextController,
                            focusNode: _model.toolsBoxNumberOfToolsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxNumberOfToolsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxNumberOfToolsTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Cantidad de Edificaciones': _model
                                          .toolsBoxNumberOfToolsTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Cantidad de Edificaciones': _model
                                        .toolsBoxNumberOfToolsTextController
                                        .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '5',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: null,
                            keyboardType: TextInputType.number,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxNumberOfToolsTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Marca o Fabricante',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBrandTextController,
                            focusNode: _model.toolsBrandFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBrandTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) =>
                                        _model.toolsBrandTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Número de Pisos y Tipo de Cubierta':
                                          _model.toolsBrandTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Número de Pisos y Tipo de Cubierta':
                                        _model.toolsBrandTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'BOSCH',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 3,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.toolsBrandTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Año de Fabricación de la Herramienta',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxElaborationYearTextController,
                            focusNode: _model.toolsBoxElaborationYearFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxElaborationYearTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxElaborationYearTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Año de Construcción': _model
                                          .toolsBoxElaborationYearTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Año de Construcción': _model
                                        .toolsBoxElaborationYearTextController
                                        .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '2005',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: null,
                            keyboardType: TextInputType.number,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxElaborationYearTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                  'Función-Tipo de las Herramientas',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.toolsBoxTypeValueController ??=
                      FormFieldController<String>(
                    _model.toolsBoxTypeValue ??= '',
                  ),
                  options: List<String>.from(FFAppState().toolsBoxType),
                  optionLabels: FFAppState().toolsBoxType,
                  onChanged: (val) async {
                    safeSetState(() => _model.toolsBoxTypeValue = val);
                    if (FFAppState()
                        .anyMoFormMetadata
                        .unique((e) => _model.toolsBoxTypeValue!)
                        .isNotEmpty) {
                      // Update item at index
                      FFAppState().updateAnyMoFormMetadataAtIndex(
                        FFAppState()
                            .anyMoFormMetadata
                            .where((e) =>
                                e ==
                                FFAppState().anyMoFormMetadata.elementAtOrNull(
                                    int.parse(_model
                                        .toolsBoxLocationTextController.text)))
                            .toList()
                            .firstOrNull!,
                        (_) => <String, dynamic>{
                          'Tipo de Estructura': _model.toolsBoxTypeValue,
                        },
                      );
                      FFAppState().update(() {});
                    } else {
                      // Add item data to the JSON list
                      FFAppState().addToAnyMoFormMetadata(<String, dynamic>{
                        'Tipo de Estructura': _model.toolsBoxTypeValue,
                      });
                      FFAppState().update(() {});
                    }
                  },
                  width: 350.0,
                  height: 40.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                  hintText: 'Selecciona su función',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).tertiary,
                  elevation: 2.0,
                  borderColor: Colors.transparent,
                  borderWidth: 0.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Fuente de Energía de la Herramienta',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxCASourceTextController,
                            focusNode: _model.toolsBoxCASourceFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxCASourceTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxCASourceTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Áreas Disponibles Según Uso': _model
                                          .toolsBoxCASourceTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Áreas Disponibles Según Uso': _model
                                        .toolsBoxCASourceTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'CA',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxCASourceTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Voltaje (V) de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxVoltageTextController,
                            focusNode: _model.toolsBoxVoltageFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxVoltageTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxVoltageTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Condiciones de Operación de la Infraestructura':
                                          _model.toolsBoxVoltageTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Condiciones de Operación de la Infraestructura':
                                        _model
                                            .toolsBoxVoltageTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '6.0',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: null,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxVoltageTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Corriente (A) de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxStreamATextController,
                            focusNode: _model.toolsBoxStreamAFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxStreamATextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxStreamATextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Limpieza Recomendada de la Estructura':
                                          _model.toolsBoxStreamATextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Limpieza Recomendada de la Estructura':
                                        _model
                                            .toolsBoxStreamATextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '0.0',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxStreamATextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Peso (Kg) de las Herramientas',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxWeightTextController,
                            focusNode: _model.toolsBoxWeightFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxWeightTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxWeightTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model.toolsBoxWeightTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Mantenimiento Preventivo Recomendado para la Estructura':
                                        _model
                                            .toolsBoxWeightTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '2.5 kg',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxWeightTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Número de Fases de la(s) Herramieta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxNumberOfPhasesTextController,
                            focusNode: _model.toolsBoxNumberOfPhasesFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxNumberOfPhasesTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxNumberOfPhasesTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .toolsBoxNumberOfPhasesTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Mantenimiento Preventivo Recomendado para la Estructura':
                                        _model
                                            .toolsBoxNumberOfPhasesTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '3',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxNumberOfPhasesTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Potencia de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxPowerTextController,
                            focusNode: _model.toolsBoxPowerFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxPowerTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) =>
                                        _model.toolsBoxPowerTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .toolsBoxPowerTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Mantenimiento Preventivo Recomendado para la Estructura':
                                        _model.toolsBoxPowerTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '3.5',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxPowerTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Temperatura de Operación (°C) de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxTemperatureTextController,
                            focusNode: _model.toolsBoxTemperatureFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxTemperatureTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxTemperatureTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .toolsBoxTemperatureTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Mantenimiento Preventivo Recomendado para la Estructura':
                                        _model.toolsBoxTemperatureTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '23°',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxTemperatureTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Velocidad de Operación de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxSpeedTextController,
                            focusNode: _model.toolsBoxSpeedFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxSpeedTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) =>
                                        _model.toolsBoxSpeedTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .toolsBoxSpeedTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Mantenimiento Preventivo Recomendado para la Estructura':
                                        _model.toolsBoxSpeedTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '5000 rpm',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxSpeedTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Presión de Operación de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.infraRecomMainttTextController,
                            focusNode: _model.infraRecomMainttFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraRecomMainttTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraRecomMainttTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model.infraRecomMainttTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Mantenimiento Preventivo Recomendado para la Estructura':
                                        _model.infraRecomMainttTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: '5000',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .infraRecomMainttTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Otras Condiciones de Operación de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxOtherConditionsTextController,
                            focusNode: _model.toolsBoxOtherConditionsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxOtherConditionsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxOtherConditionsTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .toolsBoxOtherConditionsTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Mantenimiento Preventivo Recomendado para la Estructura':
                                        _model
                                            .toolsBoxOtherConditionsTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Opera con',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxOtherConditionsTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Accesorios o Consumibles de la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.toolsBoxSecurityTextController,
                            focusNode: _model.toolsBoxSecurityFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxSecurityTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxSecurityTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model.toolsBoxSecurityTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Recomendaciones de Seguridad para la Infraestructura':
                                        _model.toolsBoxSecurityTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Seguro',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxSecurityTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Lubricación (si requiere)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxLubricationTextController,
                            focusNode: _model.toolsBoxLubricationFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxLubricationTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxLubricationTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .toolsBoxLubricationTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Recomendaciones de Seguridad para la Infraestructura':
                                        _model.toolsBoxLubricationTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Aceite de tipo...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxLubricationTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Limpieza recomendada',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxRecomCleaningTextController,
                            focusNode: _model.toolsBoxRecomCleaningFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxRecomCleaningTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxRecomCleaningTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .toolsBoxRecomCleaningTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Recomendaciones de Seguridad para la Infraestructura':
                                        _model
                                            .toolsBoxRecomCleaningTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Limpieza general',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxRecomCleaningTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Mantenimiento Preventivo Recomendado para la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model
                                .toolsBoxRecomPreventiveMttoTextController,
                            focusNode:
                                _model.toolsBoxRecomPreventiveMttoFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxRecomPreventiveMttoTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxRecomPreventiveMttoTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .toolsBoxRecomPreventiveMttoTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Recomendaciones de Seguridad para la Infraestructura':
                                        _model
                                            .toolsBoxRecomPreventiveMttoTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Ajuste válvulas, limpieza de...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxRecomPreventiveMttoTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Recomendaciones de Seguridad para las Herramientas',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxSecurityRecomsTextController,
                            focusNode: _model.toolsBoxSecurityRecomsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxSecurityRecomsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxSecurityRecomsTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .toolsBoxSecurityRecomsTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Recomendaciones de Seguridad para la Infraestructura':
                                        _model
                                            .toolsBoxSecurityRecomsTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Alarmas',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxSecurityRecomsTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 350.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Observaciones para la(s) Herramienta(s)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.toolsBoxObservationsTextController,
                            focusNode: _model.toolsBoxObservationsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.toolsBoxObservationsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .toolsBoxObservationsTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    FFAppState()
                                        .anyMoFormMetadata
                                        .where((e) =>
                                            e ==
                                            FFAppState()
                                                .anyMoFormMetadata
                                                .elementAtOrNull(int.parse(_model
                                                    .toolsBoxLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Observaciones para la Infraestructura':
                                          _model
                                              .toolsBoxObservationsTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Observaciones para la Infraestructura':
                                        _model
                                            .toolsBoxObservationsTextController
                                            .text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintText: 'Actualmente se encuentra...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 6,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .toolsBoxObservationsTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
