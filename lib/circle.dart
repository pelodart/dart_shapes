import 'dart:math' as math;
import 'package:sprintf/sprintf.dart';
import 'package:shapes/twodimensional.dart';

class Circle extends TwoDimensional {
  double _radius;

  Circle(double x, double y, double radius) : super("Circle", x, y) {
    _radius = radius;
  }

  // getters
  double get Radius => _radius;

  // inherited getters
  @override
  double get Area => _radius * _radius * math.pi;

  @override
  double get Circumference => 2 * math.pi * _radius;

  @override
  String toString() {
    String s = super.toString();
    s += sprintf("    Radius: %g", [Radius]) + '\n';
    s += sprintf("    Area: %g", [Area]) + '\n';
    s += sprintf("    Circumference: %g", [Circumference]) + '\n';
    s += '\n';
    return s;
  }
}
