import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import '../hospital_homepage/hospital_homepage_widget.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HospitalAddModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Hospital_name widget.
  TextEditingController? hospitalNameController;
  String? Function(BuildContext, String?)? hospitalNameControllerValidator;
  // State field(s) for About_hospital widget.
  TextEditingController? aboutHospitalController;
  String? Function(BuildContext, String?)? aboutHospitalControllerValidator;
  // State field(s) for Beds widget.
  String? bedsValue;
  // State field(s) for speaciality widget.
  TextEditingController? speacialityController;
  String? Function(BuildContext, String?)? speacialityControllerValidator;
  // State field(s) for city widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for state widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  // State field(s) for address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for contact widget.
  TextEditingController? contactController;
  String? Function(BuildContext, String?)? contactControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  HospitalsLocationRecord? hospitalRef;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    hospitalNameController?.dispose();
    aboutHospitalController?.dispose();
    speacialityController?.dispose();
    cityController?.dispose();
    stateController?.dispose();
    addressController?.dispose();
    contactController?.dispose();
  }

  /// Additional helper methods are added here.

}
