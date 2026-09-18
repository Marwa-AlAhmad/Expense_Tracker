import 'package:flutter/material.dart';

class Cardpage extends StatefulWidget {
  const Cardpage({super.key});

  @override
  State<Cardpage> createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 227, 227),
      body:Column(children: [
        SizedBox(height: 60,),


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
        
          Icon(Icons.grid_view,size: 30,color:Color.fromARGB(255, 2, 80, 87)),

          Text("My Card",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),

          Icon(Icons.add,size: 40,color:Color.fromARGB(255, 2, 80, 87))

      ]),


      SizedBox(height: 20,),


      Expanded(
        child: ListView(children: [
          Center(
            child: Container(
            height: 200,
            width: 340,
            // alignment: Alignment.topLeft,
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [         
                    Text("VISA",style:TextStyle(color:Colors.white,fontSize: 45)),
                    Column(children: [
                      Text("current Balance",style:TextStyle(color:Colors.white,fontSize:15)),
                      SizedBox(height: 6,),
                      Text("200,000",style:TextStyle(color:Colors.white,fontSize:15))
                    ],)
                  
              ]),

            SizedBox(height: 30,),

            Text("477 48 202 254 627 782 17",style:TextStyle(color:Colors.white,fontSize:15)),

            SizedBox(height: 10,),
            
            Text("Marwa AlAhmad",style:TextStyle(color:Colors.white,fontSize:15)),
                                                 
            ],)
                    ),
          ), 



          SizedBox(height: 20,),


           Center(
            child: Container(
            height: 200,
            width: 340,
            // alignment: Alignment.topLeft,
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [         
                    Text("VISA",style:TextStyle(color:Colors.white,fontSize: 45)),
                    Column(children: [
                      Text("current Balance",style:TextStyle(color:Colors.white,fontSize:15)),
                      SizedBox(height: 6,),
                      Text("40,000",style:TextStyle(color:Colors.white,fontSize:15))
                    ],)
                  
              ]),

            SizedBox(height: 30,),

            Text("477 48 666 627 782 17",style:TextStyle(color:Colors.white,fontSize:15)),

            SizedBox(height: 10,),
            
            Text("Marwa AlAhmad",style:TextStyle(color:Colors.white,fontSize:15)),
                                                 
            ],)
                    ),
          ), 


           SizedBox(height: 20,),


           Center(
            child: Container(
            height: 200,
            width: 340,
            // alignment: Alignment.topLeft,
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [         
                    Text("VISA",style:TextStyle(color:Colors.white,fontSize: 45)),
                    Column(children: [
                      Text("current Balance",style:TextStyle(color:Colors.white,fontSize:15)),
                      SizedBox(height: 6,),
                      Text("200,000",style:TextStyle(color:Colors.white,fontSize:15))
                    ],)
                  
              ]),

            SizedBox(height: 30,),

            Text("477 48 202 254 627 782 17",style:TextStyle(color:Colors.white,fontSize:15)),

            SizedBox(height: 10,),
            
            Text("Marwa AlAhmad",style:TextStyle(color:Colors.white,fontSize:15)),
                                                 
            ],)
                    ),
          ), 



 SizedBox(height: 20,),


           Center(
            child: Container(
            height: 200,
            width: 340,
            // alignment: Alignment.topLeft,
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [         
                    Text("VISA",style:TextStyle(color:Colors.white,fontSize: 45)),
                    Column(children: [
                      Text("current Balance",style:TextStyle(color:Colors.white,fontSize:15)),
                      SizedBox(height: 6,),
                      Text("200,000",style:TextStyle(color:Colors.white,fontSize:15))
                    ],)
                  
              ]),

            SizedBox(height: 30,),

            Text("477 48 202 254 627 782 17",style:TextStyle(color:Colors.white,fontSize:15)),

            SizedBox(height: 10,),
            
            Text("Marwa AlAhmad",style:TextStyle(color:Colors.white,fontSize:15)),
                                                 
            ],)
                    ),
          ), 





          


        ],),
      )



      ],)
    );
  }
}