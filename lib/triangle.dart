import 'dart:math' as math;
import 'package:sprintf/sprintf.dart';
import 'package:shapes/twodimensional.dart';

class Triangle extends TwoDimensional {
  double _a;
  double _b;
  double _c;

  Triangle(double x, double y, double a, double b, double c)
      : super("Triangle", x, y) {
    _a = a;
    _b = b;
    _c = b;
  }

  // getters
  double get A => _a;
  double get B => _b;
  double get C => _c;

  // inherited getters
  @override
  double get Area => math.sqrt(((4.0 * _a * _a * _c * _c) -
          (_a * _a + _c * _c - _b * _b) * (_a * _a + _c * _c - _b * _b)) /
      16.0);

  @override
  double get Circumference => _a + _b + _c;

  @override
  String toString() {
    String s = super.toString();
    s += sprintf("    A: %g", [A]) + '\n';
    s += sprintf("    B: %g", [B]) + '\n';
    s += sprintf("    C: %g", [C]) + '\n';
    s += sprintf("    Area: %g", [Area]) + '\n';
    s += sprintf("    Circumference: %g", [Circumference]) + '\n';
    s += '\n';
    return s;
  }
}
