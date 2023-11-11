import 'bank_account.dart';

class SavingsAccount extends BankAccout {
  double _rate;
  SavingsAccount({required double balance, required double rate})
      : _rate = rate,
        super(balance: balance);
  double get rate => _rate;
  set rate(double percentage) => _rate = percentage;

  void addInterest() => balance *= (1 + _rate / 100);
}
