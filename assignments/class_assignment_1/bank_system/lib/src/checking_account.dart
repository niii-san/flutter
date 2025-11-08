import 'package:bank_system/src/bank_account.dart';

class CheckingAccount extends BankAccount {
  final String accountType = "Checking";
  final int overdraftFee = 35;

  CheckingAccount(super.accountNumber, super.accountHolderName);

  @override
  double deposit(double amt) {
    if (amt > 0) {
      double newBalance = getBalance() + amt;
      setBalance(newBalance);
      return newBalance;
    } else {
      print("Deposit amount must be positive.");
      return getBalance();
    }
  }

  @override
  double withdraw(double amt) {
    if (getBalance() - amt < 0) {
      double newBalance = getBalance() - amt - overdraftFee;
      setBalance(newBalance);
      return newBalance;
    } else if (amt <= 0) {
      print("Withdrawal amount must be positive.");
      return getBalance();
    }

    double newBalance = getBalance() - amt;
    setBalance(newBalance);
    return newBalance;
  }
}
