import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'infrastructure_form_model.dart';
export 'infrastructure_form_model.dart';

class InfrastructureFormWidget extends StatefulWidget {
  const InfrastructureFormWidget({super.key});

  @override
  State<InfrastructureFormWidget> createState() =>
      _InfrastructureFormWidgetState();
}

class _InfrastructureFormWidgetState extends State<InfrastructureFormWidget> {
  late InfrastructureFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfrastructureFormModel());

    _model.infraIdentifierCodeTextController ??= TextEditingController();
    _model.infraIdentifierCodeFocusNode ??= FocusNode();

    _model.infraSerialCodeTextController ??= TextEditingController();
    _model.infraSerialCodeFocusNode ??= FocusNode();

    _model.infraLocationTextController ??= TextEditingController();
    _model.infraLocationFocusNode ??= FocusNode();

    _model.infraTotalBuildingsTextController ??= TextEditingController();
    _model.infraTotalBuildingsFocusNode ??= FocusNode();

    _model.infraNumberOfFloorsAndTypeOfRoofTextController ??=
        TextEditingController();
    _model.infraNumberOfFloorsAndTypeOfRoofFocusNode ??= FocusNode();

    _model.infraYearBuiltTextController ??= TextEditingController();
    _model.infraYearBuiltFocusNode ??= FocusNode();

    _model.infraUseTextController ??= TextEditingController();
    _model.infraUseFocusNode ??= FocusNode();

    _model.infraAvailableAreasTextController ??= TextEditingController();
    _model.infraAvailableAreasFocusNode ??= FocusNode();

    _model.infraConditionsTextController ??= TextEditingController();
    _model.infraConditionsFocusNode ??= FocusNode();

    _model.infraRecomCleaningTextController ??= TextEditingController();
    _model.infraRecomCleaningFocusNode ??= FocusNode();

    _model.infraRecomMainttTextController ??= TextEditingController();
    _model.infraRecomMainttFocusNode ??= FocusNode();

    _model.infraRecomSecurityTextController ??= TextEditingController();
    _model.infraRecomSecurityFocusNode ??= FocusNode();

    _model.infraObservationsTextController ??= TextEditingController();
    _model.infraObservationsFocusNode ??= FocusNode();

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
                          'Código Identificador',
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
                                _model.infraIdentifierCodeTextController,
                            focusNode: _model.infraIdentifierCodeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraIdentifierCodeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraIdentifierCodeTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .infraIdentifierCodeTextController
                                        .text),
                                    (_) => <String, dynamic>{
                                      'Código Identificador': _model
                                          .infraIdentifierCodeTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Código Identificador': _model
                                        .infraIdentifierCodeTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            textCapitalization: TextCapitalization.words,
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
                              hintText: 'AMG123',
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
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .infraIdentifierCodeTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              if (!isAndroid && !isiOS)
                                TextInputFormatter.withFunction(
                                    (oldValue, newValue) {
                                  return TextEditingValue(
                                    selection: newValue.selection,
                                    text: newValue.text.toCapitalization(
                                        TextCapitalization.words),
                                  );
                                }),
                            ],
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
                          'Serial o Referencia',
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
                            controller: _model.infraSerialCodeTextController,
                            focusNode: _model.infraSerialCodeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraSerialCodeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraSerialCodeTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .infraSerialCodeTextController.text),
                                    (_) => <String, dynamic>{
                                      'Código Identificador': _model
                                          .infraSerialCodeTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Código Identificador': _model
                                        .infraSerialCodeTextController.text,
                                  });
                                  FFAppState().update(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            textCapitalization: TextCapitalization.words,
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
                              hintText: '4RTGF3',
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
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .infraSerialCodeTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              if (!isAndroid && !isiOS)
                                TextInputFormatter.withFunction(
                                    (oldValue, newValue) {
                                  return TextEditingValue(
                                    selection: newValue.selection,
                                    text: newValue.text.toCapitalization(
                                        TextCapitalization.words),
                                  );
                                }),
                            ],
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
                          'Ubicación de la Infraestructura (ciudad, cabecera municipal o municipio)',
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
                            controller: _model.infraLocationTextController,
                            focusNode: _model.infraLocationFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraLocationTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) =>
                                        _model.infraLocationTextController.text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .infraLocationTextController.text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .infraLocationTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación':
                                        _model.infraLocationTextController.text,
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
                              hintText: 'Cali, Colombia',
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
                                .infraLocationTextControllerValidator
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
                          'Cantidad de Edificaciones',
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
                                _model.infraTotalBuildingsTextController,
                            focusNode: _model.infraTotalBuildingsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraTotalBuildingsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraTotalBuildingsTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Cantidad de Edificaciones': _model
                                          .infraTotalBuildingsTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Cantidad de Edificaciones': _model
                                        .infraTotalBuildingsTextController.text,
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
                                .infraTotalBuildingsTextControllerValidator
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
                          'Número de Pisos y Tipo de Cubierta',
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
                                .infraNumberOfFloorsAndTypeOfRoofTextController,
                            focusNode: _model
                                .infraNumberOfFloorsAndTypeOfRoofFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraNumberOfFloorsAndTypeOfRoofTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraNumberOfFloorsAndTypeOfRoofTextController
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Número de Pisos y Tipo de Cubierta': _model
                                          .infraNumberOfFloorsAndTypeOfRoofTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Número de Pisos y Tipo de Cubierta': _model
                                        .infraNumberOfFloorsAndTypeOfRoofTextController
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
                              hintText: '12, normal',
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
                            validator: _model
                                .infraNumberOfFloorsAndTypeOfRoofTextControllerValidator
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
                  'Administración de la Infraestructura',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).alternate,
                          ),
                          child: Checkbox(
                            value: _model.ownPropertyValue ??= false,
                            onChanged: (FFAppState().propertyAdmin == 2)
                                ? null
                                : (newValue) async {
                                    safeSetState(() =>
                                        _model.ownPropertyValue = newValue!);
                                    if (newValue!) {
                                      FFAppState().propertyAdminType = 'Propia';
                                      _model.updatePage(() {});
                                      FFAppState().propertyAdmin = 1;
                                      _model.updatePage(() {});
                                    } else {
                                      FFAppState().propertyAdminType = '';
                                      _model.updatePage(() {});
                                      FFAppState().propertyAdmin = 0;
                                      _model.updatePage(() {});
                                    }
                                  },
                            side: (FlutterFlowTheme.of(context).alternate !=
                                    null)
                                ? BorderSide(
                                    width: 2,
                                    color:
                                        FlutterFlowTheme.of(context).alternate!,
                                  )
                                : null,
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: (FFAppState().propertyAdmin == 2)
                                ? null
                                : FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        Text(
                          'Propia',
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
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).alternate,
                          ),
                          child: Checkbox(
                            value: _model.rentedPropertyValue ??= false,
                            onChanged: (FFAppState().propertyAdmin == 1)
                                ? null
                                : (newValue) async {
                                    safeSetState(() =>
                                        _model.rentedPropertyValue = newValue!);
                                    if (newValue!) {
                                      FFAppState().propertyAdminType =
                                          'Alquilada';
                                      _model.updatePage(() {});
                                      FFAppState().propertyAdmin = 2;
                                      _model.updatePage(() {});
                                    } else {
                                      FFAppState().propertyAdminType = '';
                                      _model.updatePage(() {});
                                      FFAppState().propertyAdmin = 0;
                                      _model.updatePage(() {});
                                    }
                                  },
                            side: (FlutterFlowTheme.of(context).alternate !=
                                    null)
                                ? BorderSide(
                                    width: 2,
                                    color:
                                        FlutterFlowTheme.of(context).alternate!,
                                  )
                                : null,
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: (FFAppState().propertyAdmin == 1)
                                ? null
                                : FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        Text(
                          'Alquilada',
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
                      ],
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 15.0)),
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
                          'Año de Construcción',
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
                            controller: _model.infraYearBuiltTextController,
                            focusNode: _model.infraYearBuiltFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraYearBuiltTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraYearBuiltTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Año de Construcción': _model
                                          .infraYearBuiltTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Año de Construcción': _model
                                        .infraYearBuiltTextController.text,
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
                                .infraYearBuiltTextControllerValidator
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
                          'Uso de la Infraestructura',
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
                            controller: _model.infraUseTextController,
                            focusNode: _model.infraUseFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraUseTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) =>
                                        _model.infraUseTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Uso de la Infraestructura':
                                          _model.infraUseTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Uso de la Infraestructura':
                                        _model.infraUseTextController.text,
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
                              hintText: 'Producción',
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
                            validator: _model.infraUseTextControllerValidator
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
                          'Áreas Disponibles Según Uso (administración, almacén, parquadero, taller, operación, otro)',
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
                                _model.infraAvailableAreasTextController,
                            focusNode: _model.infraAvailableAreasFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraAvailableAreasTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraAvailableAreasTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Áreas Disponibles Según Uso': _model
                                          .infraAvailableAreasTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Áreas Disponibles Según Uso': _model
                                        .infraAvailableAreasTextController.text,
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
                              hintText:
                                  'Parqueadero, administración, y talleres',
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
                                .infraAvailableAreasTextControllerValidator
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
                          'Condiciones de Operación de la Infraestructura',
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
                            controller: _model.infraConditionsTextController,
                            focusNode: _model.infraConditionsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraConditionsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraConditionsTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Condiciones de Operación de la Infraestructura':
                                          _model.infraConditionsTextController
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
                                            .infraConditionsTextController.text,
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
                              hintText: 'Óptimas',
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
                                .infraConditionsTextControllerValidator
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
                  'Tipo de Estructura',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.infraStructureTypeValueController ??=
                      FormFieldController<String>(null),
                  options: _model.structureType,
                  onChanged: (val) async {
                    safeSetState(() => _model.infraStructureTypeValue = val);
                    if (FFAppState()
                        .anyMoFormMetadata
                        .unique((e) => _model.infraStructureTypeValue!)
                        .isNotEmpty) {
                      // Update item at index
                      FFAppState().updateAnyMoFormMetadataAtIndex(
                        FFAppState()
                            .anyMoFormMetadata
                            .where((e) =>
                                e ==
                                FFAppState().anyMoFormMetadata.elementAtOrNull(
                                    int.parse(_model
                                        .infraLocationTextController.text)))
                            .toList()
                            .firstOrNull!,
                        (_) => <String, dynamic>{
                          'Tipo de Estructura': _model.infraStructureTypeValue,
                        },
                      );
                      FFAppState().update(() {});
                    } else {
                      // Add item data to the JSON list
                      FFAppState().addToAnyMoFormMetadata(<String, dynamic>{
                        'Tipo de Estructura': _model.infraStructureTypeValue,
                      });
                      FFAppState().update(() {});
                    }
                  },
                  width: double.infinity,
                  height: 40.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                  hintText: 'Selecciona el tipo',
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
                          'Limpieza Recomendada de la Estructura',
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
                            controller: _model.infraRecomCleaningTextController,
                            focusNode: _model.infraRecomCleaningFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraRecomCleaningTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraRecomCleaningTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Limpieza Recomendada de la Estructura':
                                          _model
                                              .infraRecomCleaningTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Limpieza Recomendada de la Estructura':
                                        _model.infraRecomCleaningTextController
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
                              hintText: 'Desinfección, lavado, etc...',
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
                                .infraRecomCleaningTextControllerValidator
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
                          'Mantenimiento Preventivo Recomendado para la Estructura',
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
                                                    .infraLocationTextController
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
                              hintText: 'Chequeos generales',
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
                          'Recomendaciones de Seguridad para la Infraestructura',
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
                            controller: _model.infraRecomSecurityTextController,
                            focusNode: _model.infraRecomSecurityFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraRecomSecurityTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraRecomSecurityTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .infraRecomSecurityTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Recomendaciones de Seguridad para la Infraestructura':
                                        _model.infraRecomSecurityTextController
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
                                .infraRecomSecurityTextControllerValidator
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
                          'Observaciones para la Infraestructura',
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
                            controller: _model.infraObservationsTextController,
                            focusNode: _model.infraObservationsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.infraObservationsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .infraObservationsTextController.text)
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
                                                    .infraLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Observaciones para la Infraestructura':
                                          _model.infraObservationsTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Observaciones para la Infraestructura':
                                        _model.infraObservationsTextController
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
                                .infraObservationsTextControllerValidator
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
