import 'dart:io';

class BankAccount {
  String _name;
  int _accountNumber;
  String _accountType;
  double _balance;

  BankAccount(
      this._name, this._accountNumber, this._accountType, this._balance);

  void depositor(double _balance) {
    this._balance = this._balance + _balance;
  }

  void withDraw() {
    stdout.write("Enter Amount you want to debit: ");

    if (double.tryParse(stdin.readLineSync()!)! > _balance) {
      print("Low Balance: $_balance");
    } else {
      _balance = _balance - double.tryParse(amount)!;
      print(
          "Your Amount has been debited from your account \nYour Remaining Balance: $_balance");
    }
  }

  void displayDetails() {
    print("Account Name: $_name");
    print("Balance: $_balance");
  }
}
