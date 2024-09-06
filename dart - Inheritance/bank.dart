class BankAccount{
  double? _balance;
  String? _name;

  BankAccount(this._balance, this._name);

  double get balance => _balance!;
  set balance(double balance) => _balance = balance;

  void deposite(double amount){
    this._balance = balance + amount;
  }

  void withdraw(double amount){
    this._balance = balance - amount;
  }
}

class SavingAccount extends BankAccount{
  double? _interest;

  SavingAccount(balance, interest);

  void addinterest()
}

void main(List<String> args) {
  
}