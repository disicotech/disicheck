import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'activities_input_model.dart';
export 'activities_input_model.dart';

class ActivitiesInputWidget extends StatefulWidget {
  const ActivitiesInputWidget({
    super.key,
    this.itemAtIndex,
  });

  final int? itemAtIndex;

  @override
  State<ActivitiesInputWidget> createState() => _ActivitiesInputWidgetState();
}

class _ActivitiesInputWidgetState extends State<ActivitiesInputWidget> {
  late ActivitiesInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivitiesInputModel());

    _model.activityNameTextController ??= TextEditingController(
        text: FFAppState()
            .activitiesList
            .elementAtOrNull(widget.itemAtIndex!)
            ?.name);
    _model.activityNameFocusNode ??= FocusNode();

    _model.activityDescriptionTextController ??= TextEditingController(
        text: FFAppState()
            .activitiesList
            .elementAtOrNull(widget.itemAtIndex!)
            ?.description);
    _model.activityDescriptionFocusNode ??= FocusNode();

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.activityNameTextController,
                    focusNode: _model.activityNameFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.activityNameTextController',
                      Duration(milliseconds: 2000),
                      () async {
                        FFAppState().updateActivitiesListAtIndex(
                          widget.itemAtIndex!,
                          (e) =>
                              e..name = _model.activityNameTextController.text,
                        );
                        safeSetState(() {});
                      },
                    ),
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Actividad',
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      hintText: 'Calibración bujías',
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
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
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.activityNameTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.activityDescriptionTextController,
                    focusNode: _model.activityDescriptionFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.activityDescriptionTextController',
                      Duration(milliseconds: 2000),
                      () async {
                        FFAppState().updateActivitiesListAtIndex(
                          widget.itemAtIndex!,
                          (e) => e
                            ..description =
                                _model.activityDescriptionTextController.text,
                        );
                        safeSetState(() {});
                      },
                    ),
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Corta descripción',
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      hintText: 'Cambio por nuevas bujías AX100',
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
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
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.activityDescriptionTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            FFAppState().removeAtIndexFromActivitiesList(widget.itemAtIndex!);
            _model.updatePage(() {});
          },
          child: Icon(
            Icons.remove_circle,
            color: FlutterFlowTheme.of(context).errorBackground,
            size: 24.0,
          ),
        ),
      ].divide(SizedBox(width: 10.0)),
    );
  }
}
