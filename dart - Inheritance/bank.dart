// Pawat Wantrong 1130

class BankAccount {
  String? _name;
  double? _balance;
  
  BankAccount(this._name,this._balance);

  double get balance => this._balance!;
  set balance(double balance) => _balance = balance;

  void deposit(double amount){
    this._balance = balance + amount; 
    print('ชื่อบัญชี : $_name');
    print('ฝาก $amount');
    print('จำนวนเงินคงเหลือ $_balance');
  }
  void withdraw(double amount){
    this._balance = balance - amount;
    print('ชื่อบัญชี : $_name');
    print('ถอน $amount');
    print('จำนวนเงินคงเหลือ $_balance');
  }
  void showBalance(){
    print('ชื่อบัญชี $_name');
    print('จำนวนเงินคงเหลือ $_balance');
  }
}

class SavingAccount extends BankAccount {
  double _interestRate;
  SavingAccount(_name,_balance,this._interestRate):super(_name,_balance);
  void addlnterest([double? newinterestRate]){
    double x = balance * this._interestRate /100;
    balance += x;
    print('ชื่อบัญชี : $_name');
    print('ดอกเบี้ย : $_interestRate เปอร์เซนต์');
    print('ได้รับดอกเบี้ย : $x บาท');
    print('จำนวนเงินคงเหลือ $_balance');
  }

 
}
void main(List<String> args) {
  var s = SavingAccount('Pawat Wantrong', 2000.00, 100);
  s.showBalance();
  s.deposit(400);
  s.withdraw(100);
  s.addlnterest(100);
  s.showBalance();
}
