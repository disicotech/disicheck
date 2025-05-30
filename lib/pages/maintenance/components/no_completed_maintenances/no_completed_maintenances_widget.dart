import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_completed_maintenances_model.dart';
export 'no_completed_maintenances_model.dart';

/// Shows no maintenances state
class NoCompletedMaintenancesWidget extends StatefulWidget {
  const NoCompletedMaintenancesWidget({super.key});

  @override
  State<NoCompletedMaintenancesWidget> createState() =>
      _NoCompletedMaintenancesWidgetState();
}

class _NoCompletedMaintenancesWidgetState
    extends State<NoCompletedMaintenancesWidget> {
  late NoCompletedMaintenancesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoCompletedMaintenancesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 188.0,
      decoration: BoxDecoration(
        color: Color(0xFFF8FAFE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 88.0,
            height: 88.0,
            decoration: BoxDecoration(
              color: Color(0xFFEEF2FF),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.inventory_2_outlined,
              color: Color(0xFFB1C7FF),
              size: 37.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
            child: Text(
              'No tienes Mttos. completados',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
