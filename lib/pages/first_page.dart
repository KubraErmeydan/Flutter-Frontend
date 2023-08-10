import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Positioned(
            top: 100,
            right: 0,
            child: Image.asset('assets/group4121.png'),height: 410,),
           Positioned(
             right: 0,
           left: 0,
           bottom: 0,
           child: Container(
              height: 295,
              decoration: BoxDecoration(
                  color: Color(0xff5C4DB1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(45), topLeft: Radius.circular(45) )
              ),
              child: Column(
                children: [
                  SizedBox(height: 35,),
                  Center(
                      child: Text('Cleaning On Demand',style: TextStyle(fontSize:21,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(child: Text('Book an appointment in less than 60 seconds and get on the schedule as early as tomorrow.' ,style: TextStyle(color: Colors.white,fontSize: 20,),)),
                  ),
                  Row(
                    children: [
                    TextButton(onPressed: (){}, child: Text('Skip',style: TextStyle(fontWeight:FontWeight.normal,color: Colors.white,fontSize: 20),)),
                    SizedBox(width: 240,),
                      Text('Next',style: TextStyle(fontWeight:FontWeight.normal,color: Colors.white,fontSize: 18), ),
                      IconButton(icon:Icon(Icons.arrow_circle_right,color:Colors.orange,size:30,),onPressed: (){Navigator.of(context).pushNamed('/account');},),
                    ],)
                ],
               ),
             ),
          ),

      ],),
    );
  }
}
