import 'package:sprintf/sprintf.dart';
import 'shape.dart';

abstract class ThreeDimensional extends Shape {
  double _x;
  double _y;
  double _z;

  ThreeDimensional(String name, double x, double y, double z) : super(name) {
    _x = x;
    _y = y;
    _z = z;
  }

  // getter
  double get X => _x;
  double get Y => _y;
  double get Z => _z;

  // public abstract contract for derived classes
  double get Volume;
  double get Surface ;

  // public interface
  moveTo(double x, double y, double z) {
    _x = x;
    _y = y;
    _z = z;
  }

  @override
  String toString() {
    String s = super.toString();
    s += '\n' + "  ThreeDimensional";
    s += '\n' + sprintf("  Position: %g, %g, %g", [_x, _y, _z]);
    s += '\n';
    return s;
  }
}
