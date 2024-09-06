class vehicle {
  String? brand;
  String? model;

  vehicle(this.brand, this.model);

  void drive() => print("Vehicle is driving.");
}

class Car extends vehicle {

  num? numOfDoors;

  Car(brand, model, this.numOfDoors):super(brand, model);
  @override

  void drive() => print('car is driving');
  String toString() => 'brand: ${brand} Model: ${model} Num of doors: ${numOfDoors}';
} 

void main (){
  var rod = Car('ddd', 'asasas', 1124);
  rod.drive();
}