import 'dart:io';

class invalidNaturalNumber implements Exception {
  @override
  String toString() {
    return "Please enter a natural number.";
  }
}

(bool isDone, bool isValid, int naturalvalue) GetNaturalValue(int count) {
  int naturalNumber = 0;
  bool isDone = false;
  bool isValid = false;
  try {
    print("Please enter your natural value $count: or enter \"N\" to exit:");
    String naturalAnswer = stdin.readLineSync()!;
    if (naturalAnswer.toLowerCase() == "n") {
      isDone = true;
    } else {
      naturalNumber = int.parse(naturalAnswer);
      isValid = checkNaturalNumber(naturalNumber);
    }
  } on invalidNaturalNumber catch (e) {
    print(e);
  } catch (e) {
    print("Please enter a natural number.");
    //GetNaturalValue(count);
  }
  return (isDone, isValid, naturalNumber);
}

bool checkNaturalNumber(var num) {
  var isValid = true;
  if (num < 0) {
    isValid = false;
    throw invalidNaturalNumber();
  }
  return isValid;
}

double calculate(double num1, double num2, String processor) {
  double result = 0;
  switch (processor) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;

    case "/":
      result = num1 + num2;
      break;
    default:
      break;
  }
  return result;
}

void main() {
  //challenge
  var age = 20;
  var result = (age >= 13 && age <= 19) ? "Teenager" : "Not Teenager";
  print("\nChallenge: $result");

  //Practice 1 - Write a dart program to check if the number is odd or even.
  print("\nPractice 1");
  print("Please enter a number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print(
      "Number $num1 is an " + ((num1 % 2 == 0) ? "Even" : "Odd") + " number.");

  //Practice 2 - Write a dart program to check whether a character is a vowel or consonant.
  List<String> vowelList = ["a", "e", "i", "o", "u"];
  bool isVowel = false;
  print("\nPractice 2");
  print("Please enter a letter: ");
  String? getChar = stdin.readLineSync();
  for (String pChar in vowelList) {
    if (pChar == getChar) isVowel = true;
    break;
  }
  print("The letter is a " + ((isVowel) ? "Vowel" : "Consonant"));

  //Practice 3 - Write a dart program to check whether a number is positive, negative, or zero.
  print("\nPractice 3");
  print("Please enter a number: ");
  int num2 = int.parse(stdin.readLineSync()!);
  String num2Result = "Zero";
  if (num2 < 0)
    num2Result = "Negative";
  else if (num2 > 0) num2Result = "Positive";

  print("The number is $num2Result");

  //Practice 4 - Write a dart program to print your name 100 times.
  print("\nPractice 4");
  print("Please enter your full name: ");
  String? fullName = stdin.readLineSync();
  for (int x = 1; x <= 100; x++) {
    print("$x. $fullName");
  }

  //Practice 5 - Write a dart program to calculate the sum of natural numbers.
  print("\nPractice 5");

  bool isDone = false;
  int totalNaturalNum = 0;
  int iteration = 1;

  while (isDone = true) {
    final naturalValue = GetNaturalValue(iteration);
    if (!naturalValue.$1) {
      if (naturalValue.$2) //isValid = true
      {
        totalNaturalNum += naturalValue.$3;
        iteration++;
      }
    } else {
      isDone = true;
      break;
    }
  }
  print("The sume of the inputed numbers is: $totalNaturalNum ");
  isDone;

  //Practice 6 - Write a dart program to generate multiplication tables of 5.
  print("\nPractice 6");
  int multiplier = 5;
  print("Enter a number on how many multiplication table by 5: ");
  int count = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= count; i++) {
    int product = i * multiplier;
    print("5 x $i = $product");
  }

  //Practice 7 - Write a dart program to generate multiplication tables of 1-9.
  print("\nPractice 7");
  for (int x = 1; x <= 9; x++) {
    print("\nTable of $x");
    for (int i = 1; i <= 10; i++) {
      int totalProduct = x * i;
      print("$x x $i = $totalProduct");
    }
  }

  //Practice 8 - Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
  print("\nPractice 8");
  print("Enter a value: ");
  double calcVal1 = double.parse(stdin.readLineSync()!);
  print("Enter your action: (+,-,*,/)");
  String processor = stdin.readLineSync()!;
  print("Enter a value: ");
  double calcVal2 = double.parse(stdin.readLineSync()!);
  double total = calculate(calcVal1, calcVal2, processor);
  print("total: $total");

  //Practice 9 - Write a dart program to print 1 to 100 but not 41.
  print("\nPractice 9");
  for (int i = 1; i <= 100; i++) {
    (i == 41) ? "" : print(i);
  }
}
