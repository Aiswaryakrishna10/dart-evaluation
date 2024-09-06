import 'dart:io';

class BankAccount{
  int accountnumber;
  String accountholder;
  double balance;
  BankAccount(this.accountnumber,this.accountholder,this.balance);


  void deposit(){
    print("enter the amount to deposit :");
    double? amount = double.parse(stdin.readLineSync()!);
    balance += amount;
    print("Rs. $amount deposited sussessfully");
    }


    void withdraw() {
      print("enter the amount to withdraw :");
      double? amount = double.parse(stdin.readLineSync()!);
      if(amount<= balance) {
        balance -= amount;
      }
      else{
        print("insufficiant balance");
      }
    }

    void getinfo(){
      print(" AccountNumber:$accountnumber");
    print(" AccountHolder:$accountholder");

    print("current balance:$balance");
    }
  }
  void main(){
  print("enter the name :");
  String accountholder = (stdin.readLineSync()!);
  print("enter the acc number");
  int accountnumber = int.parse(stdin.readLineSync()!);
  print("enter acc balance");
  double balance = double.parse(stdin.readLineSync()!);

  BankAccount account = BankAccount(accountnumber, accountholder, balance);

  account.getinfo();
  account.deposit();
  account.withdraw();
  account.getinfo();

}

