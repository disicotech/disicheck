import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'equipment_machines_form_model.dart';
export 'equipment_machines_form_model.dart';

class EquipmentMachinesFormWidget extends StatefulWidget {
  const EquipmentMachinesFormWidget({super.key});

  @override
  State<EquipmentMachinesFormWidget> createState() =>
      _EquipmentMachinesFormWidgetState();
}

class _EquipmentMachinesFormWidgetState
    extends State<EquipmentMachinesFormWidget> {
  late EquipmentMachinesFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipmentMachinesFormModel());

    _model.equipmentMachineIdentifierCodeTextController ??=
        TextEditingController();
    _model.equipmentMachineIdentifierCodeFocusNode ??= FocusNode();

    _model.equipmentMachineSerialCodeTextController ??= TextEditingController();
    _model.equipmentMachineSerialCodeFocusNode ??= FocusNode();

    _model.equipmentMachineLocationTextController ??= TextEditingController();
    _model.equipmentMachineLocationFocusNode ??= FocusNode();

    _model.equipmentMachineNumberTextController ??= TextEditingController();
    _model.equipmentMachineNumberFocusNode ??= FocusNode();

    _model.equipmentMachineBrandTextController ??= TextEditingController();
    _model.equipmentMachineBrandFocusNode ??= FocusNode();

    _model.equipmentMachineYearBuiltTextController ??= TextEditingController();
    _model.equipmentMachineYearBuiltFocusNode ??= FocusNode();

    _model.equipmentMachineFunctionTextController ??= TextEditingController();
    _model.equipmentMachineFunctionFocusNode ??= FocusNode();

    _model.equipmentMachineCASourceTextController ??= TextEditingController();
    _model.equipmentMachineCASourceFocusNode ??= FocusNode();

    _model.equipmentMachineNumberMotorUnitsTextController ??=
        TextEditingController();
    _model.equipmentMachineNumberMotorUnitsFocusNode ??= FocusNode();

    _model.equipmentMachineNumberOperationCapacityTextController ??=
        TextEditingController();
    _model.equipmentMachineNumberOperationCapacityFocusNode ??= FocusNode();

    _model.equipmentMachineNumberWeightTextController ??=
        TextEditingController();
    _model.equipmentMachineNumberWeightFocusNode ??= FocusNode();

    _model.equipmentMachineNumberOfPhasesTextController ??=
        TextEditingController();
    _model.equipmentMachineNumberOfPhasesFocusNode ??= FocusNode();

    _model.equipmentMachineUsedVoltageTextController ??=
        TextEditingController();
    _model.equipmentMachineUsedVoltageFocusNode ??= FocusNode();

    _model.equipmentMachineTemperatureTextController ??=
        TextEditingController();
    _model.equipmentMachineTemperatureFocusNode ??= FocusNode();

    _model.equipmentMachineCAUsedTextController ??= TextEditingController();
    _model.equipmentMachineCAUsedFocusNode ??= FocusNode();

    _model.equipmentMachinePressionTextController ??= TextEditingController();
    _model.equipmentMachinePressionFocusNode ??= FocusNode();

    _model.equipmentMachineOtherConditionsTextController ??=
        TextEditingController();
    _model.equipmentMachineOtherConditionsFocusNode ??= FocusNode();

    _model.equipmentMachineOtherAccesoriesTextController ??=
        TextEditingController();
    _model.equipmentMachineOtherAccesoriesFocusNode ??= FocusNode();

    _model.equipmentMachineLubricationTextController ??=
        TextEditingController();
    _model.equipmentMachineLubricationFocusNode ??= FocusNode();

    _model.equipmentMachineRecomPreventiveMttoTextController ??=
        TextEditingController();
    _model.equipmentMachineRecomPreventiveMttoFocusNode ??= FocusNode();

    _model.equipmentMachineSecurityRecomsTextController ??=
        TextEditingController();
    _model.equipmentMachineSecurityRecomsFocusNode ??= FocusNode();

    _model.equipmentMachineObservationsTextController ??=
        TextEditingController();
    _model.equipmentMachineObservationsFocusNode ??= FocusNode();

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
                          'Código Asignado',
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
                                .equipmentMachineIdentifierCodeTextController,
                            focusNode:
                                _model.equipmentMachineIdentifierCodeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineIdentifierCodeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineIdentifierCodeTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .equipmentMachineIdentifierCodeTextController
                                        .text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .equipmentMachineIdentifierCodeTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación': _model
                                        .equipmentMachineIdentifierCodeTextController
                                        .text,
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
                              hintText: 'SOP80D1',
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
                                .equipmentMachineIdentifierCodeTextControllerValidator
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
                          'Serial de la Placa',
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
                                _model.equipmentMachineSerialCodeTextController,
                            focusNode:
                                _model.equipmentMachineSerialCodeFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineSerialCodeTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineSerialCodeTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .equipmentMachineSerialCodeTextController
                                        .text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .equipmentMachineSerialCodeTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación': _model
                                        .equipmentMachineSerialCodeTextController
                                        .text,
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
                              hintText: 'LLCC444',
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
                                .equipmentMachineSerialCodeTextControllerValidator
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
                          'Ubicación del Equipo o Máquina (ciudad, cabecera municipal o municipio)',
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
                                _model.equipmentMachineLocationTextController,
                            focusNode: _model.equipmentMachineLocationFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineLocationTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineLocationTextController
                                        .text)
                                    .isNotEmpty) {
                                  // Update item at index
                                  FFAppState().updateAnyMoFormMetadataAtIndex(
                                    int.parse(_model
                                        .equipmentMachineLocationTextController
                                        .text),
                                    (_) => <String, dynamic>{
                                      'Ubicación': _model
                                          .equipmentMachineLocationTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Ubicación': _model
                                        .equipmentMachineLocationTextController
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
                                .equipmentMachineLocationTextControllerValidator
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
                          'Número de Equipos o Máquinas',
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
                                _model.equipmentMachineNumberTextController,
                            focusNode: _model.equipmentMachineNumberFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineNumberTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineNumberTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Cantidad de Edificaciones': _model
                                          .equipmentMachineNumberTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Cantidad de Edificaciones': _model
                                        .equipmentMachineNumberTextController
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
                                .equipmentMachineNumberTextControllerValidator
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
                            controller:
                                _model.equipmentMachineBrandTextController,
                            focusNode: _model.equipmentMachineBrandFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineBrandTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineBrandTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Número de Pisos y Tipo de Cubierta': _model
                                          .equipmentMachineBrandTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Número de Pisos y Tipo de Cubierta': _model
                                        .equipmentMachineBrandTextController
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
                              hintText: 'BOBCAT',
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
                                .equipmentMachineBrandTextControllerValidator
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
                          'Año de Fabricación del Equipo o Máquina',
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
                                _model.equipmentMachineYearBuiltTextController,
                            focusNode:
                                _model.equipmentMachineYearBuiltFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineYearBuiltTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineYearBuiltTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Año de Construcción': _model
                                          .equipmentMachineYearBuiltTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Año de Construcción': _model
                                        .equipmentMachineYearBuiltTextController
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
                                .equipmentMachineYearBuiltTextControllerValidator
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
                  'Función o Funciones',
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
                    controller: _model.equipmentMachineFunctionTextController,
                    focusNode: _model.equipmentMachineFunctionFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.equipmentMachineFunctionTextController',
                      Duration(milliseconds: 2000),
                      () async {
                        if (FFAppState()
                            .anyMoFormMetadata
                            .unique((e) => _model
                                .equipmentMachineFunctionTextController.text)
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
                                            .equipmentMachineIdentifierCodeTextController
                                            .text)))
                                .toList()
                                .firstOrNull!,
                            (_) => <String, dynamic>{
                              'Año de Construcción': _model
                                  .equipmentMachineFunctionTextController.text,
                            },
                          );
                          FFAppState().update(() {});
                        } else {
                          // Add item data to the JSON list
                          FFAppState().addToAnyMoFormMetadata(<String, dynamic>{
                            'Año de Construcción': _model
                                .equipmentMachineFunctionTextController.text,
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
                      hintText: 'Excavación, electricidad, etc...',
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
                        .equipmentMachineFunctionTextControllerValidator
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
                          'Fuente(s) de Energía',
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
                                _model.equipmentMachineCASourceTextController,
                            focusNode: _model.equipmentMachineCASourceFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineCASourceTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineCASourceTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Áreas Disponibles Según Uso': _model
                                          .equipmentMachineCASourceTextController
                                          .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Áreas Disponibles Según Uso': _model
                                        .equipmentMachineCASourceTextController
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
                                .equipmentMachineCASourceTextControllerValidator
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
                          'Número de unidades motoras',
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
                                .equipmentMachineNumberMotorUnitsTextController,
                            focusNode: _model
                                .equipmentMachineNumberMotorUnitsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineNumberMotorUnitsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineNumberMotorUnitsTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Condiciones de Operación de la Infraestructura':
                                          _model
                                              .equipmentMachineNumberMotorUnitsTextController
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
                                            .equipmentMachineNumberMotorUnitsTextController
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
                              hintText: '6',
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
                                .equipmentMachineNumberMotorUnitsTextControllerValidator
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
                          'Capacidad de operación',
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
                                .equipmentMachineNumberOperationCapacityTextController,
                            focusNode: _model
                                .equipmentMachineNumberOperationCapacityFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineNumberOperationCapacityTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineNumberOperationCapacityTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Limpieza Recomendada de la Estructura':
                                          _model
                                              .equipmentMachineNumberOperationCapacityTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Limpieza Recomendada de la Estructura': _model
                                        .equipmentMachineNumberOperationCapacityTextController
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
                              hintText: 'Normal',
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
                                .equipmentMachineNumberOperationCapacityTextControllerValidator
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
                          'Peso (Kg) del Equipo o Máquina',
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
                                .equipmentMachineNumberWeightTextController,
                            focusNode:
                                _model.equipmentMachineNumberWeightFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineNumberWeightTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineNumberWeightTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .equipmentMachineNumberWeightTextController
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
                                            .equipmentMachineNumberWeightTextController
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
                                .equipmentMachineNumberWeightTextControllerValidator
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
                          'Número de Fases de la Conexión',
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
                                .equipmentMachineNumberOfPhasesTextController,
                            focusNode:
                                _model.equipmentMachineNumberOfPhasesFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineNumberOfPhasesTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineNumberOfPhasesTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .equipmentMachineNumberOfPhasesTextController
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
                                            .equipmentMachineNumberOfPhasesTextController
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
                                .equipmentMachineNumberOfPhasesTextControllerValidator
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
                          'Voltaje (V) Utilizado',
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
                                .equipmentMachineUsedVoltageTextController,
                            focusNode:
                                _model.equipmentMachineUsedVoltageFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineUsedVoltageTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineUsedVoltageTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .equipmentMachineUsedVoltageTextController
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
                                            .equipmentMachineUsedVoltageTextController
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
                              hintText: '3.5V',
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
                                .equipmentMachineUsedVoltageTextControllerValidator
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
                          'Temperatura de Operación ',
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
                                .equipmentMachineTemperatureTextController,
                            focusNode:
                                _model.equipmentMachineTemperatureFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineTemperatureTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineTemperatureTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .equipmentMachineTemperatureTextController
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
                                            .equipmentMachineTemperatureTextController
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
                                .equipmentMachineTemperatureTextControllerValidator
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
                          'Corriente Consumida (A)',
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
                                _model.equipmentMachineCAUsedTextController,
                            focusNode: _model.equipmentMachineCAUsedFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineCAUsedTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineCAUsedTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .equipmentMachineCAUsedTextController
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
                                            .equipmentMachineCAUsedTextController
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
                              hintText: '10000',
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
                                .equipmentMachineCAUsedTextControllerValidator
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
                            controller:
                                _model.equipmentMachinePressionTextController,
                            focusNode: _model.equipmentMachinePressionFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachinePressionTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachinePressionTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .equipmentMachinePressionTextController
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
                                            .equipmentMachinePressionTextController
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
                                .equipmentMachinePressionTextControllerValidator
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
                                .equipmentMachineOtherConditionsTextController,
                            focusNode:
                                _model.equipmentMachineOtherConditionsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineOtherConditionsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineOtherConditionsTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Mantenimiento Preventivo Recomendado para la Estructura':
                                          _model
                                              .equipmentMachineOtherConditionsTextController
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
                                            .equipmentMachineOtherConditionsTextController
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
                                .equipmentMachineOtherConditionsTextControllerValidator
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
                          'Accesorios o Consumibles',
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
                                .equipmentMachineOtherAccesoriesTextController,
                            focusNode:
                                _model.equipmentMachineOtherAccesoriesFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineOtherAccesoriesTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineOtherAccesoriesTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .equipmentMachineOtherAccesoriesTextController
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
                                            .equipmentMachineOtherAccesoriesTextController
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
                                .equipmentMachineOtherAccesoriesTextControllerValidator
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
                            controller: _model
                                .equipmentMachineLubricationTextController,
                            focusNode:
                                _model.equipmentMachineLubricationFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineLubricationTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineLubricationTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .equipmentMachineLubricationTextController
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
                                            .equipmentMachineLubricationTextController
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
                              hintText: 'Aceite tipo...',
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
                                .equipmentMachineLubricationTextControllerValidator
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
                          'Mtto. Preventivo Recomendado',
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
                                .equipmentMachineRecomPreventiveMttoTextController,
                            focusNode: _model
                                .equipmentMachineRecomPreventiveMttoFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineRecomPreventiveMttoTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineRecomPreventiveMttoTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .equipmentMachineRecomPreventiveMttoTextController
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
                                            .equipmentMachineRecomPreventiveMttoTextController
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
                              hintText: 'Revisión general',
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
                                .equipmentMachineRecomPreventiveMttoTextControllerValidator
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
                                .equipmentMachineSecurityRecomsTextController,
                            focusNode:
                                _model.equipmentMachineSecurityRecomsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineSecurityRecomsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineSecurityRecomsTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Recomendaciones de Seguridad para la Infraestructura':
                                          _model
                                              .equipmentMachineSecurityRecomsTextController
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
                                            .equipmentMachineSecurityRecomsTextController
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
                              hintText: 'Mantenimientos al día',
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
                                .equipmentMachineSecurityRecomsTextControllerValidator
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
                            controller: _model
                                .equipmentMachineObservationsTextController,
                            focusNode:
                                _model.equipmentMachineObservationsFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.equipmentMachineObservationsTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                if (FFAppState()
                                    .anyMoFormMetadata
                                    .unique((e) => _model
                                        .equipmentMachineObservationsTextController
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
                                                    .equipmentMachineIdentifierCodeTextController
                                                    .text)))
                                        .toList()
                                        .firstOrNull!,
                                    (_) => <String, dynamic>{
                                      'Observaciones para la Infraestructura':
                                          _model
                                              .equipmentMachineObservationsTextController
                                              .text,
                                    },
                                  );
                                  FFAppState().update(() {});
                                } else {
                                  // Add item data to the JSON list
                                  FFAppState()
                                      .addToAnyMoFormMetadata(<String, dynamic>{
                                    'Observaciones para la Infraestructura': _model
                                        .equipmentMachineObservationsTextController
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
                                .equipmentMachineObservationsTextControllerValidator
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
