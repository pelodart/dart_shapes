import 'package:shapes/circle.dart';
import 'package:shapes/cone.dart';
import 'package:shapes/cube.dart';
import 'package:shapes/cuboid.dart';
import 'package:shapes/rectangle.dart';
import 'package:shapes/shape.dart';
import 'package:shapes/sphere.dart';
import 'package:shapes/triangle.dart';

void main() {
  // testingInheritance();
  testingPolymorphismus();
}

void testingInheritance() {
  var tria = new Triangle(1, 1, 2, 3, 4);
  tria.Draw();
  var rect = new Rectangle(10, 10, 20, 40);
  rect.Draw();
  var circle = new Circle(20, 20, 10);
  circle.Draw();
  var cube = new Cube(30, 30, 20, 10);
  cube.Draw();
  var cuboid = new Cuboid(50, 50, 40, 10, 20, 30);
  cuboid.Draw();
  var sphere = new Sphere(40, 40, 30, 15);
  sphere.Draw();
  var cone = new Cone(60, 60, 50, 20, 30);
  cone.Draw();
}

void testingPolymorphismus() {
  var shapes = <Shape>{};
  shapes.add(new Triangle(1, 1, 2, 3, 4));
  shapes.add(new Rectangle(10, 10, 20, 40));
  shapes.add(new Circle(20, 20, 10));
  shapes.add(new Cube(30, 30, 20, 10));
  shapes.add(new Cuboid(50, 50, 40, 10, 20, 30));
  shapes.add(new Sphere(40, 40, 30, 15));
  shapes.add(new Cone(60, 60, 50, 20, 30));

  for (var shape in shapes) {
	  shape.Draw();
  }
}
