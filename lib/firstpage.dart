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
      // backgroundColor: Color.fromARGB(255, 207, 227, 227),
    body:Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
      Color.fromARGB(255, 132, 178, 178),
      Color.fromARGB(255, 255, 255, 255), 
      Color.fromARGB(255, 255, 255, 255), 
      Color.fromARGB(255, 255, 255, 255), 
      Color.fromARGB(255, 132, 178, 178),

      // Color.fromARGB(255, 159, 244, 244),
      // Color.fromARGB(255, 197, 255, 255),
      // Color.fromARGB(255, 210, 245, 245),
      //  Color.fromARGB(255, 1, 2, 2),
      // Color.fromARGB(255, 210, 245, 245),
      // Color.fromARGB(255, 197, 255, 255),
      // Color.fromARGB(255, 159, 244, 244),
      // Color.fromARGB(255, 0, 61, 61),
      ],
      ),
      ),

    child:Column(children:[

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
      child: ElevatedButton(
       onPressed: () {
        Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => Secondpage()),
        );
      },
      style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      elevation: 2, 
      shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(20.0),
       ),
     ),
    child: Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 7, 48, 48),
            Color.fromARGB(255, 28, 113, 113),
            Color.fromARGB(255, 40, 170, 176),
            Color.fromARGB(255, 70, 214, 212),
          ],
        ),
        borderRadius: BorderRadius.circular(20.0), 
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "Let's Start",
          style: TextStyle(
            color: Colors.white, 
            fontSize: 20,
            fontWeight: FontWeight.bold, // اختياري: لجعل الخط أوضح
          ),
        ),
      ),
    ),
  ),
),

      
    ])));
  }
}