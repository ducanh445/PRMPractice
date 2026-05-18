void main(){
  Car car1 =Car("mg",2023);
  car1.showInfo();

  Car car2 = Car.defaultYear("honda");
  car2.showInfo();

  ElectricCar vinfast = ElectricCar("vinfast", 2024, 75);

  vinfast.showInfo();

  vinfast.charge();
}

class Car{
  String brand;
  int year;

  Car(this.brand, this.year);

  Car.defaultYear(this.brand): year= 2022;

  void showInfo(){
    print("car: $brand - year: $year");
  }
}

class ElectricCar extends Car {
int battery;

ElectricCar(String brand, int year, this.battery): super(brand,year);

void showInfo(){
  print("Electric Car: $brand - Year: $year - Battery: $battery kWh");
}

void charge(){
  print("$brand is charging...");
}
}

