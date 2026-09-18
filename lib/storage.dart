import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'variable.dart';

Future <void> saveTransactions() async {
  final prefs = await SharedPreferences.getInstance();
  final data = jsonEncode(Transactions);
  await prefs.setString('transactions', data);
}


Future <void> loadTransactions() async{
  final prefs = await SharedPreferences.getInstance();
  final data = prefs.getString('transactions');
  if(data!=null) {
    Transactions = List<Map<String,dynamic>>.from (jsonDecode(data),);
  } 
}


void calculateTotals(){
    income=0;
    expense=0;
    total=0;

    for(var transaction in Transactions){
      
      double amount = transaction['amount'];

      if(transaction['type']=='income'){
        income+=amount; 
        total+=amount;
      }

      else{
        expense+=amount;
        total-=amount;

      }    
     }
  }