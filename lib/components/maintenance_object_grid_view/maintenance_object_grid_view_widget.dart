import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'maintenance_object_grid_view_model.dart';
export 'maintenance_object_grid_view_model.dart';

class MaintenanceObjectGridViewWidget extends StatefulWidget {
  const MaintenanceObjectGridViewWidget({
    super.key,
    this.maintenanceObjectImage,
    this.maintenanceObjectName,
    this.maintenanceObjectCategory,
  });

  final String? maintenanceObjectImage;
  final String? maintenanceObjectName;
  final String? maintenanceObjectCategory;

  @override
  State<MaintenanceObjectGridViewWidget> createState() =>
      _MaintenanceObjectGridViewWidgetState();
}

class _MaintenanceObjectGridViewWidgetState
    extends State<MaintenanceObjectGridViewWidget> {
  late MaintenanceObjectGridViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenanceObjectGridViewModel());

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
      width: 176.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: FlutterFlowTheme.of(context).alternate,
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 12.0, 10.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        fadeInDuration: Duration(milliseconds: 500),
                        fadeOutDuration: Duration(milliseconds: 500),
                        imageUrl: widget.maintenanceObjectImage != null &&
                                widget.maintenanceObjectImage != ''
                            ? widget.maintenanceObjectImage!
                            : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d5sk98qZloElOEHM6UCe/assets/v7hcgz9y5jsj/disicheck-default-mo-image.png',
                        width: 141.98,
                        height: 96.5,
                        fit: BoxFit.cover,
                        memCacheWidth: 152,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: Text(
                valueOrDefault<String>(
                  widget.maintenanceObjectName,
                  'Sin nombre',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: Colors.black,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.maintenanceObjectCategory,
                'Sin categoría',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.nunito(
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
