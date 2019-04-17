import 'package:sprintf/sprintf.dart';
import 'shape.dart';

abstract class TwoDimensional extends Shape {
  double _x;
  double _y;

  TwoDimensional(String name, double x, double y) : super(name) {
    _x = x;
    _y = y;
  }

  // getter
  double get X => _x;
  double get Y => _y;

  // public abstract contract for derived classes
  double get Area;
  double get Circumference;

  // public interface
  moveTo(double x, double y) {
    _x = x;
    _y = y;
  }

  @override
  String toString() {
    String s = super.toString();
    s += '\n' + "  TwoDimensional";
    s += '\n' + sprintf("  Position: %g, %g", [_x, _y]);
    s += '\n';
    return s;
  }
}
