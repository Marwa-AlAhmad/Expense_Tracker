import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   double total=0;
  double expense=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

    body:Column(children: [

      SizedBox(height: 60,),


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
        
          Icon(Icons.grid_view,size: 30,color:Color.fromARGB(255, 2, 80, 87)),

          Text("Home",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),

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
                Text("Total Balance:",style:TextStyle(color:Colors.white,fontSize: 20)),
                Icon(Icons.more_horiz,color:Colors.white,size:30,)
          ]),

          Row(
            children: [
              SizedBox(width:60,),
              Text("$total",style:TextStyle(fontSize:45,color:Colors.white),),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,children:[
            Text("Expense: $expense",style:TextStyle(color:Colors.white,fontSize: 17)),
            Icon(Icons.arrow_circle_down,color:Colors.white,size:25,)

          ]),


           Row(
            children: [
              SizedBox(width:60,),
              Text("$expense",style:TextStyle(fontSize:30,color:Colors.white),),
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





    ],));

    
  }
}