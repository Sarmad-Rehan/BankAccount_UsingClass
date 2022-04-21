import 'dart:io';

class BankAccount {
  String _name;
  int _accountNumber;
  String _accountType;
  double _balance;

  BankAccount(
      [this._name = "",
      this._accountNumber = 0,
      this._accountType = "",
      this._balance = 0.0]);

  void set name(String _name) {
    this._name = _name;
  }

  String get name {
    return this._name;
  }

  void set accountNumber(int _accountNumber) {
    this._accountNumber = _accountNumber;
  }

  int get accountNum {
    return this._accountNumber;
  }

  void set accountType(String _accountType) {
    this._accountType = _accountType;
  }

  String get accountType {
    return this._accountType;
  }

  void set balance(double _balance) {
    this._balance = _balance;
  }

  double get balance {
    return this._balance;
  }

  void deposit(double _balance) {
    this._balance = this._balance + _balance;
  }

  void withDraw(double _amount) {
    stdout.write("Enter Amount you want to debit: ");
    if (double.tryParse(stdin.readLineSync()!)! < _balance) {
      _balance = _balance - _amount;
      print(
          "Your Amount has been debited from your account \nYour Remaining Balance: $_balance");
    } else {
      print("Low Balance: $_balance");
    }
  }

  void displayDetails() {
    print("Account Name: $_name");
    print("Balance: $_balance");
  }
}
