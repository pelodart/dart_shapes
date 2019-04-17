abstract class Shape {
  String _name;

  // c'tor(s)
  Shape(String name) : _name = name {}

  // getter
  String get Name => _name;

  // public interface
  void Draw() {
    print(toString());
  }

  @override
  String toString() {
    return "Shape: " + _name;
  }
}
