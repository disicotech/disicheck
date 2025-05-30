import '/flutter_flow/flutter_flow_util.dart';
<<<<<<< HEAD
=======
import 'dart:ui';
>>>>>>> master
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master
import 'maintenance_history_card_model.dart';
export 'maintenance_history_card_model.dart';

class MaintenanceHistoryCardWidget extends StatefulWidget {
  const MaintenanceHistoryCardWidget({
    super.key,
    this.maintenanceCode,
    this.typeOfMaintenance,
    this.maintenanceDate,
    this.maintenanceId,
  });

  final String? maintenanceCode;
  final String? typeOfMaintenance;
  final DateTime? maintenanceDate;
  final String? maintenanceId;

  @override
  State<MaintenanceHistoryCardWidget> createState() =>
      _MaintenanceHistoryCardWidgetState();
}

class _MaintenanceHistoryCardWidgetState
    extends State<MaintenanceHistoryCardWidget> {
  late MaintenanceHistoryCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenanceHistoryCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed(
            MaintenanceDetailWidget.routeName,
            queryParameters: {
              'maintenanceId': serializeParam(
<<<<<<< HEAD
                widget.maintenanceId,
=======
                widget!.maintenanceId,
>>>>>>> master
                ParamType.String,
              ),
            }.withoutNulls,
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
              ),
            },
          );
        },
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 85.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0x34ABABAB),
                offset: Offset(
                  -2.0,
                  5.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 4.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
<<<<<<< HEAD
                            widget.maintenanceCode,
=======
                            widget!.maintenanceCode,
>>>>>>> master
                            'MNT-111',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
<<<<<<< HEAD
                            widget.typeOfMaintenance,
=======
                            widget!.typeOfMaintenance,
>>>>>>> master
                            'Tipo de Mtto.',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            functions.dateForScheduledMtto(
<<<<<<< HEAD
                                widget.maintenanceDate?.toString()),
=======
                                widget!.maintenanceDate?.toString()),
>>>>>>> master
                            'Dic 01, 2025',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineSmallIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 2.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
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
        ),
      ),
    );
  }
}
