import 'package:bank_system/src/bank_account.dart';
import 'package:bank_system/src/interest_bearing_interface.dart';

class SavingAccount extends BankAccount implements InterfaceInterestBearing{
  final String accountType = "Saving";
  final int interestRate = 2;
  final int minBalance = 500;
  final int withdrawalLimit = 3;
  int withdrawCount = 0;

  SavingAccount(super.accountNumber, super.accountHolderName);

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
    if (amt <= 0) {
      print("Withdrawal amount must be positive.");
      return getBalance();
    } else if (getBalance() - minBalance < amt) {
      print("Minimum balance of 500 must be maintained.");
      return getBalance();
    } else if (withdrawCount >= withdrawalLimit) {
      print("Maximum withdrawal limit reached.");
      return getBalance();
    }

    double newBalance = getBalance() - amt;
    setBalance(newBalance);
    return newBalance;
  }

  @override
  double calculateInterest(int time) {
    return (getBalance() * interestRate * time) / 100;
  }
}
