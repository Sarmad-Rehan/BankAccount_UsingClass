import 'dart:io';
import 'bankAccount.dart';

void main(List<String> args) {
  menu();
}

void menu() {
  BankAccount bankAccount = BankAccount();
  int? choice;
  do {
    print("[1] Create Account");
    print("[2] Credit");
    print("[3] Debit");
    print("[4] Balance Check");
    print("[5] Account Details");
    print("[6] Exit");
    stdout.write("Enter Your Choice: ");
    choice = int.tryParse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write("Enter Account Title: ");
        bankAccount.name = stdin.readLineSync()!;
        stdout.write("Enter Account Type: ");
        bankAccount.accountType = stdin.readLineSync()!;
        stdout.write("Enter Account Number: ");
        bankAccount.accountNumber = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Balance: ");
        bankAccount.balance = double.parse(stdin.readLineSync()!);

        print("Account Created with Following Details");
        print("Account Title: ${bankAccount.name}");
        print("Account Number: ${bankAccount.accountNum}");
        print("Account Type: ${bankAccount.accountType}");
        print("Opening Balance: ${bankAccount.balance}");
        print("");
        break;

      case 2:
        stdout.write("Enter Amount: ");
        bankAccount.deposit(double.parse(stdin.readLineSync()!));
        print("Your Updated Balance: ${bankAccount.balance}");
        break;

      case 3:
        stdout.write("Enter Amount: ");
        bankAccount.withDraw(double.parse(stdin.readLineSync()!));
        print("Remaining Balance: ${bankAccount.balance}");
        break;

      case 4:
        print("Your Balance: ${bankAccount.balance}");
        break;

      case 5:
        bankAccount.displayDetails();
        break;

      case 6:
        print("Thank You for using Bank Management System");
        break;

      default:
        print("Invalid Choice");
        break;
    }
  } while (choice != 6);
}
