import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'no_in_process_maintenances_model.dart';
export 'no_in_process_maintenances_model.dart';

/// Shows no maintenances state
class NoInProcessMaintenancesWidget extends StatefulWidget {
  const NoInProcessMaintenancesWidget({super.key});

  @override
  State<NoInProcessMaintenancesWidget> createState() =>
      _NoInProcessMaintenancesWidgetState();
}

class _NoInProcessMaintenancesWidgetState
    extends State<NoInProcessMaintenancesWidget> {
  late NoInProcessMaintenancesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoInProcessMaintenancesModel());

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
              'No tienes Mttos. en proceso',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.nunito(
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
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
