import 'package:sprintf/sprintf.dart';
import 'threedimensional.dart';

class Cuboid extends ThreeDimensional {
  double _width;
  double _height;
  double _depth;

  Cuboid(double x, double y, double z, double width, double height, double depth)
      : super("Cuboid", x, y, z) {
    _width = width;
    _height = height;
    _depth = depth;
  }

  // getters
  double get Size => _width;
  double get Height => _height;
  double get Depth => _depth;

  // inherited getters
  @override
  double get Volume => _width * _height * _depth;

  @override
  double get Surface =>
      2 * (_width * _height + _height * _depth + _depth * _width);

  @override
  String toString() {
    String s = super.toString();
    s += sprintf("    Size: %g", [Size]) + '\n';
    s += sprintf("    Height: %g", [Height]) + '\n';
    s += sprintf("    Depth: %g", [Depth]) + '\n';
    s += sprintf("    Volume: %g", [Volume]) + '\n';
    s += sprintf("    Surface: %g", [Surface]) + '\n';
    s += '\n';
    return s;
  }
}
