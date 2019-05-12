import 'dart:math' as math;
import 'package:sprintf/sprintf.dart';
import 'threedimensional.dart';

class Sphere extends ThreeDimensional {
  double _radius;

  Sphere(double x, double y, double z, double radius) : super("Sphere", x, y, z) {
    _radius = radius;
  }

  // getters
  double get Radius => _radius;

  // inherited getters
  @override
  double get Volume => (4.0 / 3.0) * math.pi * _radius * _radius * _radius;

  @override
  double get Surface => 4 * math.pi * _radius * _radius;

  @override
  String toString() {
    String s = super.toString();
    s += sprintf("    Radius: %g", [Radius]) + '\n';
    s += sprintf("    Volume: %g", [Volume]) + '\n';
    s += sprintf("    Surface: %g", [Surface]) + '\n';
    s += '\n';
    return s;
  }
}
