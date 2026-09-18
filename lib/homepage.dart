import 'package:flutter/material.dart';
import 'variable.dart';
import 'storage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
   super.initState();
   loadData();
  }

Future<void> loadData() async {
  await loadTransactions();
  calculateTotals();
  setState(() {});
}


  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 207, 227, 227),
      

    body:Column(children: [

      SizedBox(height: 60,),


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
        
          Icon(Icons.grid_view,size: 30,color:Color.fromARGB(255, 2, 80, 87)),

          Text("Home",style:TextStyle(fontSize: 30,fontFamily: "Gravitas",
          fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),

          Icon(Icons.notifications,size: 30,color:Color.fromARGB(255, 2, 80, 87))

      ]),


      SizedBox(height: 40,),


      Container(
        height: 200,
        width: 340,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                     Color.fromARGB(255, 7, 48, 48),
                     Color.fromARGB(255, 21, 86, 86),
                     Color.fromARGB(255, 28, 135, 141),
                     Color.fromARGB(255, 70, 214, 212),
                  ],
        ),),

        // color:Color.fromARGB(255, 144, 191, 195)),
        child:Column(children:[
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [         
                Text("Total Balance:",style:TextStyle(color:Colors.white,fontSize: 30)),
                Icon(Icons.more_horiz,color:Colors.white,size:30,)
          ]),

          Row(
            children: [
              SizedBox(width:60,),
              Text("$total",style:TextStyle(fontSize:30,color:Colors.white),),
            ],
          ),

        SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Column(children: [  
                Row(children: [
                   Icon(Icons.arrow_circle_down,color:Colors.white,size:25,),
                   SizedBox(width: 10,),
                   Text("Expense:\n $expense",style:TextStyle(color:Colors.white,fontSize: 18)),
              
                ]),
              ]),

               Column(children: [   
                Row(children:[
                  Icon(Icons.arrow_circle_down,color:Colors.white,size:25,),
                  SizedBox(width: 10,),
                  Text("InCome:\n $income",style:TextStyle(color:Colors.white,fontSize: 18)),
               
                ]),
              ]),

          ]),


           Row(
            children: [
              SizedBox(width:60,),
              // Text("$expense",style:TextStyle(fontSize:30,color:Colors.white),),
            ],
          ),
        ],)
      ),



      SizedBox(height:30,),


      Padding(
        padding: const EdgeInsets.only(left:30),
        child: Align(
          alignment: Alignment.centerLeft,
         child: Text("Transactions:",
         style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 2, 80, 87)))
        ),
      ),

    Expanded(
  child: ListView.builder(
    itemCount: Transactions.length,
    itemBuilder: (context, index) {
      final transaction = Transactions[index];
      final isIncome = transaction['type'] == 'income';

      return Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 6,
        ),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              // الأيقونة
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 185, 221, 221),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  isIncome
                      ? Icons.arrow_circle_down
                      : Icons.arrow_circle_up,
                  color: isIncome
                      ? Color.fromARGB(255, 2, 80, 87)
                      : Colors.red,
                ),
              ),

              const SizedBox(width: 15),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction['title'].toString(),
                      style:  TextStyle(
                       color:Color.fromARGB(255, 2, 80, 87),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      transaction['category'].toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              // المبلغ
              Text(
                '${transaction['amount']}',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: isIncome
                      ? Color.fromARGB(255, 2, 80, 87)
                      : Colors.red,
                ),
              ),
            ],
          ),
        ),
      );
    },
  ),
),




    ],));

    
  }
}