import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'hospital_home_add_model.dart';
export 'hospital_home_add_model.dart';

class HospitalHomeAddWidget extends StatefulWidget {
  const HospitalHomeAddWidget({Key? key}) : super(key: key);

  @override
  _HospitalHomeAddWidgetState createState() => _HospitalHomeAddWidgetState();
}

class _HospitalHomeAddWidgetState extends State<HospitalHomeAddWidget> {
  late HospitalHomeAddModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospitalHomeAddModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  frameRate: FrameRate(60),
                  repeat: false,
                  animate: true,
                ),
              ],
            ),
          ),
          Text(
            'Congrats!',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 12, 10, 0),
            child: Text(
              'Thanks for taking Your Hospital. Our Team will reach you out in 3 days.',
              style: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
