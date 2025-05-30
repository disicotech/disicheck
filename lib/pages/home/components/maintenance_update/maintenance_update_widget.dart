import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/skeletons/shimmer_current_project_name/shimmer_current_project_name_widget.dart';
import '/pages/home/components/skeletons/shimmer_maintenance_update/shimmer_maintenance_update_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'maintenance_update_model.dart';
export 'maintenance_update_model.dart';

/// This card is shown on the Home Page and informs the users the current
/// scheduled maintenance he has.
class MaintenanceUpdateWidget extends StatefulWidget {
  const MaintenanceUpdateWidget({
    super.key,
    this.maintenanceObjectId,
    this.maintenanceObservations,
    this.personAssignedId,
    this.dateCreated,
  });

  final String? maintenanceObjectId;
  final String? maintenanceObservations;
  final String? personAssignedId;
  final DateTime? dateCreated;

  @override
  State<MaintenanceUpdateWidget> createState() =>
      _MaintenanceUpdateWidgetState();
}

class _MaintenanceUpdateWidgetState extends State<MaintenanceUpdateWidget> {
  late MaintenanceUpdateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenanceUpdateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MaintenanceObjectsRow>>(
      future: FFAppState().cachedMaintenanceUpdate(
        uniqueQueryKey: currentUserUid,
        requestFn: () => MaintenanceObjectsTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'id',
            widget!.maintenanceObjectId,
          ),
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Container(
            width: 280.0,
            height: 140.0,
            child: ShimmerMaintenanceUpdateWidget(),
          );
        }
        List<MaintenanceObjectsRow> containerMaintenanceObjectsRowList =
            snapshot.data!;

        final containerMaintenanceObjectsRow =
            containerMaintenanceObjectsRowList.isNotEmpty
                ? containerMaintenanceObjectsRowList.first
                : null;

        return ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            width: 280.0,
            height: 145.0,
            constraints: BoxConstraints(
              maxHeight: 145.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
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
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: Text(
                      'Nuevo Mtto. creado para:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.nunito(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: Text(
                      valueOrDefault<String>(
                        containerMaintenanceObjectsRow?.name,
                        'Nombre del objeto',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Colors.black,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.maintenanceObservations,
                        'Por el momento no hay comentarios.',
                      ).maybeHandleOverflow(
                        maxChars: 40,
                        replacement: '…',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.nunito(
                              fontWeight: FontWeight.w300,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.17, 0.0),
                              child: Container(
                                width: 24.0,
                                height: 24.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/user-placeholder.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            FutureBuilder<List<UsersRow>>(
                              future: FFAppState().loggedInUserQuery(
                                uniqueQueryKey: currentUserUid,
                                requestFn: () => UsersTable().querySingleRow(
                                  queryFn: (q) => q.eqOrNull(
                                    'id',
                                    widget!.personAssignedId,
                                  ),
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return ShimmerCurrentProjectNameWidget();
                                }
                                List<UsersRow> textUsersRowList =
                                    snapshot.data!;

                                final textUsersRow = textUsersRowList.isNotEmpty
                                    ? textUsersRowList.first
                                    : null;

                                return Text(
                                  textUsersRow!.name,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.nunito(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                );
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                functions.dateForScheduledMtto(
                                    widget!.dateCreated?.toString()),
                                '01 Dic, 2024',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.nunito(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
