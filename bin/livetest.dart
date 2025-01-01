/*Question
 Write a dart program to calculate the area of the triangle. You have to call a triangle()
 function from the main then write your solution inside of the triangle functions.*/

import 'dart:io';

void main() {
  triangle();
}

void triangle() {
  stdout.write("Enter the base of the triangle: \n");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the height of the triangle: \n");
  double height = double.parse(stdin.readLineSync()!);

  double area = 0.5 * base * height;

   print("The area triangle is: $area");
}
