import 'package:flutter/material.dart';
import 'variable.dart';
import 'storage.dart';


class Addincomepage extends StatefulWidget {
  const Addincomepage({super.key});

  @override
  State<Addincomepage> createState() => _AddincomepageState();
}

class _AddincomepageState extends State<Addincomepage> {

    final TextEditingController textEditingController1 = TextEditingController();
    final TextEditingController textEditingController2 = TextEditingController();

  Set<String> _selectedOption = {'Salary'}; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 241, 241),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 50,),
          
            Row(children: [
              IconButton(onPressed: (){
              Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined),iconSize: 30,color:Color.fromARGB(255, 2, 80, 87)),
              SizedBox(width: 60,),
              Text("Add Income",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87)))
          ],),
          
          
          SizedBox(height:15),
          
          Container(
          height: 170,
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
          ),
          
          SizedBox(height:30),
          
          Align(alignment: Alignment.centerLeft,
          child:  Text("Income Title:",
                  style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),),
          
          SizedBox(height:5),
          
          
          TextField(
            controller: textEditingController1,
            // keyboardType: ,
            decoration:InputDecoration(
            hintText: "Enter the sourse of funds",
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
              ))
          ),
          
          
           SizedBox(height:20),
          
          Align(alignment: Alignment.centerLeft,
          child:  Text("Amount:",
                  style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),),
          
          SizedBox(height:5),
          
          
          TextField(
            controller: textEditingController2,
            keyboardType:TextInputType.number,
            decoration:InputDecoration(
            hintText: "Enter amount",
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            
              ))
          ),

          SizedBox(height:20),

          Align(alignment: Alignment.centerLeft,
          child:  Text("Category:",
                  style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),),

          SizedBox(height:5),


          SegmentedButton<String>(
           segments: const [
           ButtonSegment<String>(
           value: 'Salary',
           label: Text('Salary'),
           icon: Icon(Icons.arrow_downward, color: Colors.red), // أيقونة اختيارية
           ),
           ButtonSegment<String>(
           value: 'Freelance',
           label: Text('Freelance'),
           icon: Icon(Icons.arrow_upward, color: Colors.green),
           ),
         ],
  
           selected: _selectedOption,
           onSelectionChanged: (Set<String> newSelection) {
           setState(() {
          _selectedOption = newSelection;
         });
           },
         style: SegmentedButton.styleFrom(
         selectedBackgroundColor: Color.fromARGB(255, 28, 135, 141),
         selectedForegroundColor: Colors.white,
         backgroundColor: Colors.white,


         padding: EdgeInsets.symmetric(horizontal: 25,vertical:25)
         )     
       ),


       SizedBox(height:45),


      SizedBox(
      width: double.infinity,
      height: 70,
       child: MaterialButton(onPressed: () async { 
        total+=double.parse(textEditingController2.text);
        income+=double.parse(textEditingController2.text);

        Transactions.add({'title':textEditingController1.text,
        'amount':double.parse(textEditingController2.text),
        'category':_selectedOption.first,
        'type':"income",

        });
        await saveTransactions();
        setState(() {
          
        });
         },
       child:Text("Add Income",style:TextStyle(color:Colors.white,fontSize: 25)),
       color: Color.fromARGB(255, 21, 86, 86),
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), ),
       
       ),
     ),






          
          
          
          
            
          ],),
        ),
      )
    );
  }
}