import 'package:bank_system/src/bank_account.dart';
import 'package:bank_system/src/interest_bearing_interface.dart';

class PremiumAccount extends BankAccount implements InterfaceInterestBearing {
  final String accountType = "Premium";
  final double minBalance = 1000;
  final int interestRate = 5;

  PremiumAccount(super.accountNumber, super.accountHolderName);

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
    if (amt > 0 && getBalance() - amt >= minBalance) {
      double newBalance = getBalance() - amt;
      setBalance(newBalance);
      return newBalance;
    } else {
      print(
        "Withdrawal amount must be positive and cannot drop below \$ $minBalance",
      );
      return getBalance();
    }
  }

  @override
  double calculateInterest(int time) {
    return (getBalance() * interestRate * time) / 100;
  }
}
