import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 227, 227),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child:Column(children: [
          SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             children:[
              Icon(Icons.grid_view,size: 30,color:Color.fromARGB(255, 2, 80, 87)),

              Text("Profil",style:TextStyle(fontSize: 30,fontFamily: "Gravitas",
                  fontWeight: FontWeight.bold,color:Color.fromARGB(255, 2, 80, 87))),

               Icon(Icons.wrap_text,size: 30,color:Color.fromARGB(255, 2, 80, 87))
             ]),


          SizedBox(height: 20,),

          Center(
            child: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child:Image.asset("images/piccc.png",
            width: 200,
            height: 200,
            fit: BoxFit.cover,),),
          ),

           SizedBox(height: 10,),


          Text("Marwa AlAhmad",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25,fontFamily: "Gravitas",color: const Color.fromARGB(255, 2, 80, 87))
          ),


          // SizedBox(height: 10,),


          Text("marwa@gmail.com",
               textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: const Color.fromARGB(255, 19, 18, 18))
          ),

          SizedBox(height: 20,),


          
          Card(child:ListTile(
            leading:Icon(Icons.person_3_rounded),
            title:Text("Account Info"),
            trailing:Icon(Icons.arrow_back_ios_new_outlined)
            
          )),


          // SizedBox(height: 15,),


          Card(child:ListTile(
            leading:Icon(Icons.security),
            title:Text("Security Code"),
            trailing:Icon(Icons.arrow_back_ios_new_outlined)
            
          )),

          // SizedBox(height: 15,),


          Card(child:ListTile(
            leading:Icon(Icons.lock_clock_outlined),
            title:Text("Privacy Posicy"),
            trailing:Icon(Icons.arrow_back_ios_new_outlined)
            
          )),


          // SizedBox(height: 15,),


          Card(child:ListTile(
            leading:Icon(Icons.settings),
            title:Text("Setting"),
            trailing:Icon(Icons.arrow_back_ios_new_outlined)
            
           )),


          // SizedBox(height: 15,),


          Card(child:ListTile(
            leading:Icon(Icons.logout),
            title:Text("Log Out"),
            trailing:Icon(Icons.arrow_back_ios_new_outlined)
            
            )),













        ],))
    );
  }
}