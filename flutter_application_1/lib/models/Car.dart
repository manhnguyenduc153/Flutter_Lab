class Car {
  String name;
  String brand;

  Car(this.name, this.brand);

  String getInfo() {
    return "This is a car from brand $brand";
  }
}