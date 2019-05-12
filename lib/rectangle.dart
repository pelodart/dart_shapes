import 'package:sprintf/sprintf.dart';
import 'twodimensional.dart';

class Rectangle extends TwoDimensional {
  double _width;
  double _height;

  Rectangle(double x, double y, double width, double height) : super("Rectangle", x, y) {
    _width = width;
    _height = height;
  }

  // getters
  double get Width => _width;
  double get Height => _height;

  // inherited getters
  @override
  double get Area => _width * _height;

  @override
  double get Circumference => 2 * (_width + _height);

  @override
  String toString() {
    String s = super.toString();
    s += sprintf("    Width: %g", [Width]) + '\n';
    s += sprintf("    Height: %g", [Height]) + '\n';
    s += sprintf("    Area: %g", [Area]) + '\n';
    s += sprintf("    Circumference: %g", [Circumference]) + '\n';
    s += '\n';
    return s;
  }
}
