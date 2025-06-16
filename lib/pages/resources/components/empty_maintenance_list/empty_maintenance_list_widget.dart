import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'empty_maintenance_list_model.dart';
export 'empty_maintenance_list_model.dart';

class EmptyMaintenanceListWidget extends StatefulWidget {
  const EmptyMaintenanceListWidget({super.key});

  @override
  State<EmptyMaintenanceListWidget> createState() =>
      _EmptyMaintenanceListWidgetState();
}

class _EmptyMaintenanceListWidgetState
    extends State<EmptyMaintenanceListWidget> {
  late EmptyMaintenanceListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyMaintenanceListModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 30.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
        ),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          'Este objeto aún no tiene Mttos.',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ),
    );
  }
}
