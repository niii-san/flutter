import 'package:bank_system/src/bank_account.dart';
import 'package:bank_system/src/interest_bearing_interface.dart';

class StudentAccount extends BankAccount implements InterfaceInterestBearing {
  final String accountType = "Student";
  final int interestRate = 5;
  final double maxBalance = 5000;

  StudentAccount(super.accountNumber, super.accountHolderName);

  @override
  double deposit(double amt) {
    if (amt > 0 && getBalance() + amt <= maxBalance) {
      double newBalance = getBalance() + amt;
      setBalance(newBalance);
      return newBalance;
    } else if (amt <= 0) {
      print("Deposit amount must be positive.");
      return getBalance();
    } else {
      print("Cannot exceed maximum balance of \$ $maxBalance");
      return getBalance();
    }
  }

  @override
  double withdraw(double amt) {
    if (amt <= 0) {
      print("Withdrawal amount must be positive.");
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
