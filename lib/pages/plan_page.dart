import 'package:flutter/material.dart';
class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff5C4DB1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25) )
      ),
       child: Column(
         children: [
           SizedBox(height: 80,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Your Plan', style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),),
           ),
           Expanded(
             child: Container(
               width: double.infinity,
               height: 60,
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(20) )
               ),
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Text('Selected Cleaning',style: TextStyle(fontWeight: FontWeight.bold), ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height:150,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Color(0xffDFDEFF),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Image.asset('assets/group4004.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Initial Cleaning'),
                              ),

                            ],
                          ),
                        ),
                       Container(
                         child: Column(
                           children: [
                             Container(
                               height:150,
                               width: 170,
                               decoration: BoxDecoration(
                                 color: Color(0xffDFDEFF),
                                 borderRadius: BorderRadius.circular(25),
                               ),
                               child: Image.asset('assets/group4040.png'),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text('Upkeep Cleaning'),
                             ),

                           ],
                         ),
                       ),
                     ],
                   ),
                   Padding(padding: EdgeInsets.all(12),
                   child: Text('Selected Frequency',style: TextStyle(fontWeight: FontWeight.bold),),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                             border: Border.all(color: Color(0xff9B9B9B),width: 2),
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           ),
                           child:TextButton(onPressed: (){}, child: Text('Weekly',style: TextStyle(color: Color(0xff9B9B9B)),),)
                       ),
                       Container(
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                             border: Border.all(color: Color(0xff9B9B9B),width: 2),
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           ),
                           child:TextButton(onPressed: (){}, child: Text('Bi-weekly',style: TextStyle(color: Color(0xff9B9B9B)),),)
                       ),
                       Container(
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                             border: Border.all(color: Color(0xff9B9B9B),width: 2),
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           ),
                           child:TextButton(onPressed: (){}, child: Text('Monthly',style: TextStyle(color: Color(0xff9B9B9B)),),)
                       ),
                     ],
                   ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Selected Extras',style: TextStyle(fontWeight: FontWeight.bold),),),
                   Row(
                     children: [
                       Container(
                         child: Column(
                           children: [

                             Text('Inside Fridge')
                           ],
                         ),
                       )
                     ],
                   ),
                   Row(children: [

                   ],)
                 
                 ],              
               ),
             ),
           )
         ],
       ),
      ),
    );
  }
}
