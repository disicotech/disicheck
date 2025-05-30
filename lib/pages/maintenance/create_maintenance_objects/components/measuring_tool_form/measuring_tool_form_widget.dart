import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'measuring_tool_form_model.dart';
export 'measuring_tool_form_model.dart';

class MeasuringToolFormWidget extends StatefulWidget {
  const MeasuringToolFormWidget({super.key});

  @override
  State<MeasuringToolFormWidget> createState() =>
      _MeasuringToolFormWidgetState();
}

class _MeasuringToolFormWidgetState extends State<MeasuringToolFormWidget> {
  late MeasuringToolFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeasuringToolFormModel());

    _model.measuringToolLocationTextController ??= TextEditingController();
    _model.measuringToolLocationFocusNode ??= FocusNode();

    _model.measuringToolCodeTextController ??= TextEditingController();
    _model.measuringToolCodeFocusNode ??= FocusNode();

    _model.measuringToolSerialTextController ??= TextEditingController();
    _model.measuringToolSerialFocusNode ??= FocusNode();

    _model.measuringToolQtyTextController ??= TextEditingController();
    _model.measuringToolQtyFocusNode ??= FocusNode();

    _model.measuringToolBrandTextController ??= TextEditingController();
    _model.measuringToolBrandFocusNode ??= FocusNode();

    _model.measuringToolElaborationYearTextController ??=
        TextEditingController();
    _model.measuringToolElaborationYearFocusNode ??= FocusNode();

    _model.measuringToolMeasuredVariableTextController ??=
        TextEditingController();
    _model.measuringToolMeasuredVariableFocusNode ??= FocusNode();

    _model.measuringToolMeasuringRangeTextController ??=
        TextEditingController();
    _model.measuringToolMeasuringRangeFocusNode ??= FocusNode();

    _model.measuringToolRequiredPrecisionTextController ??=
        TextEditingController();
    _model.measuringToolRequiredPrecisionFocusNode ??= FocusNode();

    _model.measuringToolOtherConditionsTextController ??=
        TextEditingController();
    _model.measuringToolOtherConditionsFocusNode ??= FocusNode();

    _model.measuringToolRecomCleaningTextController ??= TextEditingController();
    _model.measuringToolRecomCleaningFocusNode ??= FocusNode();

    _model.measuringToolPreventiveMttoTextController ??=
        TextEditingController();
    _model.measuringToolPreventiveMttoFocusNode ??= FocusNode();

    _model.measuringToolSecurityRecomsTextController ??=
        TextEditingController();
    _model.measuringToolSecurityRecomsFocusNode ??= FocusNode();

    _model.measuringToolObservationsTextController ??= TextEditingController();
    _model.measuringToolObservationsFocusNode ??= FocusNode();

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
                          'Ubicación del Instrumento de medición (ciudad, cabecera municipal o municipio)',
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
                                _model.measuringToolLocationTextController,
                            focusNode: _model.measuringToolLocationFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolLocationTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolLocationTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .measuringToolLocationTextController
                                        .text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .measuringToolLocationTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación': _model
                                        .measuringToolLocationTextController
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
                                .measuringToolLocationTextControllerValidator
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
                            controller: _model.measuringToolCodeTextController,
                            focusNode: _model.measuringToolCodeFocusNode,
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
                              hintText: '0011114444',
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
                                .measuringToolCodeTextControllerValidator
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
                            controller:
                                _model.measuringToolSerialTextController,
                            focusNode: _model.measuringToolSerialFocusNode,
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
                              hintText: 'AJMW446MM',
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
                                .measuringToolSerialTextControllerValidator
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
                          'Cantidad de Instrumentos',
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
                            controller: _model.measuringToolQtyTextController,
                            focusNode: _model.measuringToolQtyFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolQtyTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolQtyTextController.text)
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Cantidad de Edificaciones': _model
                                          .measuringToolQtyTextController.text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Cantidad de Edificaciones': _model
                                        .measuringToolQtyTextController.text,
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
                                .measuringToolQtyTextControllerValidator
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
                            controller: _model.measuringToolBrandTextController,
                            focusNode: _model.measuringToolBrandFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolBrandTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolBrandTextController.text)
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Número de Pisos y Tipo de Cubierta':
                                          _model
                                              .measuringToolBrandTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Número de Pisos y Tipo de Cubierta': _model
                                        .measuringToolBrandTextController.text,
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
                              hintText: 'Propio',
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
                                .measuringToolBrandTextControllerValidator
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
                          'Año de Fabricación',
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
                                .measuringToolElaborationYearTextController,
                            focusNode:
                                _model.measuringToolElaborationYearFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolElaborationYearTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolElaborationYearTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Año de Construcción': _model
                                          .measuringToolElaborationYearTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Año de Construcción': _model
                                        .measuringToolElaborationYearTextController
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
                                .measuringToolElaborationYearTextControllerValidator
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
                  'Variable a Medir',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  child: TextFormField(
                    controller:
                        _model.measuringToolMeasuredVariableTextController,
                    focusNode: _model.measuringToolMeasuredVariableFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.measuringToolMeasuredVariableTextController',
                      Duration(milliseconds: 2000),
                      () async {
                        if (FFAppState()
                            .anyMoFormMetadata
                            .unique((e) => _model
                                .measuringToolMeasuredVariableTextController
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
                                            .measuringToolLocationTextController
                                            .text)))
                                .toList()
                                .firstOrNull!,
                            (_) => <String, dynamic>{
                              'Año de Construcción': _model
                                  .measuringToolMeasuredVariableTextController
                                  .text,
                            },
                          );
                          FFAppState().update(() {});
                        } else {
                          // Add item data to the JSON list
                          FFAppState().addToAnyMoFormMetadata(<String, dynamic>{
                            'Año de Construcción': _model
                                .measuringToolMeasuredVariableTextController
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
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            color: Colors.black,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      hintText: 'Decibeles',
                      hintStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
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
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    maxLines: null,
                    keyboardType: TextInputType.number,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model
                        .measuringToolMeasuredVariableTextControllerValidator
                        .asValidator(context),
                  ),
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
                          'Rango de Operación o Medición',
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
                                .measuringToolMeasuringRangeTextController,
                            focusNode:
                                _model.measuringToolMeasuringRangeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolMeasuringRangeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolMeasuringRangeTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Áreas Disponibles Según Uso': _model
                                          .measuringToolMeasuringRangeTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Áreas Disponibles Según Uso': _model
                                        .measuringToolMeasuringRangeTextController
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
                                .measuringToolMeasuringRangeTextControllerValidator
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
                          'Precisión requerida',
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
                                .measuringToolRequiredPrecisionTextController,
                            focusNode:
                                _model.measuringToolRequiredPrecisionFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolRequiredPrecisionTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolRequiredPrecisionTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Condiciones de Operación de la Infraestructura':
                                          _model
                                              .measuringToolRequiredPrecisionTextController
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
                                            .measuringToolRequiredPrecisionTextController
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
                                .measuringToolRequiredPrecisionTextControllerValidator
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
                          'Tipo de Control a Implementar',
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
                                value: _model
                                        .measuringToolControlTypeToImplementCalibrationValue ??=
                                    false,
                                onChanged: (newValue) async {
                                  safeSetState(() => _model
                                          .measuringToolControlTypeToImplementCalibrationValue =
                                      newValue!);
                                  if (newValue!) {
                                    FFAppState().addToControlTypeToImplement(
                                        'Calibración');
                                    _model.updatePage(() {});
                                  } else {
                                    FFAppState()
                                        .removeFromControlTypeToImplement(
                                            'Calibración');
                                    safeSetState(() {});
                                  }
                                },
                                side: (FlutterFlowTheme.of(context).alternate !=
                                        null)
                                    ? BorderSide(
                                        width: 2,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      )
                                    : null,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                            Text(
                              'Calibración',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
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
                                value: _model
                                        .measuringToolControlTypeToImplementVerificationValue ??=
                                    false,
                                onChanged: (newValue) async {
                                  safeSetState(() => _model
                                          .measuringToolControlTypeToImplementVerificationValue =
                                      newValue!);
                                  if (newValue!) {
                                    FFAppState().addToControlTypeToImplement(
                                        'Verificación');
                                    safeSetState(() {});
                                  } else {
                                    FFAppState()
                                        .removeFromControlTypeToImplement(
                                            'Verificación');
                                    safeSetState(() {});
                                  }
                                },
                                side: (FlutterFlowTheme.of(context).alternate !=
                                        null)
                                    ? BorderSide(
                                        width: 2,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      )
                                    : null,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                            Text(
                              'Verificación',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ],
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
                          'Frecuencia del Control',
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
                        FlutterFlowDropDown<String>(
                          controller: _model
                                  .measuringToolControlFrecuencyValueController ??=
                              FormFieldController<String>(
                            _model.measuringToolControlFrecuencyValue ??= '',
                          ),
                          options: List<String>.from(FFAppState().mttFrecuency),
                          optionLabels: FFAppState().mttFrecuency,
                          onChanged: (val) => safeSetState(() =>
                              _model.measuringToolControlFrecuencyValue = val),
                          width: 350.0,
                          height: 40.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          hintText: 'Selecciona frecuencia',
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
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
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
                          'Otras Condiciones de Operación',
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
                                .measuringToolOtherConditionsTextController,
                            focusNode:
                                _model.measuringToolOtherConditionsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolOtherConditionsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolOtherConditionsTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .measuringToolOtherConditionsTextController
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
                                            .measuringToolOtherConditionsTextController
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
                              hintText: 'Se evidencian...',
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
                                .measuringToolOtherConditionsTextControllerValidator
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
                                _model.measuringToolRecomCleaningTextController,
                            focusNode:
                                _model.measuringToolRecomCleaningFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolRecomCleaningTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolRecomCleaningTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .measuringToolRecomCleaningTextController
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
                                            .measuringToolRecomCleaningTextController
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
                                .measuringToolRecomCleaningTextControllerValidator
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
                          'Mantenimiento Preventivo Recomendado ',
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
                                .measuringToolPreventiveMttoTextController,
                            focusNode:
                                _model.measuringToolPreventiveMttoFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolPreventiveMttoTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolPreventiveMttoTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .measuringToolPreventiveMttoTextController
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
                                            .measuringToolPreventiveMttoTextController
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
                              hintText: 'Ajustes, limpieza de piezas',
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
                                .measuringToolPreventiveMttoTextControllerValidator
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
                          'Recomendaciones de Seguridad',
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
                                .measuringToolSecurityRecomsTextController,
                            focusNode:
                                _model.measuringToolSecurityRecomsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolSecurityRecomsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolSecurityRecomsTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .measuringToolSecurityRecomsTextController
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
                                            .measuringToolSecurityRecomsTextController
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
                              hintText: 'indicación de seguridad ',
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
                                .measuringToolSecurityRecomsTextControllerValidator
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
                          'Observaciones',
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
                                _model.measuringToolObservationsTextController,
                            focusNode:
                                _model.measuringToolObservationsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.measuringToolObservationsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .measuringToolObservationsTextController
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
                                                    .measuringToolLocationTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Observaciones para la Infraestructura':
                                          _model
                                              .measuringToolObservationsTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Observaciones para la Infraestructura': _model
                                        .measuringToolObservationsTextController
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
                                .measuringToolObservationsTextControllerValidator
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
