abstract class BankAccount {
  final int _accountNumber;
  String _accountHolderName;
  double _balance = 0;

  BankAccount(this._accountNumber, this._accountHolderName);

  // Abstract methods
  double withdraw(double amt);
  double deposit(double amt);

  void displayAccountInfo() {
    print(
      "Acc no. $_accountNumber \nAcc holder name: $_accountHolderName \nBalance: $_balance",
    );
  }

  int getAccountNumber() {
    return _accountNumber;
  }

  String getAccountHolderName() {
    return _accountHolderName;
  }

  String setAccountHolderName(String name) {
    _accountHolderName = name;
    return _accountHolderName;
  }

  double getBalance() {
    return _balance;
  }
  double setBalance(double amount) {
    _balance = amount;
    return _balance;
  }
}
