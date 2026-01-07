import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Car.dart';
import 'package:flutter_application_1/models/ElectricCar.dart';

void main() {
  Exercise1();
  Exercise2();
  Exercise3();
  Exercise4();
  Exercise5();

}

void Exercise1(){
  int myAge = 21;
  double myGPA = 10.5;
  String myName = 'Manh';
  bool isMale = true;

  print("=========================== Exercise 1 ===========================");
  print("My name: $myName");
  print("My age: $myAge");
  print("My gpa: $myGPA");
  print("Is male: $isMale");
}

void Exercise2(){
  List<int> integers = [-10, -11, 0, -55, 80, 0, 99, 50, 9];

  int sumAllPositive = 0;
  int minusAllNegative = 0;
  int multiAll = 1;
  double divideAll = 1;
  int countZero = 0;
  int bonus = 0;

  if(integers.last > 0 && integers.last - 2 != integers.first ){
    bonus = 10;
  }

  for(int i = 0; i < integers.length; i++){
    integers[i] > 0 ? (sumAllPositive += integers[i]) : sumAllPositive += 0;
    integers[i] < 0 ? (minusAllNegative -= integers[i]) : minusAllNegative -= 0;

    if(integers[i] == 0){
      countZero++;
    }else{
      multiAll *= integers[i];
      divideAll /= integers[i];
    }
  }

  countZero += bonus;

  print("=========================== Exercise 2 ===========================");
  print("--------------------------- 2.1 and 2.2 ---------------------------");
  print("Sum all positive: $sumAllPositive");
  print("Minus all negative: $minusAllNegative");
  print("Multiple all: $multiAll");
  print("Divide all: $divideAll");
  print("Count zero: $countZero");

  print("--------------------------- 2.3 and 2.4 ---------------------------");

  Set<int> sets = {1, 5, 22, -6, 99};

  print("Set value before: $sets");

  int addValue = 100;
  int removeValue = 5;
  sets.add(addValue);
  sets.remove(removeValue);
  print("Set value after add $addValue and remove $removeValue: $sets");

  Map<String, int> myScores = {
    "MLN": 10,
    "PRM": 9,
    "PRN": 8,
  };

  print("My expect score in 1st week: $myScores");

  int valueChange = 5;
  myScores["MLN"] = valueChange;
  myScores["PRM"] = valueChange;

  print("My actual score: $myScores");
}

void Exercise3() {
  print("=========================== Exercise 3 ===========================");

  int score = 75;
  String grade = "";

  if (score >= 85) {
    grade = "A";
  } else if (score >= 70) {
    grade = "B";
  } else if (score >= 50) {
    grade = "C";
  } else {
    grade = "F";
  }

  print("--------------------------- 3.1 ---------------------------");
  print("Score: $score");
  print("Grade: $grade");

  int day = 3;
  String dayName = "";

  switch (day) {
    case 1:
      dayName = "Monday";
      break;
    case 2:
      dayName = "Tuesday";
      break;
    case 3:
      dayName = "Wednesday";
      break;
    case 4:
      dayName = "Thursday";
      break;
    case 5:
      dayName = "Friday";
      break;
    default:
      dayName = "Weekend";
  }

  print("--------------------------- 3.2 ---------------------------");
  print("Day number: $day");
  print("Day name: $dayName");

  List<int> numbers = [10, 20, 30];

  print("--------------------------- 3.3 ---------------------------");

  print("Using for loop:");
  for (int i = 0; i < numbers.length; i++) {
    print("Value: ${numbers[i]}");
  }

  print("Using for-in loop:");
  for (int n in numbers) {
    print("Value: $n");
  }

  print("Using forEach loop:");
  numbers.forEach((n) {
    print("Value: $n");
  });

  int sumResult = add(5, 3);
  int multiplyResult = multiply(4, 6);

  print("--------------------------- 3.4 ---------------------------");
  print("Sum : $sumResult");
  print("Multiply : $multiplyResult");
}

int add(int a, int b) {
  return a + b;
}

int multiply(int a, int b) => a * b;

void Exercise4(){
  String name = "Ecar1";
  String brand = "Ebrand1";

  Car car = new Car(name + "Car", brand + "Car");
  ElectricCar ecar = new ElectricCar(name, brand);

  print("=========================== Exercise 4 ===========================");
  print(car.getInfo());
  print(ecar.getInfo());
}

void Exercise5() async{
  print("Wait for exercise 5...");
  print("--------------------------- 5.1 and 5.2 ---------------------------");
  String myName = await fetchName();

  print("--------------------------- 5.3 ---------------------------");
  int? nullableNumber;
  int displayNumber = nullableNumber ?? 0;
  String? phone = "0123456789";
  String? address;

  print("My name: $myName");
  print("Nullable number: $nullableNumber");
  print("Display number: $displayNumber");

  print("Null assertion");
  print(phone!);
  // print(address!);

  print("--------------------------- 5.4 ---------------------------");
  listenStream();
}

Future<String> fetchName() async{
  await Future.delayed(Duration(seconds: 5));
  return "Nguyen Duc Manh";
}

Stream<int> numberStream() async*{
  for(int i = 0; i <= 5; i ++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void listenStream() async {
  await for(int num in numberStream()){
    print("Stream value: $num");
  }
}