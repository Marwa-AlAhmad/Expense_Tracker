import 'package:expenxe_trakcer/addpage.dart';
import 'package:expenxe_trakcer/cardpage.dart';
import 'package:expenxe_trakcer/homepage.dart';
import 'package:expenxe_trakcer/overviewpage.dart';
import 'package:expenxe_trakcer/profilepage.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  int currentIndex=0;
  final List<Widget> pages =[ Homepage(),
                             Overviewpage(),
                             Cardpage(),
                             Profilepage() ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Addpage()));
         },
        backgroundColor: Color.fromARGB(255, 68, 149, 148), 
        shape: const CircleBorder(), 
        child: const Icon(Icons.add, color: Colors.white, size: 30),
     ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
                     Color.fromARGB(255, 7, 48, 48),
                     Color.fromARGB(255, 21, 86, 86),
                     Color.fromARGB(255, 28, 135, 141),
                    //  Color.fromARGB(255, 70, 214, 212),
        ])
      ),
      
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed, 
        selectedItemColor:Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size:30),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.poll,size:30),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.wallet,size:30),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.person,size:30),label:"")]),
    ),


      body:pages[currentIndex],

      );
  }
}