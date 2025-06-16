import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/skeletons/shimmer_current_project_name/shimmer_current_project_name_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'current_project_model.dart';
export 'current_project_model.dart';

/// The component shows the current project the user is in.
///
/// If the user is working in more than 1 project, the component will display
/// an arrow option to choose the project and change the view of the tasks,
/// maintenances, etc.
class CurrentProjectWidget extends StatefulWidget {
  const CurrentProjectWidget({
    super.key,
    required this.userId,
  });

  final String? userId;

  @override
  State<CurrentProjectWidget> createState() => _CurrentProjectWidgetState();
}

class _CurrentProjectWidgetState extends State<CurrentProjectWidget> {
  late CurrentProjectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CurrentProjectModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.queryUserProjectId = await UsersProjectsTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'user_id',
          widget.userId,
        ),
      );
      FFAppState().currentProject =
          _model.queryUserProjectId!.firstOrNull!.projectId;
      safeSetState(() {});
    });

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

    return ClipRRect(
      borderRadius: BorderRadius.circular(56.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.7,
        height: 64.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
          borderRadius: BorderRadius.circular(56.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEF2FF),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    Icons.business_center_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Proyecto',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.nunito(
                                fontWeight: FontWeight.w300,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Expanded(
                        child: FutureBuilder<List<ProjectsRow>>(
                          future: ProjectsTable().querySingleRow(
                            queryFn: (q) => q.eqOrNull(
                              'id',
                              _model.queryUserProjectId?.firstOrNull?.projectId,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Container(
                                width: 150.0,
                                height: 15.0,
                                child: ShimmerCurrentProjectNameWidget(),
                              );
                            }
                            List<ProjectsRow> textProjectsRowList =
                                snapshot.data!;

                            final textProjectsRow =
                                textProjectsRowList.isNotEmpty
                                    ? textProjectsRowList.first
                                    : null;

                            return Text(
                              valueOrDefault<String>(
                                textProjectsRow?.name,
                                'Nombre proyecto',
                              ),
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 15.5,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
