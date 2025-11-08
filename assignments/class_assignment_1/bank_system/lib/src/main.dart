import 'package:bank_system/src/checking_account.dart';
import 'package:bank_system/src/premium_account.dart';
import 'package:bank_system/src/saving_account.dart';
import 'package:bank_system/src/student_account.dart';

void main() {
  // Saving account demo
  SavingAccount sa = SavingAccount(1000, "Alice");
  sa.deposit(2000);
  print("Balance after deposit: \$${sa.getBalance()}");
  sa.withdraw(1000);
  print("Balance after withdrawal: \$${sa.getBalance()}");
  sa.withdraw(600);
  sa.withdraw(200);
  sa.withdraw(100);
  print("Balance after multiple withdrawals: \$${sa.getBalance()}");

  // Checking account demo
  CheckingAccount ca = CheckingAccount(2000, "Bob");
  ca.deposit(1500);
  print("Balance after deposit: \$${ca.getBalance()}");
  ca.withdraw(2000);
  print("Balance after withdrawal: \$${ca.getBalance()}");
  // Attempt overdraft
  ca.withdraw(1000);
  print("Balance after overdraft withdrawal: \$${ca.getBalance()}");

  // Premium account demo
  PremiumAccount pa = PremiumAccount(3000, "Charlie");
  pa.deposit(5000);
  print("Balance after deposit: \$${pa.getBalance()}");
  pa.withdraw(4500);
  print("Balance after withdrawal: \$${pa.getBalance()}");

  // Student account demo
  StudentAccount sta = StudentAccount(4000, "Diana");
  sta.deposit(3000);
  print("Balance after deposit: \$${sta.getBalance()}");
  sta.withdraw(1000);
  print("Balance after withdrawal: \$${sta.getBalance()}"); 

}

