import 'dart:io';

void main() {
//Declarations
  String fullName = "Mark Campos";
  const int value = 7;
  value;
  double principal = 100;
  double rate = 10;
  int time = 6;
  double interest;

  //Practice 1
  print(fullName);

  //Practice 2
  print("Hello I am \"$fullName\"");

  //Pracitce 3
  print("Hello I\'m \"$fullName\"");

  //Practice 4
  interest = (principal * rate * time) / 100;
  print("The percentage interest of the principal = $interest");

  //Practice 5
  print("Input a number: ");
  int? number = int.parse(stdin.readLineSync()!);
  int squareNum = number * number;
  print("The square of $number is $squareNum");

  //Practice 6
  print("Enter your First Name: ");
  String? fname = stdin.readLineSync();
  print("Enter your Last Name: ");
  String? lname = stdin.readLineSync();
  print("Your full name is: $lname, $fname");

  //Practice 7
  print("Get the quotient and remainder. Enter the divisor: ");
  int? divisor = int.parse(stdin.readLineSync()!);
  print("Enter the dividend");
  int? dividend = int.parse(stdin.readLineSync()!);
  double quotient = dividend / divisor;
  int remainder = dividend % divisor;
  int quotientFinal = quotient.toInt();
  print("The quotient is $quotientFinal and the remainder is $remainder");

  //Practice 8
  print("""Swap the Value of A and B. 
Enter the Value A: """);
  int? swap_A = int.parse(stdin.readLineSync()!);
  print("Enter the Value B");
  int? swap_B = int.parse(stdin.readLineSync()!);
  //new way for swaping a value
  (swap_A, swap_B) = (swap_B, swap_A); // (5, 4) = (4,5)
  print("Value A = $swap_A and Value B = $swap_B");
  //old way to swap a value. Value A = 5, Value B = 4
  swap_A = swap_A + swap_B; // 5 + 4 = 9
  swap_B = swap_A - swap_B; // 9 - 4 = 5
  swap_A = swap_A - swap_B; // 9 - 5 = 4
  print("Value A = $swap_A and Value B = $swap_B");

  //Practice 9
  print("Remove white spaces: ");
  String? whiteSpaces = stdin.readLineSync()!;
  String finalWhiteSpaces = whiteSpaces.replaceAll(" ", "");
  print(finalWhiteSpaces);

  //Practice 10
  print("Enter a number(this is set as a string): ");
  String stringToIntValue = stdin.readLineSync()!;
  print("Type before parsing: ${stringToIntValue.runtimeType}");
  print("Value before parsing: \"$stringToIntValue\"");
  //Parsing from String to Int and assigning to variable named numericValue
  int numericValue = int.parse(stringToIntValue);
  print("Type after parsing: ${numericValue.runtimeType}");
  print("Value after parsing: $numericValue");

  //Practice 11
  print("This is a Split Bill calculator.");
  print("Enter your Total bill: ");
  double totalBill = double.parse(stdin.readLineSync()!);
  print("Enter the number of people");
  int peopleCount = int.parse(stdin.readLineSync()!);
  double billPerPerson = totalBill / peopleCount;
  print("Bill per person: \$$billPerPerson");

  //Practice 12
  print("Calculcate travel duration.");
  print("Enter the distance(KM): ");
  double distanceKM = double.parse(stdin.readLineSync()!);
  print("Enter the average speed(KPH): ");
  double speedKPH = double.parse(stdin.readLineSync()!);
  double travelDuration = distanceKM / speedKPH;
  print("Your travel time is ${travelDuration.toStringAsFixed(2)} hours");
  //Test
  //testCommit
}
