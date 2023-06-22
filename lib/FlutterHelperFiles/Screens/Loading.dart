
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

/// Simple loading =============================================================

class Loading extends StatelessWidget {
  Loading({Key? key, this.text = 'Loading'}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.14,
                height: height * 0.07,
                child: CircularProgressIndicator(
                    strokeWidth: 8,
                    backgroundColor: Colors.amberAccent,
                    color: Colors.white),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}

/// Animated Loading ===========================================================
///
/// Add flutter_spinkit =============== AnimatedLoading


class AnimatedLoading extends StatelessWidget {
  AnimatedLoading({Key? key, this.text = 'Loading'}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [

            /// Options ======================

            SpinKitRotatingPlain(
              color: Colors.white,
            ),
            SpinKitDoubleBounce(
              color: Colors.white,
            ),
            SpinKitWave(
              color: Colors.white,
              type: SpinKitWaveType.start,
            ),
            SpinKitWanderingCubes(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            SpinKitFadingFour(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            SpinKitFadingCube(
              color: Colors.white,
            ),
            SpinKitPulse(
              color: Colors.white,
            ),
            SpinKitChasingDots(
              color: Colors.white,
            ),
            SpinKitThreeBounce(
              color: Colors.white,
            ),
            SpinKitCircle(
              color: Colors.white,
            ),
            SpinKitCubeGrid(
              size: 51.0,
              color: Colors.white,
            ),
            SpinKitFadingCircle(
              color: Colors.white,
            ),
            SpinKitRotatingCircle(
              color: Colors.white,
            ),
            SpinKitFoldingCube(
              color: Colors.white,
            ),
            SpinKitPumpingHeart(
              color: Colors.white,
            ),
            SpinKitDualRing(
              color: Colors.white,
            ),
            SpinKitHourGlass(
              color: Colors.white,
            ),
            SpinKitFadingGrid(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            SpinKitRing(
              color: Colors.white,
            ),
            SpinKitRipple(
              color: Colors.white,
            ),
            SpinKitSpinningCircle(
              color: Colors.white,
            ),
            SpinKitSquareCircle(
              color: Colors.white,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )),
    );
  }
}
