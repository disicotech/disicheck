import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
<<<<<<< HEAD
=======
import 'dart:ui';
>>>>>>> master
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
=======
import 'package:provider/provider.dart';
>>>>>>> master
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    bool? homeSelected,
    required this.mttosSelected,
    required this.inventorySelected,
    required this.profileSelected,
  }) : this.homeSelected = homeSelected ?? true;

  final bool homeSelected;
  final bool? mttosSelected;
  final bool? inventorySelected;
  final bool? profileSelected;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Container(
          width: double.infinity,
          height: 68.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectedPage = NavbarNavigation.HOME_PAGE;
                    safeSetState(() {});

                    context.pushNamed(
                      HomePageWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
<<<<<<< HEAD
                            if (widget.homeSelected) {
=======
                            if (widget!.homeSelected) {
>>>>>>> master
                              return Icon(
                                Icons.home,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.home_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 26.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Inicio',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: valueOrDefault<Color>(
<<<<<<< HEAD
                                  widget.homeSelected
=======
                                  widget!.homeSelected
>>>>>>> master
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).primaryText,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectedPage = NavbarNavigation.MAINTENANCE_PAGE;
                    safeSetState(() {});

                    context.pushNamed(
                      MaintenancePageWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
<<<<<<< HEAD
                            if (widget.mttosSelected ?? false) {
=======
                            if (widget!.mttosSelected ?? false) {
>>>>>>> master
                              return Icon(
                                Icons.build_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              );
                            } else {
                              return Icon(
                                Icons.build_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Mttos.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: valueOrDefault<Color>(
<<<<<<< HEAD
                                  widget.mttosSelected!
=======
                                  widget!.mttosSelected!
>>>>>>> master
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).primaryText,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectedPage = NavbarNavigation.INVENTORY_PAGE;
                    safeSetState(() {});

                    context.pushNamed(
                      AssetsInventoryPageWidget.routeName,
                      queryParameters: {
                        'pageComingFrom': serializeParam(
                          NavbarNavigation.HOME_PAGE,
                          ParamType.Enum,
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
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
<<<<<<< HEAD
                            if (widget.inventorySelected ?? false) {
=======
                            if (widget!.inventorySelected ?? false) {
>>>>>>> master
                              return Icon(
                                Icons.inventory,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              );
                            } else {
                              return Icon(
                                Icons.inventory_2_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Inventario',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: valueOrDefault<Color>(
<<<<<<< HEAD
                                  widget.inventorySelected!
=======
                                  widget!.inventorySelected!
>>>>>>> master
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).primaryText,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.selectedPage = NavbarNavigation.PROFILE_PAGE;
                    safeSetState(() {});

                    context.pushNamed(
                      UserProfilePageWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
<<<<<<< HEAD
                            if (widget.profileSelected ?? false) {
=======
                            if (widget!.profileSelected ?? false) {
>>>>>>> master
                              return Icon(
                                Icons.person_sharp,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.person_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Perfil',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: valueOrDefault<Color>(
<<<<<<< HEAD
                                  widget.profileSelected!
=======
                                  widget!.profileSelected!
>>>>>>> master
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).primaryText,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
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
