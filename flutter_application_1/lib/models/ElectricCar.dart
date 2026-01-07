import 'package:flutter_application_1/models/Car.dart';

class ElectricCar extends Car {
  ElectricCar(super.name, super.brand);

  @override
  String getInfo() {
    return "This is an electric car from brand $brand";
  }
}