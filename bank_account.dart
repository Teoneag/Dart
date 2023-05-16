class BankAccout {
  double _balance;
  BankAccout({required double balance}) : _balance = balance;
  double get balance => _balance;
  set balance(double amount) => _balance = amount;

  void withDraw(double amount) {
    if (_balance > amount)
      _balance -= amount;
    else
      print(
          'Insufficient founds: u have $_balance and u wanna withDraw $amount!');
  }
}
