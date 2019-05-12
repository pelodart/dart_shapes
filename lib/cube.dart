import 'package:sprintf/sprintf.dart';
import 'threedimensional.dart';

class Cube extends ThreeDimensional {
  double _size;

  Cube(double x, double y, double z, double size) : super("Cube", x, y, z) {
    _size = size;
  }

  // getters
  double get Size => _size;

  // inherited getters
  @override
  double get Volume => _size * _size * _size;

  @override
  double get Surface => 6 * _size * _size;

  @override
  String toString() {
    String s = super.toString();
    s += sprintf("    Size: %g", [Size]) + '\n';
    s += sprintf("    Volume: %g", [Volume]) + '\n';
    s += sprintf("    Surface: %g", [Surface]) + '\n';
    s += '\n';
    return s;
  }
}
