import 'package:expenxe_trakcer/addexpensepage.dart';
import 'package:expenxe_trakcer/addincomepage.dart';
import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(height: 50,),
      
        Row(children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),iconSize: 30,color:Color.fromARGB(255, 2, 80, 87)),
          SizedBox(width: 100,),
          Text("Add",style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87)))
        ],),


        SizedBox(height: 50,),

        Row(children: [
          Container(
            height: 100,width: 165,
            padding: EdgeInsets.all(7),
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            color:Color.fromARGB(255, 109, 155, 150)),
            child: MaterialButton(onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>Addincomepage()));
                    },
                    child:Column(children: [
                    Icon(Icons.card_giftcard,color:Colors.white,size: 30,),
                    SizedBox(height: 10,),
                    Text("Add Income",style:TextStyle(fontSize:20,color:Colors.white,fontWeight: FontWeight.bold))
          ],))), 

          SizedBox(width:19),

           Container(
            height: 100,width: 165,
            padding: EdgeInsets.all(7),
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            color:Color.fromARGB(255, 109, 155, 150)),
            child: MaterialButton(onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>Addexpensepage()));
            },
               child:Column(children: [
                    Icon(Icons.card_giftcard,color:Colors.white,size: 30,),
                    SizedBox(height: 10,),
                    Text("Add Expense",style:TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold))
          ],))), 
        ],),


        SizedBox(height: 40),

        Container(
          alignment: Alignment.centerLeft,
          child: Text("Last Added",
                      style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),
        )



        
      ],),
    ));
  }
}