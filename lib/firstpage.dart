import 'package:expenxe_trakcer/secondpage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Column(children:[

     SizedBox(height: 100,),

     Center(
       child: ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child:Image.asset("images/picc.jpg",
        width: 360,
        height: 360,
        fit: BoxFit.cover,),),
     ),

     SizedBox(height: 40,),


     Text("Save your money with Expense Tracker",
     textAlign: TextAlign.center,
     style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 2, 80, 87))
      ),



     Container(
      padding: EdgeInsets.fromLTRB(25, 10, 25, 25),
       child: Text("save money! The more your money works for you, the less you have to work for money. ",
       textAlign: TextAlign.center,
       style:TextStyle(color:Color.fromARGB(255, 58, 92, 89)),),
     ),


     SizedBox(height: 20,),


     SizedBox(
      width: 170,
      height: 65,
       child: MaterialButton(onPressed: () { 
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Secondpage()));
         },
       child:Text("Let's Start",style:TextStyle(color:Colors.white,fontSize: 20)),
       color:Color.fromARGB(255, 2, 80, 87),
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), ),
       
       ),
     ),
      
    ]));
  }
}