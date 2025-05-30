import '/flutter_flow/flutter_flow_util.dart';
<<<<<<< HEAD
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
=======
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master
import 'project_assignation_option_model.dart';
export 'project_assignation_option_model.dart';

class ProjectAssignationOptionWidget extends StatefulWidget {
  const ProjectAssignationOptionWidget({
    super.key,
    required this.projectName,
    required this.projectLocation,
  });

  final String? projectName;
  final String? projectLocation;

  @override
  State<ProjectAssignationOptionWidget> createState() =>
      _ProjectAssignationOptionWidgetState();
}

class _ProjectAssignationOptionWidgetState
    extends State<ProjectAssignationOptionWidget> {
  late ProjectAssignationOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectAssignationOptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      curve: Curves.easeInOut,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
<<<<<<< HEAD
                      widget.projectName!,
=======
                      widget!.projectName!,
>>>>>>> master
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
<<<<<<< HEAD
                        widget.projectLocation!,
=======
                        widget!.projectLocation!,
>>>>>>> master
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.add_circle_outline_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
