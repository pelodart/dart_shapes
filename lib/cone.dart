import 'dart:math' as math;
import 'package:sprintf/sprintf.dart';
import 'threedimensional.dart';

class Cone extends ThreeDimensional {
  double _radius;
  double _height;

  Cone(double x, double y, double z, double radius, double height) : super("Cone", x, y, z) {
    _radius = radius;
    _height = height;
  }

  // getters
  double get Radius => _radius;
  double get Height => _height;

  // inherited getters
  @override
  double get Volume => (math.pi * _radius * _radius * _height) / 3;

  @override
  double get Surface =>
      math.pi *
      _radius *
      (_radius + math.sqrt(_height * _height + _radius * _radius));

  @override
  String toString() {
    String s = super.toString();
    s += sprintf("    Radius: %g", [Radius]) + '\n';
    s += sprintf("    Height: %g", [Height]) + '\n';
    s += sprintf("    Volume: %g", [Volume]) + '\n';
    s += sprintf("    Surface: %g", [Surface]) + '\n';
    s += '\n';
    return s;
  }
}
