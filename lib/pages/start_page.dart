import 'package:flutter/material.dart';
class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5C4DB1),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  Image.asset(
                    'assets/nimbl.png',
                    width: 20,
                    height: 27,
                  ),
                  SizedBox(width: 5,),
                  Text('Nimbl.', style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
              Text('Clean Home \n  Clean Life.',style: TextStyle(fontSize: 36,color: Colors.white,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Text('Book Cleaners at the Comfort\n            of you home.',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              ],
          ),
          Positioned(
            left: 0,
            bottom: 10,
            child: Container(
              width: MediaQuery.of(context).size.width+30,
              child: Image.asset('assets/maskgroup.png',
                  fit: BoxFit.cover),
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(5)),
                ),
                child:TextButton(onPressed: (){Navigator.of(context).pushNamed('/first');}, child: Text('Get Started'),)
            ),
          )
        ],
      ),
    );
  }
}
